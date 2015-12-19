package com.lb.myapidemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;

/**
 * 程序的路口类
 * 
 * @author xiaofuweng
 * 
 */
public class MainActivity extends Activity {

	private String[] demoNames;//存放所有例子名字的数组
	private ListView listview;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		demoNames = getResources().getStringArray(R.array.demos_name);

		findView();

		setListener();

		setData();
	}

	/**
	 * 初始化界面中的控件
	 */
	private void findView() {
		listview = (ListView) findViewById(R.id.listview);
	}

	/**
	 * 给界面中的控件设置监听
	 */
	private void setListener() {
		// 设置ListView的条目点击事件
		listview.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				// 使用隐式意图打开相对应的Activity
				Intent intent = new Intent();
				// 设置隐式意图的动作 通过包名加条目位置
				String packageName = getPackageName();
				String action = packageName + "." + position;
				intent.setAction(action);
				intent.addCategory("android.intent.category.DEFAULT");
				startActivity(intent);
			}
		});

	}

	/**
	 * 给界面中红的控件设置数据显示
	 */
	private void setData() {
		// 设置ListView的adapter
		ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,
				R.layout.item_main_list, R.id.textview, demoNames);
		listview.setAdapter(adapter);
	}

}
