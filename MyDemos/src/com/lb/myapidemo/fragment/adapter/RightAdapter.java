package com.lb.myapidemo.fragment.adapter;

import java.util.ArrayList;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.lb.myapidemo.fragment.domain.RightBean;

/**
 * 左侧listView的adapter<br/>
 * com.lb.myapidemo.fragment.LeftAdapter
 * 
 * @author IceLee <br/>
 *         create at 2015-12-17 下午3:32:22
 */
public final class RightAdapter extends BaseAdapter {

	private ArrayList<RightBean> datas;

	public RightAdapter(ArrayList<RightBean> datas) {
		this.datas = datas;
	}

	@Override
	public int getCount() {
		return datas.size();
	}

	@Override
	public RightBean getItem(int position) {
		return datas.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		// 使用系统提供的一个textview
		int type = datas.get(position).getType();
		View view = View.inflate(parent.getContext(),
				android.R.layout.simple_list_item_1, null);
		ViewHolder holder = ViewHolder.getHolder(view);
		switch (type) {
		case 0:
			holder.text1.setBackgroundColor(Color.parseColor("#2b2b2b2b"));
			break;
		case 1:

			break;

		}
		holder.text1.setText(datas.get(position).getData());

		return view;

	}

	private static final class ViewHolder {
		private TextView text1;

		private ViewHolder(View view) {
			text1 = (TextView) view.findViewById(android.R.id.text1);
		}

		public static ViewHolder getHolder(View view) {
			ViewHolder holder = (ViewHolder) view.getTag();
			if (holder == null) {
				holder = new ViewHolder(view);
				view.setTag(holder);
			}
			return holder;
		}

	}
}
