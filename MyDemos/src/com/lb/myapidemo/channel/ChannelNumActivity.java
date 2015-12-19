package com.lb.myapidemo.channel;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

import com.lb.myapidemo.R;

/**
 * 获取渠道号的Activity
 * 
 * @author xiaofuweng
 * 
 */
public class ChannelNumActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_channel);
		Button btn = (Button) findViewById(R.id.btn);
		final TextView textview = (TextView) findViewById(R.id.textview);

		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				String channel = getChannel(ChannelNumActivity.this);
				textview.setText("渠道号是：：：" + channel);
				/**
				 * 获取渠道号之后，请求服务器的时候就可以把渠道号传递给服务器了 <br/>
				 * <br/>
				 * 我打包的时候没有使用工具，毕竟我才11包，没多少 我是每打包一次就修改一下清单文件里面的渠道号的value
				 */
			}
		});
	}

	/**
	 * 获取android的渠道号的方法<br/>
	 * 
	 * @param context
	 * @return
	 */
	private String getChannel(Context context) {
		try {
			PackageManager pm = context.getPackageManager();
			ApplicationInfo appInfo = pm.getApplicationInfo(
					context.getPackageName(), PackageManager.GET_META_DATA);

			// 下面的方法的参数需要和清单文件里面配置的一样=======>android:name="channel"
			String channel = appInfo.metaData.getString("channel");

			return channel;
		} catch (PackageManager.NameNotFoundException ignored) {
			return "";
		}

	}
}
