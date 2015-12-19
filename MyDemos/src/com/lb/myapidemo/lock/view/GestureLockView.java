package com.lb.myapidemo.lock.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;

/**
 * 手势解锁的小圆点<br/>
 * com.lb.myapidemo.lock.GestureLockView
 * 
 * @author IceLee <br/>
 *         create at 2015-12-14 下午4:39:04
 */
public class GestureLockView extends View {

	// 小圆点有三种状态 手指未按下 手指按下 手指抬起三种状态 使用枚举定义
	/**
	 * 三种状态<br/>
	 * com.lb.myapidemo.lock.Statr
	 * 
	 * @author IceLee <br/>
	 *         create at 2015-12-14 下午4:45:02
	 */
	public enum State {
		NO, // 未按下
		DOWN, // 按下
		UP// 抬起
	}

	// 当前小圆点的状态,默认是未按下
	private State mState = State.NO;
	private Paint paint;// 画笔

	private int noColor = 0xFFE0DBDB;// 正常状态下的颜色
	private int downColor = 0xFF378FC9;// 按下状态下的颜色
	private int upColor = 0xFFFF0000;// 手指抬起之后的颜色
	private int neiyuanColor = 0xFF939090;// 内圆的颜色

	private int width;// 宽度
	private int height;// 高度
	private int radius;// 外圆半径
	private int x;// 圆形x坐标
	private int y;// 圆心y坐标
	protected int titleHeight;


	public GestureLockView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init();
	}

	public GestureLockView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init();
	}

	public GestureLockView(Context context) {
		super(context);
		init();
	}

	/**
	 * 该方法进行一些初始化的方法
	 */
	private void init() {
		// 创建画笔并设置抗锯齿
		paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
		paint.setAntiAlias(true);

	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);

		width = MeasureSpec.getSize(widthMeasureSpec);
		height = MeasureSpec.getSize(heightMeasureSpec);

		// 绘制之前应该先从宽度和高度重取最小值作为半径
		radius = width <= height ? width / 2 : height / 2;
		x = radius;
		y = radius;
	}

	// 重写绘制方法，画出内圆和外圆
	@Override
	protected void onDraw(Canvas canvas) {
		// 根据不同的状态绘制颜色不同的的外圆和内圆
		int color = paint.getColor();
		switch (mState) {
		case NO:// 未按下
			// 绘制外圆
			paint.setColor(noColor);
			canvas.drawCircle(x, y, radius, paint);
			// 绘制内圆
			paint.setColor(neiyuanColor);
			canvas.drawCircle(x, y, radius / 2, paint);

			break;
		case DOWN:// 按下
			// 绘制外圆,外圆是边框
			paint.setColor(downColor);
			paint.setStyle(Paint.Style.STROKE);
			paint.setStrokeWidth(1);
			canvas.drawCircle(x, y, radius, paint);
			// 绘制内圆
			paint.setStyle(Paint.Style.FILL);
			paint.setColor(downColor);
			canvas.drawCircle(x, y, radius / 2, paint);
			break;
		case UP:// 抬起
			// 绘制外圆,外圆是边框
			paint.setColor(upColor);
			paint.setStyle(Paint.Style.STROKE);
			paint.setStrokeWidth(1);
			canvas.drawCircle(x, y, radius, paint);
			// 绘制内圆
			paint.setStyle(Paint.Style.FILL);
			paint.setColor(upColor);
			canvas.drawCircle(x, y, radius / 2, paint);
			break;
		}
		paint.setColor(color);

	}

	/**
	 * 设置当前的原点的状态并重绘界面的原点
	 * 
	 * @param state
	 */
	public void setState(State state) {
		// 改变状态并重绘界面
		mState = state;
		invalidate();
	}

	/**
	 * 获取所在的矩形范围
	 * 
	 * @return
	 */
	public Rect getRect() {
		int left = getLeft();
		int top = getTop();
		int right = left + 2 * radius;
		int bottom = top + 2 * radius;
		return new Rect(left, top, right, bottom);
	}

	/**
	 * 获取原点坐标
	 * 
	 * @return
	 */
	public Point getCenterPoint() {
		Rect rect = getRect();
		int centerX = rect.centerX();
		int centerY = rect.centerY();
		Point p = new Point(centerX, centerY);
		return p;
	}

	/**
	 * 获取当前原点的颜色
	 * @return
	 */
	public int getColor() {
		if (mState == State.NO) {
			return noColor;
		} else if (mState == State.DOWN) {
			return downColor;
		} else {
			return upColor;
		}
	}

}
