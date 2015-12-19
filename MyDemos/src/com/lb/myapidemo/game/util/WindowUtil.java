package com.lb.myapidemo.game.util;

import android.content.Context;
import android.view.WindowManager;

/**
 * 屏幕相关的工具类<br/>
 * com.lb.myapidemo.game.util.WindowUtil
 * 
 * @author IceLee <br/>
 *         create at 2015-12-18 下午3:02:23
 */
public class WindowUtil {

	/**
	 * 获取屏幕宽度
	 * 
	 * @param context
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static int getScreenWidth(Context context) {
		WindowManager wm = (WindowManager) context
				.getSystemService(Context.WINDOW_SERVICE);
		return wm.getDefaultDisplay().getWidth();
	}

	/**
	 * 获取屏幕高度
	 * 
	 * @param context
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static int getScreenHeight(Context context) {
		WindowManager wm = (WindowManager) context
				.getSystemService(Context.WINDOW_SERVICE);
		return wm.getDefaultDisplay().getHeight();
	}
}
