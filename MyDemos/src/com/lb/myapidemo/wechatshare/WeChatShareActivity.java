package com.lb.myapidemo.wechatshare;

import java.util.HashMap;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

import com.lb.myapidemo.R;
import com.lb.myapidemo.utils.LogUtil;

/**
 * 微信分享的SDK的Demo com.lb.myapidemo.wechatshare.WeChatShareActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-11 上午9:58:21
 */
public class WeChatShareActivity extends Activity implements OnClickListener {
	private Button btn_share;// 微信分享按钮

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		setContentView(R.layout.activity_wechat);
		setTitle("微信分享SDK接入");

		findView();

		setListener();

		setData();

	}

	/**
	 * 初始化界面中的控件
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
	 * 给界面中的控件设置数据
	 */
	private void setData() {

	}

	/**
	 * 点击事件的处理
	 */
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_share:
			CommonUtil.showShare(this, "艺点理财", "艺点理财分享送现金", null, null,
					new PlatformActionListener() {

						@Override
						public void onError(Platform arg0, int arg1,
								Throwable arg2) {
							LogUtil.e(this, arg2);

						}

						@Override
						public void onComplete(Platform arg0, int arg1,
								HashMap<String, Object> arg2) {
							// TODO Auto-generated method stub

						}

						@Override
						public void onCancel(Platform arg0, int arg1) {
							// TODO Auto-generated method stub

						}
					});
			break;
		}
	}

}
