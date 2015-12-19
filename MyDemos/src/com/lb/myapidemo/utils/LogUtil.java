package com.lb.myapidemo.utils;

import android.util.Log;

/**
 * 打印日志的工具类
 * 
 * @author xiaofuweng
 * 
 */
public class LogUtil {

	private static final boolean isDebug = true;

	/**
	 * 打印一条e级别的Log
	 * 
	 * @param tag
	 *            标签名
	 * @param msg
	 *            需要打印的信息
	 */
	public static void e(String tag, String msg) {
		if (isDebug)
			Log.e(tag, msg);
	}

	/**
	 * 打印一条e级别的Log
	 * 
	 * @param object
	 *            使用反射获取Object的类名作为日志的TAG
	 * @param msg
	 *            需要打印的日志信息
	 */
	public static void e(Object object, String msg) {
		e(object.getClass().getSimpleName(), msg);
	}

	/**
	 * 打印一条e级别的Log
	 * 
	 * @param objectTag
	 *            使用反射获取Object的类名作为日志的TAG
	 * @param objectMsg
	 *            将对象转换成字符串进行打印
	 */
	public static void e(Object objectTag, Object objectMsg) {
		e(objectTag, objectMsg.toString());
	}

}
