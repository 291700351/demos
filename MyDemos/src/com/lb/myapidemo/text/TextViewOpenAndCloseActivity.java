package com.lb.myapidemo.text;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;

import com.lb.myapidemo.R;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;

/**
 * textView的展开和关闭效果的界面，需要nineoldandroids第三方jar
 * 
 * @author xiaofuweng
 * 
 */
public class TextViewOpenAndCloseActivity extends Activity implements
		OnClickListener {
	private TextView desc;// 第一个的详细部分
	private TextView open;// 第一个的底部打开按钮
	private int minHeight;// 最小高度
	private int maxHeight;// 最大高度
	private boolean isShowDesc1 = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_text_open_and_close);

		findView();

		setListener();

		setData();
	}

	/**
	 * 初始化界面中的控件
	 */
	private void findView() {
		desc = (TextView) findViewById(R.id.desc);
		open = (TextView) findViewById(R.id.open);
	}

	/**
	 * 给界面中的控件设置监听器
	 */
	private void setListener() {
		open.setOnClickListener(this);

	}

	/**
	 * 给控件设置数据显示
	 */
	private void setData() {
		desc.setMaxLines(4);// 先设置最多显示4行文本
		desc.getViewTreeObserver().addOnGlobalLayoutListener(
				new OnGlobalLayoutListener() {
					@SuppressWarnings("deprecation")
					@Override
					public void onGlobalLayout() {
						// 在用完回调之后立即remove监听，因为只要父view中某个控件的宽高有变化，会仍然执行回调
						desc.getViewTreeObserver()
								.removeGlobalOnLayoutListener(this);
						minHeight = desc.getHeight();

						// 2.获取desc1的总高度
						desc.setMaxLines(Integer.MAX_VALUE);// 让desc1s显示所有文本
						desc.getViewTreeObserver().addOnGlobalLayoutListener(
								new OnGlobalLayoutListener() {

									@Override
									public void onGlobalLayout() {
										// 在用完回调之后立即remove监听，因为只要父view中某个控件的宽高有变化，会仍然执行回调
										desc.getViewTreeObserver()
												.removeGlobalOnLayoutListener(
														this);
										maxHeight = desc.getHeight();
										desc.getLayoutParams().height = minHeight;
										desc.requestLayout();
									}
								});
					}
				});

	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.open:
			desc.setMaxLines(Integer.MAX_VALUE);
			ValueAnimator animator = null;
			if (isShowDesc1) {
				animator = ValueAnimator.ofInt(maxHeight, minHeight);
			} else {
				animator = ValueAnimator.ofInt(minHeight, maxHeight);
			}
			// 修改desc的高度
			animator.addUpdateListener(new AnimatorUpdateListener() {
				@Override
				public void onAnimationUpdate(ValueAnimator valueAnimator) {
					int value = (Integer) valueAnimator.getAnimatedValue();
					desc.getLayoutParams().height = value;
					desc.requestLayout();
				}
			});
			// 设置动画的监听
			animator.addListener(new AnimatorListener() {
				@Override
				public void onAnimationStart(Animator arg0) {
					// 动画开始前取消点击事件 避免出现多次点混乱现象
					open.setOnClickListener(null);

				}

				@Override
				public void onAnimationRepeat(Animator arg0) {

				}

				@Override
				public void onAnimationEnd(Animator arg0) {
					isShowDesc1 = !isShowDesc1;
					// 动画结束添加点击事件,并修改文本显示
					open.setOnClickListener(TextViewOpenAndCloseActivity.this);
					open.setText("点击闭合");
				}

				@Override
				public void onAnimationCancel(Animator arg0) {

				}
			});
			animator.setDuration(300);
			animator.start();
			break;

		default:
			break;
		}

	}

}
