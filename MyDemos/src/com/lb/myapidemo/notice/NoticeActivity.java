package com.lb.myapidemo.notice;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import com.lb.myapidemo.R;

/**
 * 发送状态栏通知的activity com.lb.myapidemo.notice.NoticeActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-10 下午3:10:38
 */
public class NoticeActivity extends Activity implements OnClickListener {

	private Button btn1, btn2, btn3;
	private int id = 0;// 发送不同的id使用

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_notice);

		findView();

		setListener();

		setData();

	}

	/**
	 * 初始化界面中的控件
	 */
	private void findView() {
		btn1 = (Button) findViewById(R.id.btn1);
		btn2 = (Button) findViewById(R.id.btn2);
		btn3 = (Button) findViewById(R.id.btn3);
	}

	/**
	 * 给界面中的控件设置监听事件
	 */
	private void setListener() {
		btn1.setOnClickListener(this);
		btn2.setOnClickListener(this);
		btn3.setOnClickListener(this);
	}

	/**
	 * 给界面中的控件设置数据显示
	 */
	private void setData() {

	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn1:
			sendNotice(1, null);
			break;
		case R.id.btn2:
			sendNotice(++id, null);
			break;
		case R.id.btn3:
			PendingIntent pendingIntent = PendingIntent.getActivity(this, 0,
					new Intent(this, OtherActivity.class), 0);
			sendNotice(++id, pendingIntent);
			break;
		}
	}

	/**
	 * 发送一条状态栏通知
	 */
	@SuppressWarnings("deprecation")
	private void sendNotice(int id, PendingIntent pendingIntent) {
		NotificationManager notificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
		Notification notification = new Notification();
		notification.icon = R.drawable.ic_launcher;
		notification.tickerText = "闪屏展示信息";
		notification.when = System.currentTimeMillis();
		notification.setLatestEventInfo(this, "通知标题", "通知的详细内容", pendingIntent);
		notification.number = 1;
		notification.flags |= Notification.FLAG_AUTO_CANCEL; // FLAG_AUTO_CANCEL表明当通知被用户点击时，通知将被清除。
		// 通过通知管理器来发起通知。如果id不同，则每click，在statu那里增加一个提示
		notification.defaults = Notification.DEFAULT_SOUND;
		notificationManager.notify(id, notification);

	}

}
