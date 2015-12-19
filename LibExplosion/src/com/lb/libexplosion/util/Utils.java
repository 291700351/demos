package com.lb.libexplosion.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

public class Utils {

	private Utils() {
	}

	private static final float DENSITY = Resources.getSystem()
			.getDisplayMetrics().density;
	private static final Canvas sCanvas = new Canvas();

	public static int dp2Px(int dp) {
		return Math.round(dp * DENSITY);
	}

	/**
	 * 把View画到Bitmap上返回
	 * 
	 * @param view
	 * @return
	 */
	public static Bitmap createBitmapFromView(View view) {

		if (view instanceof ImageView) {
			/**
			 * Drawable是一个描述图片样子的类，只是描述，所以颜色等也可以是一个Drawable，
			 * 若是ColorDrawable则需要创建bitmap，并把颜色绘制到bitmap上，
			 * 下面只是简单处理了一下当时BitmapDrawable
			 * ，并没有处理是ColorDrawable时。其实获取view的镜像也可以采用这种方法：
			 * view.setDrawingCacheEnabled(true);
			 * 
			 * Bitmap bitmap=Bitmap.createBitmap(view.getDrawingCache());
			 * view.setDrawingCacheEnabled(false);
			 * 
			 * return bitmap;
			 * 
			 */
			Drawable drawable = ((ImageView) view).getDrawable();
			if (drawable != null && drawable instanceof BitmapDrawable) {
				return ((BitmapDrawable) drawable).getBitmap();
			}
		}
		view.clearFocus();
		Bitmap bitmap = createBitmapSafely(view.getWidth(), view.getHeight(),
				Bitmap.Config.ARGB_8888, 1);
		if (bitmap != null) {
			synchronized (sCanvas) {
				Canvas canvas = sCanvas;
				canvas.setBitmap(bitmap);
				view.draw(canvas);// 手动调用view的draw将导致view被绘制到了空白的bitmap上
				canvas.setBitmap(null);
			}
		}
		return bitmap;
	}

	/**
	 * 当创建图片导致内存溢出时，并且尝试次数没达到retryCount时，回收内存，再次执行创建，
	 * 
	 * @param width
	 * @param height
	 * @param config
	 * @param retryCount
	 * @return
	 */
	public static Bitmap createBitmapSafely(int width, int height,
			Bitmap.Config config, int retryCount) {
		try {
			// 创建指定width*height大小，并且颜色是config的空白图片
			return Bitmap.createBitmap(width, height, config);
		} catch (OutOfMemoryError e) {
			e.printStackTrace();
			if (retryCount > 0) {
				System.gc();// 建议虚拟机回收内存
				return createBitmapSafely(width, height, config, retryCount - 1);
			}
			return null;
		}
	}
}