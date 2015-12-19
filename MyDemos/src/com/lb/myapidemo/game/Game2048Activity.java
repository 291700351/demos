package com.lb.myapidemo.game;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import com.lb.myapidemo.R;
import com.lb.myapidemo.game.view.CardLayout;

public class Game2048Activity extends Activity {

	private Button btn_start;// 开始按钮
	private CardLayout gameView;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		setContentView(R.layout.activity_game2048);

		findView();

		setListener();

		setData();

	}

	/**
	 * 初始化控件
	 */
	private void findView() {
		btn_start = (Button) findViewById(R.id.btn_start);
		gameView = (CardLayout) findViewById(R.id.gameView);

	}

	/**
	 * 设置监听
	 */
	private void setListener() {
		btn_start.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// 每次点击开始按钮都是先清除界面所有 在创建两个Card
				gameView.clean();
				gameView.createRandomCard();
				gameView.createRandomCard();

			}
		});
	}

	/**
	 * 设置数据
	 */
	private void setData() {
	}
}
