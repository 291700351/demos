package com.lb.myapidemo.didi.receiver;

import java.util.Timer;
import java.util.TimerTask;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import cn.jpush.android.api.JPushInterface;

import com.lb.myapidemo.R;
import com.lb.myapidemo.didi.DiDiQiangDanActivity;

public class MyReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		Bundle bundle = intent.getExtras();
		String content = bundle.getString(JPushInterface.EXTRA_ALERT);
		String type = bundle.getString(JPushInterface.EXTRA_EXTRA);
		System.out.println("收到消息了:" + content + "：可选设置：" + type);
		int notifactionId = bundle.getInt(JPushInterface.EXTRA_NOTIFICATION_ID);

		// 取消通知,找了半天 不知道怎么取消极光推送的状态栏通知，所以使用自己的方法关闭通知栏通知
		NotificationManager notificationManager = (NotificationManager) context
				.getSystemService(Context.NOTIFICATION_SERVICE);
		notificationManager.cancel(notifactionId);
		showToast(context, content);

	}

	public void showToast(final Context context, String msg) {
		final WindowManager windowManager = (WindowManager) context
				.getSystemService(Context.WINDOW_SERVICE);
		final View view = View.inflate(context, R.layout.toast_custom, null);
		// 使用计时器 10秒之后移除显示在窗口的view，在最后view显示之后，开始执行这个任务
		TimerTask task = new TimerTask() {
			@Override
			public void run() {
				windowManager.removeView(view);
			}
		};
		final Timer timer = new Timer();

		TextView tv_toast_custom_content = (TextView) view
				.findViewById(R.id.content);
		tv_toast_custom_content.setText(msg);

		view.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 点击view跳转到页面，并移除view显示,并且取消计时
				Intent intent = new Intent(context, DiDiQiangDanActivity.class);
				intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
				context.startActivity(intent);
				windowManager.removeView(view);
				timer.cancel();

			}
		});

		LayoutParams params = new WindowManager.LayoutParams();
		params.height = WindowManager.LayoutParams.WRAP_CONTENT; // 高度包裹内容
		params.width = WindowManager.LayoutParams.MATCH_PARENT;// 宽度包裹内容
		params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE // 没有焦点
				// | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE // 不可触摸
				| WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON; // 保持屏幕常亮
		params.type = WindowManager.LayoutParams.TYPE_PRIORITY_PHONE; // 指定类型,toast是天生没有触摸事件
		params.setTitle("Toast");

		// 设置控件的位置
		params.gravity = Gravity.TOP | Gravity.LEFT;
		params.y = 20;// top:顶部的距离 bottom:底部的距离

		windowManager.addView(view, params);

		timer.schedule(task, 10 * 1000);

	}

}
