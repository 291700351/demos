package com.lb.myapidemo.egg;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;

import com.lb.libexplosion.view.ExplosionField;
import com.lb.libexplosion.view.ExplosionField.ExplosionAnimatorListener;
import com.lb.myapidemo.R;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;

public class GoldenEggActivity extends Activity {

	private ExplosionField mExplosionField;// 爆炸的自定义view

	private ImageView iv_egg;// 金蛋图标
	private AnimationDrawable animationDrawable;// 金蛋的背景动画

	private boolean isBig = false;// 用来判断当前金蛋是不是已经放大，默认时false

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.activity_goldenegg);

		mExplosionField = ExplosionField.attach2Window(this);

		findView();

		setListener();

		setData();

	}

	/**
	 * 初始化界面中控件
	 */
	private void findView() {
		iv_egg = (ImageView) findViewById(R.id.iv_egg);
	}

	/**
	 * 设置控件的监听事件处理
	 */
	private void setListener() {
		// 给图片设置点击事件
		iv_egg.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// 将判断动画是否在播放 在播放就停止，并设置背景为第二章图片
				if (animationDrawable.isRunning()) {
					animationDrawable.stop();
					iv_egg.setBackgroundResource(R.drawable.jindan2);
				}
				// 判断是不是已经放大
				if (!isBig) {
					// 需要进行放大
					// 从当前大小放大两倍
					iv_egg.measure(0, 0);
					int eggWidth = iv_egg.getMeasuredWidth();
					int eggHeight = iv_egg.getMeasuredHeight();

					int bigWidth = 2 * eggWidth;
					int bigHeight = 2 * eggHeight;
					// 使用nineOld动画
					ValueAnimator animatorWidth = ValueAnimator.ofInt(eggWidth,
							bigWidth);
					ValueAnimator animatorHeight = ValueAnimator.ofInt(
							eggHeight, bigHeight);

					// 宽度变化的动画的监听
					animatorWidth
							.addUpdateListener(new AnimatorUpdateListener() {
								@Override
								public void onAnimationUpdate(
										ValueAnimator valueAnimator) {
									int value = (Integer) valueAnimator
											.getAnimatedValue();
									iv_egg.getLayoutParams().width = value;
									iv_egg.requestLayout();

								}
							});
					// 高度变化的动画的监听
					animatorHeight
							.addUpdateListener(new AnimatorUpdateListener() {

								@Override
								public void onAnimationUpdate(
										ValueAnimator valueAnimator) {
									int value = (Integer) valueAnimator
											.getAnimatedValue();
									iv_egg.getLayoutParams().height = value;
									iv_egg.requestLayout();
								}
							});

					animatorWidth.addListener(new AnimatorListener() {

						@Override
						public void onAnimationStart(Animator arg0) {
						}

						@Override
						public void onAnimationRepeat(Animator arg0) {
						}

						@Override
						public void onAnimationEnd(Animator arg0) {
							isBig = true;
						}

						@Override
						public void onAnimationCancel(Animator arg0) {
						}
					});
					animatorWidth.setDuration(300);
					animatorHeight.setDuration(300);
					animatorWidth.start();
					animatorHeight.start();
				} else {
					// 进行砸金蛋的效果

					mExplosionField
							.setExplosionAnimatorListener(new ExplosionAnimatorListener() {

								@Override
								public void onAnimationStart(
										android.animation.Animator animation) {
								}

								@Override
								public void onAnimationRepeat(
										android.animation.Animator animation) {
								}

								@Override
								public void onAnimationEnd(
										android.animation.Animator animation) {
									// 爆炸结束之后跳转到成功界面
									Intent intent = new Intent(
											GoldenEggActivity.this,
											SuccessActivity.class);
									startActivity(intent);
								}

								@Override
								public void onAnimationCancel(
										android.animation.Animator animation) {
								}
							});

					mExplosionField.explode(iv_egg);
					iv_egg.setOnClickListener(null);
				}

			}
		});

	}

	/**
	 * 设置数据
	 */
	private void setData() {
		// 初始化的是否开始金蛋动画播放
		animationDrawable = (AnimationDrawable) iv_egg.getBackground();
		animationDrawable.start();

	}

}
