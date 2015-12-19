package com.lb.myapidemo.bottomlayout;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;

import com.lb.myapidemo.R;
import com.lb.myapidemo.utils.LogUtil;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;

/**
 * 底部布局抽屉式效果<br/>
 * com.lb.myapidemo.bottomlayout.BottomLayoutActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-8 下午3:15:14
 */
public class BottomLayoutActivity extends Activity implements OnClickListener {

	private boolean isShowBootom = false;// 用于判断是否已经显示底部布局
	private int screenHeight;// 屏幕的高度
	private int bottomHeight;// 底部布局的高度
	private int titleHeight;// 系统的titleBar和状态栏的高度

	private LinearLayout ll_bottom;// 底部布局
	private Button btn1, btn2, btn3;
	private TextView tv_bottom_desc;// 底部控件显示是哪个按钮启动的

	private Button btn_close;// 底部的关闭按钮
	private Button btn_commit;// 底部的确定按钮
	private EditText et1, et2, et3;

	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_bottomlayout);
		// 初始化获取屏幕的高度
		WindowManager wm = getWindowManager();
		screenHeight = wm.getDefaultDisplay().getHeight();

		findView();
		// 该方法获取系统状态栏和titleBar高度
		ll_bottom.post(new Runnable() {
			public void run() {
				View v = getWindow().findViewById(Window.ID_ANDROID_CONTENT);// /获得根视图
				titleHeight = v.getTop();
			}
		});

		// 初始化控件之后获取底部布局的高度
		ll_bottom.measure(0, 0);
		bottomHeight = ll_bottom.getMeasuredHeight();

		setListener();

		setData();
	}

	/**
	 * 初始化界面中的控件
	 */
	private void findView() {
		ll_bottom = (LinearLayout) findViewById(R.id.ll_bottom);
		btn1 = (Button) findViewById(R.id.btn1);
		btn2 = (Button) findViewById(R.id.btn2);
		btn3 = (Button) findViewById(R.id.btn3);

		tv_bottom_desc = (TextView) findViewById(R.id.tv_bottom_desc);
		btn_close = (Button) findViewById(R.id.btn_close);
		btn_commit = (Button) findViewById(R.id.btn_commit);

		et1 = (EditText) findViewById(R.id.et1);
		et2 = (EditText) findViewById(R.id.et2);
		et3 = (EditText) findViewById(R.id.et3);

	}

	/**
	 * 给界面中的控件设置监听
	 */
	private void setListener() {
		btn1.setOnClickListener(this);
		btn2.setOnClickListener(this);
		btn3.setOnClickListener(this);

		btn_close.setOnClickListener(this);
		btn_commit.setOnClickListener(this);

	}

	/**
	 * 给界面中的控件设置数据
	 */
	private void setData() {
		// 先将底部布局移动到屏幕下边的外面
		android.widget.RelativeLayout.LayoutParams params = (android.widget.RelativeLayout.LayoutParams) ll_bottom
				.getLayoutParams();
		params.topMargin = screenHeight;

	}

	/**
	 * 按钮点击事件的处理
	 */
	@Override
	public void onClick(View v) {

		switch (v.getId()) {
		case R.id.btn1:
			tv_bottom_desc.setText("按钮1启动的底部布局");
			animation();
			break;
		case R.id.btn2:
			tv_bottom_desc.setText("按钮2启动的底部布局");
			animation();
			break;
		case R.id.btn3:
			tv_bottom_desc.setText("按钮3启动的底部布局");
			animation();
			break;

		case R.id.btn_close:
			animation();
			break;

		case R.id.btn_commit:
			String data1 = et1.getText().toString().trim();
			String data2 = et2.getText().toString().trim();
			String data3 = et3.getText().toString().trim();
			Toast.makeText(
					this,
					"数据1的输入内容：" + data1 + ",数据2的输入内容：" + data2 + ",数据3的输入内容："
							+ data3, Toast.LENGTH_SHORT).show();
			animation();

			break;
		}
	}

	/**
	 * 动画效果实现
	 */
	private void animation() {
		// 根据底部布局是否显示初始化需要执行的动画
		ValueAnimator animator = null;
		if (isShowBootom) {
			// 底部已经显示，需要将底部隐藏
			animator = ValueAnimator.ofInt(screenHeight - bottomHeight
					- titleHeight, screenHeight);
		} else {
			// 底部没有显示，需要显示 从屏幕高度到屏幕高度减去底部高度减去状态栏的高度
			animator = ValueAnimator.ofInt(screenHeight, screenHeight
					- bottomHeight - titleHeight);
		}

		// 添加动画执行过程中值改变的监听
		animator.addUpdateListener(new AnimatorUpdateListener() {
			@Override
			public void onAnimationUpdate(ValueAnimator valueAnimator) {
				int value = (Integer) valueAnimator.getAnimatedValue();
				LayoutParams params = (LayoutParams) ll_bottom
						.getLayoutParams();
				params.topMargin = value;
				ll_bottom.requestLayout();

			}
		});

		// 添加动画执行状态的监听，执行完毕之后将isShowBottom取反
		animator.addListener(new AnimatorListener() {
			@Override
			public void onAnimationStart(Animator arg0) {// 开始
				LogUtil.e(this, "animator start run");
				// 开始动画 取消按钮的点击事件
				btn1.setOnClickListener(null);
				btn2.setOnClickListener(null);
				btn3.setOnClickListener(null);

				// 清空之前输入的内容
				if (!isShowBootom) {
					et1.setText("");
					et2.setText("");
					et3.setText("");
				}
			}

			@Override
			public void onAnimationRepeat(Animator arg0) {// 重复
				LogUtil.e(this, "animator repeat");
			}

			@Override
			public void onAnimationEnd(Animator arg0) {// 结束
				LogUtil.e(this, "animator end");
				// 动画执行完毕将isShowBootom取反
				isShowBootom = !isShowBootom;

				// 添加按钮的点击事件
				btn1.setOnClickListener(BottomLayoutActivity.this);
				btn2.setOnClickListener(BottomLayoutActivity.this);
				btn3.setOnClickListener(BottomLayoutActivity.this);
			}

			@Override
			public void onAnimationCancel(Animator arg0) {// 取消
				LogUtil.e(this, "animator cancel");
			}
		});
		animator.setDuration(500);
		animator.start();
	}

	/**
	 * 复写父类的返回键的处理事件，如果底部布局显示就隐藏底部布局，否则就关闭当前Activity
	 */
	@Override
	public void onBackPressed() {
		if (isShowBootom) {
			animation();
		} else {
			super.onBackPressed();
		}
	}
}
