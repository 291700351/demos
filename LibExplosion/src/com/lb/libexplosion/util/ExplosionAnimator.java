package com.lb.libexplosion.util;

import java.util.Random;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;

public class ExplosionAnimator extends ValueAnimator {

	public static long DEFAULT_DURATION = 0x1000;// 默认时间1秒
	private static final Interpolator DEFAULT_INTERPOLATOR = new AccelerateInterpolator(
			0.6f);
	private static final float END_VALUE = 1.4f;
	private static final float X = Utils.dp2Px(5);
	private static final float Y = Utils.dp2Px(20);
	private static final float V = Utils.dp2Px(2);
	private static final float W = Utils.dp2Px(1);
	private Paint mPaint;
	private Particle[] mParticles;
	private Rect mBound;
	private View mContainer;

	public ExplosionAnimator(View container, Bitmap bitmap, Rect bound) {
		mPaint = new Paint();
		mBound = new Rect(bound);
		int partLen = 35;// 爆炸碎片分数 默认时35份
		mParticles = new Particle[partLen * partLen];
		Random random = new Random(System.currentTimeMillis());
		// 把图片横向分成17份，每份的宽度
		int w = bitmap.getWidth() / (partLen + 2);
		// 把图片纵向分成17份，每份的宽度
		int h = bitmap.getHeight() / (partLen + 2);

		// 总共分成了17*17块，从图片中每块（不包含边界块）的顶点的像素取出颜色后创建该颜色的粒子，然后保存到一维数组mParticles中

		for (int i = 0; i < partLen; i++) {
			for (int j = 0; j < partLen; j++) {
				mParticles[(i * partLen) + j] = generateParticle(
						bitmap.getPixel((j + 1) * w, (i + 1) * h), random);
			}
		}
		mContainer = container;
		setFloatValues(0f, END_VALUE);
		setInterpolator(DEFAULT_INTERPOLATOR);
		setDuration(DEFAULT_DURATION);
	}

	/**
	 * 生成粒子
	 * 
	 * @param color
	 * @param random
	 * @return
	 */
	private Particle generateParticle(int color, Random random) {
		Particle particle = new Particle();
		particle.color = color;
		particle.radius = V;
		if (random.nextFloat() < 0.2f) {
			particle.baseRadius = V + ((X - V) * random.nextFloat());
		} else {
			particle.baseRadius = W + ((V - W) * random.nextFloat());
		}
		float nextFloat = random.nextFloat();
		particle.top = mBound.height() * ((0.18f * random.nextFloat()) + 0.2f);
		particle.top = nextFloat < 0.2f ? particle.top : particle.top
				+ ((particle.top * 0.2f) * random.nextFloat());
		particle.bottom = (mBound.height() * (random.nextFloat() - 0.5f)) * 1.8f;
		float f = nextFloat < 0.2f ? particle.bottom
				: nextFloat < 0.8f ? particle.bottom * 0.6f
						: particle.bottom * 0.3f;
		particle.bottom = f;
		particle.mag = 4.0f * particle.top / particle.bottom;
		particle.neg = (-particle.mag) / particle.bottom;
		f = mBound.centerX() + (Y * (random.nextFloat() - 0.5f));
		particle.baseCx = f;
		particle.cx = f;
		f = mBound.centerY() + (Y * (random.nextFloat() - 0.5f));
		particle.baseCy = f;
		particle.cy = f;
		particle.life = END_VALUE / 10 * random.nextFloat();
		particle.overflow = 0.4f * random.nextFloat();
		particle.alpha = 1f;
		return particle;
	}

	/*
	 * 该属性动画只是起到一个计时作用，与爆炸效果没有其他联系。若动画时间还没结束，则依次计算每个粒子当前的各属性值（坐标，半径），然后依次绘制每个粒子
	 * （ canvas.drawCircle(particle.cx, particle.cy, particle.radius, mPaint);
	 * ）， 然后调用mContainer.invalidate()，调用该函数后，会自动调用mContainer(即
	 * ExplosionField对象)的onDraw(Canvas canvas) 方法，该方法内部 又调用了explosion（即
	 * ExplosionAnimator对象）的draw方法（即
	 * 下面的方法），所以又会继续绘制。所以ExplosionAnimator的draw()和ExplosionField的onDraw
	 * 反复相互调用，直到动画时间终止为止。 这种相互调用方式跟scroller和computeScroll(),onDraw()之间的使用方式很像
	 */
	public boolean draw(Canvas canvas) {
		/*
		 * 属性动画是否结束。
		 */
		if (!isStarted()) {
			return false;
		}

		for (Particle particle : mParticles) {

			particle.advance((Float) getAnimatedValue());
			if (particle.alpha > 0f) {
				mPaint.setColor(particle.color);
				mPaint.setAlpha((int) (Color.alpha(particle.color) * particle.alpha));
				canvas.drawCircle(particle.cx, particle.cy, particle.radius,
						mPaint);// 画到ExplosionField上
			}
		}
		mContainer.invalidate();
		return true;
	}

	/**
	 * 该方法是ExplosionAnimator重写过的 </br> {@inheritDoc}
	 * 
	 */
	@Override
	public void start() {
		// 开启计时
		super.start();
		// 开始绘制粒子
		mContainer.invalidate(mBound);
	}

	/**
	 * 爆炸粒子
	 * 
	 */
	private class Particle {
		float alpha;
		int color;
		float cx;// 粒子当前中心x坐标
		float cy;// 粒子当前中心y坐标
		float radius;
		float baseCx;// 粒子原始x坐标
		float baseCy;// 粒子原始y坐标
		float baseRadius;// 粒子原始半径
		float top;
		float bottom;
		float mag;
		float neg;
		float life;
		float overflow;

		/**
		 * 计算爆炸后该粒子的圆心坐标和半径
		 * 
		 * @param factor
		 *            因子
		 */
		public void advance(float factor) {
			float f = 0f;
			float normalization = factor / END_VALUE;
			if (normalization < life || normalization > 1f - overflow) {
				alpha = 0f;
				return;
			}
			normalization = (normalization - life) / (1f - life - overflow);
			float f2 = normalization * END_VALUE;
			if (normalization >= 0.7f) {
				f = (normalization - 0.7f) / 0.3f;
			}
			alpha = 1f - f;
			f = bottom * f2;
			cx = baseCx + f;
			cy = (float) (baseCy - this.neg * Math.pow(f, 2.0)) - f * mag;
			radius = V + (baseRadius - V) * f2;
		}
	}
}