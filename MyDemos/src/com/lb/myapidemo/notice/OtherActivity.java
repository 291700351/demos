package com.lb.myapidemo.notice;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.widget.TextView;

/**
 * 点击通知跳转的页面<br/>
 * com.lb.myapidemo.notice.OtherActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-10 下午3:55:43
 */
public class OtherActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		TextView textView = new TextView(this);
		textView.setText("点击通知跳转进来的");
		textView.setTextColor(Color.BLACK);
		textView.setGravity(Gravity.CENTER);
		textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 30);
		setContentView(textView);
	}
}
