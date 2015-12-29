package com.lb.myapidemo.flowlayout.view;

import java.util.ArrayList;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class FlowLayoutView extends ViewGroup {

	private int shuipingjianju = 12;// 设置水平间距为12
	private int chuizhijianju = 12;// 设置垂直间距为12

	private ArrayList<Line> lines;// 存放所有的行

	public FlowLayoutView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	public FlowLayoutView(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public FlowLayoutView(Context context) {
		super(context);
		init();
	}

	private void init() {
		lines = new ArrayList<FlowLayoutView.Line>();
	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
		// 获取控件的宽度
		int width = MeasureSpec.getSize(widthMeasureSpec);
		// 获取存放子view的宽度，减去左右两边的padding值
		int realWidth = width - getPaddingLeft() - getPaddingRight();

		// 遍历子控件，添加到每一行
		Line line = null;

		for (int i = 0; i < getChildCount(); i++) {
			View child = getChildAt(i);
			child.measure(0, 0);

			if (null == line) {
				line = new Line();
			}

			// 如果当前一行还没有子view就直接添加进去
			if (line.getViews().size() == 0) {
				line.addView(child);
			} else if (line.getWidth() + child.getMeasuredWidth()
					+ shuipingjianju > realWidth) {// 当前行已经有子控件，判断当前行的宽度加上view的宽度是不是小于控件的只是宽度
				// 加上之后已经大于正式宽度，所以换行
				lines.add(line);
				// 创建新行,并将子view添加进新行
				line = new Line();
				line.addView(child);

				// 如果childView是最后一个，也会造成当前line丢失,所以要判断
				if (i == (getChildCount() - 1)) {
					lines.add(line);
				}

			} else {// 直接添加进该行
				line.addView(child);

				// 如果childView是最后一个，也会造成当前line丢失,所以要判断
				if (i == (getChildCount() - 1)) {
					lines.add(line);
				}

			}
		}
		// 程序严谨性，制空line对象，避免产生内存浪费
		line = null;

		// 现在已经将所有view都添加进对应的行中，，获取每一行的高度，申请足够的高度空间
		int height = getPaddingTop() + getPaddingBottom();
		for (int i = 0; i < lines.size(); i++) {
			height += lines.get(i).getHeight();
		}
		// 再加上处置间距的高度
		height += (lines.size() - 1) * chuizhijianju;

		// 申请宽度和高度
		setMeasuredDimension(width, height);

	}

	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		// 获取paddingLeft和paddingTop
		int left = getPaddingLeft();
		int top = getPaddingTop();

		// 遍历所有行
		for (int i = 0; i < lines.size(); i++) {
			Line line = lines.get(i);
			
			//每遍历一行   顶部位置增加一行的高度和垂直间距
			if(i>0){
				top+=lines.get(i-1).getHeight()+chuizhijianju;
			}

			// 计算一行中出现的剩余部分的宽度,控件宽度-左右的padding-行的宽度
			int shengyuWidth = getMeasuredWidth() - getPaddingLeft()
					- getPaddingRight() - line.getWidth();
			// 计算每个子view能获取到的平均值
			int pingjun = shengyuWidth / line.getViews().size();
			// 遍历每一行中的控件
			for (int j = 0; j < line.getViews().size(); j++) {
				// 遍历子控件开始 将每个控件的宽度加上平局值，
				View lineChild = line.getViews().get(j);
				int widthMeasureSpec = MeasureSpec.makeMeasureSpec(
						(int) (lineChild.getMeasuredWidth() + pingjun),
						MeasureSpec.EXACTLY);
				lineChild.measure(widthMeasureSpec, 0);// 重新设置宽高

				// 按照对应的位置进行拜访子view。
				if (j == 0) {// 一行中的第一个
					lineChild.layout(left, top,
							left + lineChild.getMeasuredWidth(), top
									+ lineChild.getMeasuredHeight());

				} else {// 不是第一个
						// 获取前一个view
					View preView = line.getViews().get(j - 1);
					// 获取前一个的right值+水平间距得到当前子view的左边位置
					int currentLeft = preView.getRight() + shuipingjianju;
					// 当前子view的顶部位置和上一个一样
					int currentTop = preView.getTop();

					lineChild.layout(currentLeft, currentTop, currentLeft
							+ lineChild.getMeasuredWidth(), currentTop
							+ lineChild.getMeasuredHeight());

				}

			}

		}

	}

	/**
	 * 封装一行的TextView的对象
	 * 
	 * @author xiaofuweng
	 * 
	 */
	private final class Line {

		private ArrayList<View> views;// 一行中所有的子view

		private int width;// 子view的宽度

		private int height;// 高度

		public Line() {
			// 初始化集合
			views = new ArrayList<View>();
		}

		/**
		 * 将一个view对象添加进本行
		 * 
		 * @param view
		 */
		public void addView(View view) {
			// 先使用标准的测量对view进行测量，保证能获取的宽度和高度
			view.measure(0, 0);
			// 先判断是否已经有该view对象，有就不用添加了
			if (views.contains(view)) {
				return;
			}

			// 再判断当前的一行是否有子view，更新宽度
			if (views.size() == 0) {
				width = view.getMeasuredWidth();
			} else {
				// 当前的宽度在加上view的宽度
				width += view.getMeasuredWidth();
			}

			// 更新高度
			height = view.getMeasuredHeight();

			views.add(view);
		}

		/**
		 * 获取一行中所有的view集合
		 * 
		 * @return
		 */
		public ArrayList<View> getViews() {
			return views;
		}

		/**
		 * 获取当前行的宽度
		 * 
		 * @return
		 */
		public int getWidth() {
			return width;
		}

		public int getHeight() {
			return height;
		}

	}

}
