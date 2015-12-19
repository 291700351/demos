package com.lb.myapidemo;

import android.util.Log;

/**
 * 日志打印工具
 * 
 * @author xiaofuweng
 * 
 */
public class LogUtil {
	private static final boolean isDebug = true;

	/**
	 * 打印一条e级别的log信息
	 * 
	 * @param object
	 * @param obj
	 */
	public static void e(String tag, String msg) {
		if (isDebug)
			Log.e(tag, msg);
	}

	/**
	 * 打印一条e级别的log信息
	 * 
	 * @param object
	 * @param obj
	 */
	public static void e(Object object, String msg) {
		e(object.getClass().getSimpleName(), msg);
	}

	/**
	 * 打印一条e级别的log信息
	 * 
	 * @param object
	 * @param obj
	 */
	public static void e(Object object, Object obj) {
		e(object, obj.toString());
	}

}