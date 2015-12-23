package com.lb.myapidemo.didi;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

/**
 * 滴滴打车抢单的消息推送，需要极光推送的支持
 * 
 * @author xiaofuweng
 * 
 */
public class DiDiQiangDanActivity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		TextView textView = new TextView(this);
		textView.setText("这是一个模拟滴滴打车抢单的消息推送\n应用程序启动接受消息就已经开始，不需要进入该页面也可以进行消息推送接受。\n这个页面只是接收到消息之后跳转进来的页面");
		textView.setGravity(Gravity.CENTER);
		textView.setTextColor(Color.BLACK);

		this.setContentView(textView);

	}

}
