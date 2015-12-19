package com.lb.myapidemo.egg;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import com.lb.myapidemo.R;
import com.lb.myapidemo.wechatshare.CommonUtil;

public class SuccessActivity extends Activity implements OnClickListener {
	private Button btn_share;// 分享按钮

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_success);

		findView();

		setListener();

		setData();

	}

	/**
	 * 初始化界面控件
	 */
	private void findView() {
		btn_share = (Button) findViewById(R.id.btn_share);
	}

	/**
	 * 给界面中的控件设置监听事件
	 */
	private void setListener() {
		btn_share.setOnClickListener(this);

	}

	/**
	 * 给控件设置数据显示
	 */
	private void setData() {

	}

	// 点击事件的处理
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_share:
			CommonUtil.showShare(this, "砸金蛋中大奖", "我砸金蛋抽中100元现金红包", null, null,
					null);
			break;
		}
	}

}
