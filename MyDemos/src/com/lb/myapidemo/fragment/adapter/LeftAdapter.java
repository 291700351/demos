package com.lb.myapidemo.fragment.adapter;

import java.util.ArrayList;

import com.lb.myapidemo.fragment.domain.LeftBean;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

/**
 * 左侧listView的adapter<br/>
 * com.lb.myapidemo.fragment.LeftAdapter
 * 
 * @author IceLee <br/>
 *         create at 2015-12-17 下午3:32:22
 */
public final class LeftAdapter extends BaseAdapter {

	private ArrayList<LeftBean> datas;

	public LeftAdapter(ArrayList<LeftBean> datas) {
		this.datas = datas;
	}

	@Override
	public int getCount() {
		return datas.size();
	}

	@Override
	public LeftBean getItem(int position) {
		return datas.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		// 使用系统提供的一个textview
		if (convertView == null) {
			convertView = View.inflate(parent.getContext(),
					android.R.layout.simple_list_item_1, null);
		}
		ViewHolder holder = ViewHolder.getHolder(convertView);
		holder.text1.setText(datas.get(position).getTitle());

		return convertView;
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
