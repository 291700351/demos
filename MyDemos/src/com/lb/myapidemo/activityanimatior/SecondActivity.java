package com.lb.myapidemo.activityanimatior;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;

import com.lb.libactivityanimation.ActivityAnimator;
import com.lb.myapidemo.utils.LogUtil;

public class SecondActivity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 代码写布局
		RelativeLayout layout = new RelativeLayout(this);
		LayoutParams params = new LayoutParams(LayoutParams.MATCH_PARENT,
				LayoutParams.MATCH_PARENT);

		Button btn = new Button(this);
		btn.setText("Back");
		android.widget.RelativeLayout.LayoutParams btnParams = new android.widget.RelativeLayout.LayoutParams(
				LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		btnParams.addRule(RelativeLayout.CENTER_IN_PARENT);
		layout.addView(btn, btnParams);

		this.setContentView(layout, params);

		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				back();
			}
		});
	}

	/**
	 * 按钮的点击事件处理
	 */
	private void back() {
		this.finish();
		try {
			ActivityAnimator anim = new ActivityAnimator();
			anim.getClass()
					.getMethod(
							this.getIntent().getExtras()
									.getString("backAnimation")
									+ "Animation", Activity.class)
					.invoke(anim, this);
		} catch (Exception e) {
			LogUtil.e(this, "An error occured : " + e);
		}
	}

	@Override
	public void onBackPressed() {
		back();
	}
}
