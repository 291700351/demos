package com.lb.myapidemo.selector;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

import com.lb.myapidemo.R;

/**
 * 王景旭的按钮选择器的Demo com.lb.myapidemo.selector.SelectorActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-11 上午9:27:30
 */
public class SelectorActivity extends Activity {

	private Button btn;

	private boolean canSign;// 用于判断用户是否可以进行签到

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_selector);
		// 界面初始化请求服务器 ，获取用户是否已经签到
		canSign = true;

		btn = (Button) findViewById(R.id.btn);
		// 根据是否可以签到初始化按钮的状态
		btn.setEnabled(canSign);
		if (canSign) {
			btn.setText("签到");
		} else {
			btn.setText("已签到");
		}

		btn.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if (canSign) {
					btn.setText("已签到");
					canSign = false;// 签到之后设置用户不能签到
					btn.setEnabled(canSign);
					Toast.makeText(SelectorActivity.this, "签到成功",
							Toast.LENGTH_SHORT).show();
				}
			}
		});
	}

}
