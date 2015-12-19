package com.lb.myapidemo.game;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;

/**
 * 图形的工具类<br/>
 * com.lb.myapidemo.game.DrawableUtil
 * 
 * @author IceLee <br/>
 *         create at 2015-12-18 下午2:23:50
 */
public class DrawableUtil {
	/**
	 * 生成一个矩形圆角背景
	 * 
	 * @param rgb
	 * @return
	 */
	public static GradientDrawable generateDrawable(int rgb) {
		GradientDrawable drawable = new GradientDrawable();
		drawable.setShape(GradientDrawable.RECTANGLE);// 设置矩形
		drawable.setCornerRadius(5);
		drawable.setColor(rgb);
		return drawable;
	}

	/**
	 * 动态生成selector
	 * 
	 * @param pressed
	 * @param normal
	 * @return
	 */
	public static StateListDrawable generateSelector(Drawable pressed,
			Drawable normal) {
		StateListDrawable stateListDrawable = new StateListDrawable();
		// 设置按下的拖
		stateListDrawable.addState(new int[] { android.R.attr.state_pressed },
				pressed);
		// 设置默认状态对应的图片
		stateListDrawable.addState(new int[] {}, normal);
		return stateListDrawable;
	}
}
