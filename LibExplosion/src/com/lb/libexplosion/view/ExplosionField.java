package com.lb.libexplosion.view;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

import com.lb.libexplosion.util.ExplosionAnimator;
import com.lb.libexplosion.util.Utils;

/**
 * 原理： 在activity上覆盖一个ExplosionField控件，在该控件上绘制爆照粒子
 * 
 * @author young
 * 
 */
public class ExplosionField extends View {

	// 一个activity中只有一个ExplosionField，但可以同时在ExplosionField上绘制多个爆炸效果
	private List<ExplosionAnimator> mExplosions = new ArrayList<ExplosionAnimator>();
	private int[] mExpandInset = new int[2];

	public ExplosionField(Context context) {
		super(context);
		init();
	}

	public ExplosionField(Context context, AttributeSet attrs) {
		super(context, attrs);
		init();
	}

	public ExplosionField(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
		init();
	}

	private void init() {
		Arrays.fill(mExpandInset, Utils.dp2Px(32));
	}

	@Override
	protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);
		for (ExplosionAnimator explosion : mExplosions) {
			explosion.draw(canvas);
		}
	}

	public void expandExplosionBound(int dx, int dy) {
		mExpandInset[0] = dx;
		mExpandInset[1] = dy;
	}

	public void explode(Bitmap bitmap, Rect bound, long startDelay,
			long duration) {
		final ExplosionAnimator explosion = new ExplosionAnimator(this, bitmap,
				bound);

		// explosion.addListener(new AnimatorListenerAdapter() {
		// @Override
		// public void onAnimationEnd(Animator animation) {
		// mExplosions.remove(animation);
		// }
		// });
		explosion.setStartDelay(startDelay);
		explosion.setDuration(duration);
		mExplosions.add(explosion);
		if (listener != null) {
			explosion.addListener(new AnimatorListener() {

				@Override
				public void onAnimationStart(Animator animation) {
					listener.onAnimationStart(animation);
				}

				@Override
				public void onAnimationRepeat(Animator animation) {
					listener.onAnimationRepeat(animation);
				}

				@Override
				public void onAnimationEnd(Animator animation) {
					listener.onAnimationEnd(animation);
				}

				@Override
				public void onAnimationCancel(Animator animation) {
					listener.onAnimationCancel(animation);
				}
			});
		}
		
		explosion.start();
	}

	/**
	 * 执行爆炸
	 * 
	 * @param view
	 */
	public void explode(final View view) {
		Rect r = new Rect();
		view.getGlobalVisibleRect(r);
		int[] location = new int[2];
		getLocationOnScreen(location);
		r.offset(-location[0], -location[1]);
		r.inset(-mExpandInset[0], -mExpandInset[1]);
		int startDelay = 100;
		// 爆炸前的抖动效果
		ValueAnimator animator = ValueAnimator.ofFloat(0f, 1f).setDuration(150);
		animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

			Random random = new Random();

			@Override
			public void onAnimationUpdate(ValueAnimator animation) {
				view.setTranslationX((random.nextFloat() - 0.5f)
						* view.getWidth() * 0.05f);
				view.setTranslationY((random.nextFloat() - 0.5f)
						* view.getHeight() * 0.05f);

			}
		});

		animator.start();
		// 抖动结束后用150毫秒把view缩小到看不到
		view.animate().setDuration(150).setStartDelay(startDelay).scaleX(0f)
				.scaleY(0f).alpha(0f).start();
		explode(Utils.createBitmapFromView(view), r, startDelay,
				ExplosionAnimator.DEFAULT_DURATION);
	}

	public void clear() {
		mExplosions.clear();
		invalidate();
	}

	/**
	 * 把该View添加到Activity中
	 * 
	 * @param activity
	 * @return
	 */
	public static ExplosionField attach2Window(Activity activity) {
		// rootView是一个FrameLayout，也可以使用activityactivity.getWindow().getDecorView()来获取，获取到的是用户通过setContentView设置的
		// 布局 的 父布局
		ViewGroup rootView = (ViewGroup) activity
				.findViewById(Window.ID_ANDROID_CONTENT);
		System.out.println("rootview = " + rootView);
		ExplosionField explosionField = new ExplosionField(activity);
		// 添加进去
		rootView.addView(explosionField, new ViewGroup.LayoutParams(
				ViewGroup.LayoutParams.MATCH_PARENT,
				ViewGroup.LayoutParams.MATCH_PARENT));
		return explosionField;
	}

	private ExplosionAnimatorListener listener;

	public void setExplosionAnimatorListener(ExplosionAnimatorListener listener) {
		this.listener = listener;
	}

	/**
	 * 执行爆炸动画的监听<br/>
	 * com.lb.libexplosion.view.ExplosionAnimatorListener
	 * 
	 * @author IceLee <br/>
	 *         create at 2015-12-18 下午12:08:46
	 */
	public interface ExplosionAnimatorListener {

		/**
		 * 爆炸开始之前
		 * 
		 * @param animation
		 */
		public void onAnimationStart(Animator animation);

		/**
		 * 爆炸重新开始
		 * 
		 * @param animation
		 */
		public void onAnimationRepeat(Animator animation);

		/**
		 * 爆炸结束
		 * 
		 * @param animation
		 */
		public void onAnimationEnd(Animator animation);

		/**
		 * 爆炸动画取消
		 * 
		 * @param animation
		 */
		public void onAnimationCancel(Animator animation);
	}

}