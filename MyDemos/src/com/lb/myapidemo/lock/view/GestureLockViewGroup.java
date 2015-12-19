package com.lb.myapidemo.lock.view;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

import com.lb.myapidemo.lock.view.GestureLockView.State;

/**
 * 手势解锁的控件，里面包含多个手势解锁圆心 <br/>
 * com.lb.myapidemo.lock.view.GestureLockViewGroup
 * 
 * @author IceLee <br/>
 *         create at 2015-12-14 下午5:42:33
 */
public class GestureLockViewGroup extends RelativeLayout {

	private int count = 3;// 定义是几行几列的原点

	private int width;// 控件的宽高
	private int height;

	private GestureLockView[] views;// 存放所有的原点
	private ArrayList<GestureLockView> selecteds;// 存放所有选中的小圆点

	private int mGestureLockViewWidth;

	private int mMarginBetweenLockView;

	public GestureLockViewGroup(Context context, AttributeSet attrs) {
		super(context, attrs);
		init();
	}

	public GestureLockViewGroup(Context context) {
		super(context);
		init();
	}

	private void init() {

		// 初始化布局 居中
		setGravity(Gravity.CENTER);
		selecteds = new ArrayList<GestureLockView>();

		paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
		paint.setStyle(Paint.Style.STROKE);
		paint.setAntiAlias(true);

		path = new Path();
	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
		width = MeasureSpec.getSize(widthMeasureSpec);
		height = MeasureSpec.getSize(heightMeasureSpec);

		height = width = width < height ? width : height;

		// 初始化mGestureLockViews
		if (views == null) {
			views = new GestureLockView[count * count];
			// 计算每个GestureLockView的宽度
			mGestureLockViewWidth = (int) (4 * width * 1.0f / (5 * count + 1));
			// 计算每个GestureLockView的间距
			mMarginBetweenLockView = (int) (mGestureLockViewWidth * 0.25);

			paint.setStrokeWidth(mGestureLockViewWidth * 0.29f);// 设置线的宽度

			for (int i = 0; i < views.length; i++) {
				// 初始化每个GestureLockView
				GestureLockView view = new GestureLockView(getContext());
				// 设置参数，主要是定位GestureLockView间的位置
				RelativeLayout.LayoutParams lockerParams = new RelativeLayout.LayoutParams(
						mGestureLockViewWidth, mGestureLockViewWidth);

				// 不是每行的第一个，则设置位置为前一个的右边
				if (i % count != 0) {
					lockerParams.addRule(RelativeLayout.RIGHT_OF,
							views[i - 1].getId());
				}
				// 从第二行开始，设置为上一行同一位置View的下面
				if (i > count - 1) {
					lockerParams.addRule(RelativeLayout.BELOW,
							views[i - count].getId());
				}
				// 设置右下左上的边距
				int rightMargin = mMarginBetweenLockView;
				int bottomMargin = mMarginBetweenLockView;
				int leftMagin = 0;
				int topMargin = 0;
				/**
				 * 每个View都有右外边距和底外边距 第一行的有上外边距 第一列的有左外边距
				 */
				if (i >= 0 && i < count) {// 第一行
					topMargin = mMarginBetweenLockView;
				}
				if (i % count == 0) {// 第一列
					leftMagin = mMarginBetweenLockView;
				}

				lockerParams.setMargins(leftMagin, topMargin, rightMargin,
						bottomMargin);
				views[i] = view;
				views[i].setId(i + 1);
				views[i].setState(State.NO);
				addView(view, lockerParams);
			}

		}

	}

	// private int drawX;
	// private int drawY;
	// private int moveX;
	// private int moveY;

	Path path;

	@Override
	public boolean onTouchEvent(MotionEvent event) {

		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:
			reset();
			int downX = (int) event.getX();
			int downY = (int) event.getY();
			for (int i = 0; i < views.length; i++) {
				GestureLockView view = views[i];

				Rect rect = view.getRect();
				if (rect.contains(downX, downY)) {
					view.setState(State.DOWN);
					selecteds.add(view);

					Point point = view.getCenterPoint();

					path.moveTo(point.x, point.y);

					// 设置画笔颜色
					int color = view.getColor();
					int c = colorUtil(color, 255 / 2);
					paint.setColor(c);

				}
			}

			break;

		case MotionEvent.ACTION_MOVE:
			// 获取当前的手指位置 判断原点是否包含当前位置 包含就设置状态为
			int x = (int) event.getX();
			int y = (int) event.getY();
			for (int i = 0; i < views.length; i++) {
				GestureLockView view = views[i];

				Rect rect = view.getRect();
				if (rect.contains(x, y)) {
					view.setState(State.DOWN);
					selecteds.add(view);

					Point point = view.getCenterPoint();

					path.lineTo(point.x, point.y);

					// 设置画笔颜色
					int color = view.getColor();
					int c = colorUtil(color, 255 / 2);
					paint.setColor(c);

				}
			}
			// 手指移动时绘制线条

			break;

		case MotionEvent.ACTION_UP:
			// 手指抬起时 将所有的状态设置为up，并清空所有选中的
			for (int i = 0; i < selecteds.size(); i++) {
				GestureLockView view = selecteds.get(i);
				// if(i==0){
				// Point point = view.getCenterPoint();
				//
				// path.moveTo(point.x, point.y);
				// }else if(i!=selecteds.size()-1){
				// Point point = view.getCenterPoint();
				//
				// path.lineTo(point.x, point.y);
				// }else
				if (i == selecteds.size() - 1) {
					Point point = view.getCenterPoint();

					path.lineTo(point.x, point.y);
					// path.close();

				}
				view.setState(State.UP);
				// 设置画笔颜色
				int color = view.getColor();
				int c = colorUtil(color, 255 / 2);
				paint.setColor(c);

			}

			break;

		}
		invalidate();
		return true;
	}

	private Paint paint;

	@Override
	protected void dispatchDraw(Canvas canvas) {
		super.dispatchDraw(canvas);
		canvas.drawPath(path, paint);

	}

	/**
	 * 重置所有的状态
	 */
	private void reset() {
		for (GestureLockView view : views)
			view.setState(State.NO);
		selecteds.clear();
		path.reset();
	}

	/**
	 * 给一个颜色值设置透明度
	 * 
	 * @param color
	 * @param alpha
	 * @return
	 */
	private int colorUtil(int color, int alpha) {
		int red = Color.red(color);
		int green = Color.green(color);
		int blue = Color.blue(color);
		return Color.argb(alpha, red, green, blue);
	}

}
