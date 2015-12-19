package com.lb.myapidemo.game.view;

import java.util.Random;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;

import com.lb.myapidemo.utils.LogUtil;

/**
 * 游戏的布局<br/>
 * com.lb.myapidemo.game.view.CardLayout
 * 
 * @author IceLee <br/>
 *         create at 2015-12-18 下午2:58:08
 */
public class CardLayout extends LinearLayout {

	private int row = 4;
	private int col = 4;

	private Card[][] cards;

	public CardLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		init();
	}

	public CardLayout(Context context) {
		super(context);
		init();
	}

	private void init() {
		setOrientation(VERTICAL);
		cards = new Card[row][col];

	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {

		int measuredWidth = getMeasuredWidth();
		int measuredHeight = getMeasuredHeight();

		// 取两个中的小值
		int width = measuredWidth >= measuredHeight ? measuredHeight
				: measuredWidth;

		int cardWidth = width / row;
		for (int i = 0; i < row; i++) {
			LinearLayout layout = new LinearLayout(getContext());
			LayoutParams layoutParams = null;
			if (i != row - 1) {
				layoutParams = new LayoutParams(measuredWidth, cardWidth);
			} else {
				layoutParams = new LayoutParams(measuredWidth, cardWidth + 10);
			}
			layout.setOrientation(HORIZONTAL);
			layout.setBackgroundColor(0xffBBADA0);
			for (int j = 0; j < col; j++) {
				Card card = new Card(getContext());
				card.setNum(0);
				LayoutParams params = null;
				params = new LayoutParams(cardWidth - 10 / col, cardWidth);
				layout.addView(card, params);
				cards[i][j] = card;
			}
			addView(layout, layoutParams);
		}

		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
	}

	/**
	 * 按照比例显示2或者4
	 * 
	 * @return
	 */
	public int createNum() {
		Random random = new Random();
		int num = random.nextInt(40);
		if (num % 40 > 35) {
			return 4;
		} else {
			return 2;
		}
	}

	/**
	 * 生成一个随机位置的并且由数字显示的Card
	 */
	public void createRandomCard() {
		Random randomX = new Random();
		// 获取一个随机数取模获取一个随机位置
		int x = randomX.nextInt(Integer.MAX_VALUE) % col;
		int y = randomX.nextInt(Integer.MAX_VALUE) % row;
		Card c = cards[y][x];
		if (c.getNum() == 0) {
			c.setNum(createNum());
		} else {
			createRandomCard();
		}
	}

	/**
	 * 清空所有数字显示
	 */
	public void clean() {
		for (int i = 0; i < cards.length; i++) {
			for (int j = 0; j < cards[i].length; j++) {
				cards[i][j].setNum(0);
			}
		}
	}

	private float startX, // 按下时X坐标
			startY, // 按下时Y坐标
			offsetX, // X轴的偏移量
			offsetY;// Y轴的偏移量

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:// 按下
			startX = event.getX();
			startY = event.getY();
			break;

		case MotionEvent.ACTION_UP:// 抬起
			// 计算X和Y的偏移量
			offsetX = event.getX() - startX;
			offsetY = event.getY() - startY;
			if (Math.abs(offsetX) > Math.abs(offsetY)) {// 倾向于左右滑动
				if (offsetX < -5) {// 向左滑动
					left();
					createRandomCard();
				} else if (offsetX > 5) {// 向右滑动
					right();
					createRandomCard();
				}

			} else {// 倾向于上下滑动
				if (offsetY < -5) {// 向上滑动
					up();
					createRandomCard();
				} else if (offsetY > 5) {// 向下滑动
					down();
					createRandomCard();
				}
			}
			break;
		}
		return true;
	}

	private void left() {
		for (int i = 0; i < row; i++) {
			Card[] cs = cards[i];
			for (int j = 0; j < cs.length; j++) {
				Card c = cs[j];
				if (c.getNum() == 0) {
					continue;
				} else {
					if (j != 0) {
						Card preCard = cs[j - 1];
						if (preCard.getNum() == 0) {
							preCard.setNum(c.getNum());
							c.setNum(0);
							left();
						} else {
							// 不等于0 就进行比较 将两个数相加
							if (preCard.equals(c)) {
								// 两数相等就相加
								preCard.setNum(2 * preCard.getNum());
								c.setNum(0);
								break;
							}
						}

					}
				}
			}
		}
	}

	private void up() {
		LogUtil.e(this, "UP");
		for (int i = 0; i < row; i++) {
			for (int j = 0; j < col; j++) {
				Card c = cards[i][j];
				if (c.getNum() == 0) {
					if (i != 0) {
						Card upCard = cards[i - 1][j];
						if (upCard.getNum() == 0) {
							upCard.setNum(c.getNum());
							c.setNum(0);
							up();
						} else {
							upCard.setNum(2 * upCard.getNum());
							c.setNum(0);
							break;
						}
					}
				} else {
					continue;
				}
			}
		}

	}

	private void right() {
		for (int i = 0; i < row; i++) {
			Card[] cs = cards[i];
			for (int j = 0; j < cs.length; j++) {
				Card c = cs[j];
				if (c.getNum() == 0) {// 没有数字就继续遍历下一个
					continue;
				} else {// 有数字
						// 判断是不是最后一个
					if (j != col - 1) {
						// 不是最后一个
						// 获取下一个
						Card nextCard = cs[j + 1];
						// 判断下一个是不是有数字
						if (nextCard.getNum() == 0) {
							// 没有数字
							// 下一个设置为当前的数字 并清空当前的数字
							nextCard.setNum(c.getNum());
							c.setNum(0);
							right();
						} else {
							// 有数字
							// 判断两个数字是不是一样
							if (nextCard.equals(c)) {
								// 一样就相加
								nextCard.setNum(2 * nextCard.getNum());
								c.setNum(0);
								break;
							}
						}
					}

				}

			}

		}

	}

	private void down() {
		for (int i = 0; i < col; i++) {
			Card[] cs = cards[i];
			for (int j = 0; j < cs.length; j++) {
				Card c = cs[j];
				if (c.getNum() == 0) {
					continue;
				} else {
					if (i != col - 1) {
						Card downCard = cards[i + 1][j];
						if (downCard.getNum() == 0) {
							// 没有数字
							// 下一个设置为当前的数字 并清空当前的数字
							downCard.setNum(c.getNum());
							c.setNum(0);
							right();
						} else {
							// 有数字
							// 判断两个数字是不是一样
							if (downCard.equals(c)) {
								// 一样就相加
								downCard.setNum(2 * downCard.getNum());
								c.setNum(0);
								break;
							}
						}
					}
				}

			}
		}

	}
}
