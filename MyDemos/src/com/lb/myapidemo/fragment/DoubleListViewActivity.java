package com.lb.myapidemo.fragment;

import java.util.ArrayList;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

import com.lb.myapidemo.R;
import com.lb.myapidemo.fragment.adapter.LeftAdapter;
import com.lb.myapidemo.fragment.adapter.RightAdapter;
import com.lb.myapidemo.fragment.domain.LeftBean;
import com.lb.myapidemo.fragment.domain.RightBean;

public class DoubleListViewActivity extends Activity {

	private ListView lv_left;// 左侧的listView
	private ListView lv_right;// 右侧的listView
	private ArrayList<LeftBean> leftDatas;
	private ArrayList<RightBean> rightDatas;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 模拟数据
		leftDatas = new ArrayList<LeftBean>();
		rightDatas = new ArrayList<RightBean>();
		LeftBean leftBean = null;
		for (int i = 1; i <= 20; i++) {
			// 左侧数据
			leftBean = new LeftBean();
			String left = "item" + i;
			leftBean.setTitle(left);
			ArrayList<RightBean> list = new ArrayList<RightBean>();
			RightBean rightBean = null;
			for (int j = 1; j <= 30; j++) {
				rightBean = new RightBean();
				if (j == 1) {
					// 创建一个标题对象
					rightBean.setType(0);
					rightBean.setData(left);
					list.add(rightBean);
					// 添加数据
					RightBean bean = new RightBean();
					bean.setType(1);
					bean.setData(left + "---data" + j);
					list.add(bean);
				} else {
					rightBean.setType(1);
					rightBean.setData(left + "---data" + j);
					list.add(rightBean);
				}
			}
			leftBean.setList(list);
			leftDatas.add(leftBean);
		}

		this.setContentView(R.layout.activity_double_listview);

		findView();

		setListener();

		setData();

	}

	/**
	 * 初始化控件
	 */
	private void findView() {
		lv_left = (ListView) findViewById(R.id.lv_left);
		lv_right = (ListView) findViewById(R.id.lv_right);

	}

	/**
	 * 设置控件监听
	 */
	private void setListener() {
		// 设置左边的点击事件
		lv_left.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				int itemNum = 0;
				for (int i = 0; i < position; i++) {
					ArrayList<RightBean> list = leftDatas.get(i).getList();
					itemNum += list.size();
				}

				lv_right.setSelection(itemNum);

			}
		});

	}

	/**
	 * 设置数据
	 */
	private void setData() {
		lv_left.setAdapter(new LeftAdapter(leftDatas));
		for (int i = 0; i < leftDatas.size(); i++) {
			ArrayList<RightBean> list = leftDatas.get(i).getList();
			rightDatas.addAll(list);
		}
		lv_right.setAdapter(new RightAdapter(rightDatas));

	}

}
