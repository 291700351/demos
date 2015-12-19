package com.lb.myapidemo.js;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;

import com.lb.myapidemo.R;
import com.lb.myapidemo.utils.LogUtil;

/**
 * js调用java代码<br/>
 * com.lb.myapidemo.js.WebViewWithJsActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-17 上午9:51:38
 */
public class WebViewWithJsActivity extends Activity {

	private WebView mWebView;
	private Button btnShowInfo;
	private JSKit js;
	private Handler mHandler = new Handler();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_webviewwithjs);
		// 初始化控件
		mWebView = (WebView) findViewById(R.id.webview);
		btnShowInfo = (Button) findViewById(R.id.btn_showmsg);
		// 实例化js对象
		js = new JSKit();
		// 设置参数
		mWebView.getSettings().setBuiltInZoomControls(true);
		// 内容的渲染需要webviewChromClient去实现，设置webviewChromClient基类，解决js中alert不弹出的问题和其他内容渲染问题
		mWebView.setWebChromeClient(new WebChromeClient());
		mWebView.getSettings().setJavaScriptEnabled(true);
		// 把js绑定到全局的myjs上，myjs的作用域是全局的，初始化后可随处使用
		mWebView.addJavascriptInterface(js, "myjs");

		mWebView.loadUrl("http://192.168.1.28:8080/test.html");

		btnShowInfo.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				mHandler.post(new Runnable() {
					@Override
					public void run() {
						// 调用 HTML 中的javaScript 函数
						mWebView.loadUrl("javascript:showMsg()");
					}
				});
			}
		});
	}

	class JSKit {

		public void showMsg() {
			// Toast.makeText(ma, msg, Toast.LENGTH_SHORT).show();
			LogUtil.e(this, "hahaha");
		}
		public void showMsgInAndroid() {
			// Toast.makeText(ma, msg, Toast.LENGTH_SHORT).show();
			LogUtil.e(this, "hahaha");
		}
	}

}
