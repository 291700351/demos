package com.lb.myapidemo.didi;

import android.app.Application;
import android.content.Context;
import cn.jpush.android.api.JPushInterface;

/**
 * 全局
 * 
 * @author xiaofuweng
 * 
 */
public class MyDemosApplication extends Application {
	private static Context context;

	@Override
	public void onCreate() {
		super.onCreate();
		// 初始化极光推送
		JPushInterface.setDebugMode(true);
		JPushInterface.init(this);
		context = this;
	}

	public static Context getContext() {
		return context;
	}
}
