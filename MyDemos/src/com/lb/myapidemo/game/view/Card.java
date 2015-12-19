package com.lb.myapidemo.game.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.lb.myapidemo.game.DrawableUtil;

/**
 * 单个卡片自定义对象<br/>
 * com.lb.myapidemo.game.view.Card
 * 
 * @author IceLee <br/>
 *         create at 2015-12-18 下午2:19:42
 */
public class Card extends FrameLayout {

	private int num = 2;// 当前卡片显示的数字

	private TextView textView;// 显示数字的textView

	public Card(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init();
	}

	public Card(Context context, AttributeSet attrs) {
		super(context, attrs);
		init();
	}

	public Card(Context context) {
		super(context);
		init();
	}

	/**
	 * 进行一些初始化的操作
	 */
	private void init() {
		textView = new TextView(getContext());
		setNum(num);
		LayoutParams params = new LayoutParams(-1, -1);
		params.setMargins(10, 10, 0, 0);
		addView(textView, params);

	}

	/**
	 * 获取当前的数字
	 * 
	 * @return
	 */
	public int getNum() {
		return num;
	}

	/**
	 * 设置数字显示
	 * 
	 * @param num
	 */
	@SuppressWarnings("deprecation")
	public void setNum(int num) {
		this.num = num;
		String mBgColor = "";
		switch (num) {
		case 0:
			mBgColor = "#CCC0B3";
			break;
		case 2:
			mBgColor = "#EEE4DA";
			break;
		case 4:
			mBgColor = "#EDE0C8";
			break;
		case 8:
			mBgColor = "#F2B179";
			break;
		case 16:
			mBgColor = "#F49563";
			break;
		case 32:
			mBgColor = "#F5794D";
			break;
		case 64:
			mBgColor = "#F55D37";
			break;
		case 128:
			mBgColor = "#EEE863";
			break;
		case 256:
			mBgColor = "#EDB04D";
			break;
		case 512:
			mBgColor = "#ECB04D";
			break;
		case 1024:
			mBgColor = "#EB9437";
			break;
		case 2048:
			mBgColor = "#EA7821";
			break;
		default:
			mBgColor = "#EA7821";
			break;
		}

		if (num == 0) {
			textView.setText("");
		} else {
			textView.setText(String.valueOf(num));
		}
		GradientDrawable drawable = DrawableUtil.generateDrawable(Color
				.parseColor(mBgColor));
		textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 28);
		textView.setGravity(Gravity.CENTER);
		textView.setBackgroundDrawable(drawable);

	}

	public boolean equals(Card c) {
		return num == c.getNum();
	}

}
