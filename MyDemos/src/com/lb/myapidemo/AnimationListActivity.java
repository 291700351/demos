package com.lb.myapidemo;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;

import com.twotoasters.jazzylistview.JazzyListView;
import com.twotoasters.jazzylistview.effects.CardsEffect;
import com.twotoasters.jazzylistview.effects.CurlEffect;
import com.twotoasters.jazzylistview.effects.FadeEffect;
import com.twotoasters.jazzylistview.effects.FanEffect;
import com.twotoasters.jazzylistview.effects.FlipEffect;
import com.twotoasters.jazzylistview.effects.FlyEffect;
import com.twotoasters.jazzylistview.effects.GrowEffect;
import com.twotoasters.jazzylistview.effects.HelixEffect;
import com.twotoasters.jazzylistview.effects.ReverseFlyEffect;
import com.twotoasters.jazzylistview.effects.SlideInEffect;
import com.twotoasters.jazzylistview.effects.StandardEffect;
import com.twotoasters.jazzylistview.effects.TiltEffect;
import com.twotoasters.jazzylistview.effects.TwirlEffect;
import com.twotoasters.jazzylistview.effects.WaveEffect;
import com.twotoasters.jazzylistview.effects.ZipperEffect;

//	RecyclerView使用方法
//	1.RecyclerView recyclerView = (RecyclerView) findViewById(R.id.list);
//
//	2.recyclerView.setOnScrollListener(new JazzyRecyclerViewScrollListener());
//
//	3.recyclerView.setTransitionEffect(new SlideInEffect());
/**
 * ListView、RecyclerView的动画效果的activity com.lb.myapidemo.AnimationListActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-10 下午6:22:53
 */
public class AnimationListActivity extends Activity {

	private JazzyListView listview;// 带动画的listview
	private Button btn;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_animationlist);

		findView();

		setListener();

		setData();

	}

	/**
	 * 初始化界面中的控件
	 */
	private void findView() {
		listview = (JazzyListView) findViewById(R.id.list);
		btn = (Button) findViewById(R.id.btn);
	}

	/**
	 * 给界面中的控件设置监听
	 */
	private void setListener() {
		btn.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// 点击按钮弹出对话框选择listview动画效果
				AlertDialog.Builder builder = new AlertDialog.Builder(
						AnimationListActivity.this);
				builder.setTitle("选择一个ListView的动画效果");

				// 指定下拉列表的显示数据
				final String[] effects = { "0 CardsEffect", "1 CurlEffect",
						"2 FadeEffect", "3 FanEffect", "4 FlipEffect",
						"5 FlyEffect", "6 GrowEffect", "7 HelixEffect",
						"8 ReverseFlyEffect", "9 SlideInEffect",
						"10 StandardEffect", "11 TiltEffect", "12 TwirlEffect",
						"13 WaveEffect", "14 ZipperEffect" };
				// 设置一个下拉的列表选择项
				builder.setItems(effects,
						new DialogInterface.OnClickListener() {
							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								switch (which) {
								case 0:
									listview.setTransitionEffect(new CardsEffect());
									break;
								case 1:
									listview.setTransitionEffect(new CurlEffect());
									break;
								case 2:
									listview.setTransitionEffect(new FadeEffect());
									break;
								case 3:
									listview.setTransitionEffect(new FanEffect());
									break;
								case 4:
									listview.setTransitionEffect(new FlipEffect());
									break;
								case 5:
									listview.setTransitionEffect(new FlyEffect());
									break;
								case 6:
									listview.setTransitionEffect(new GrowEffect());
									break;
								case 7:
									listview.setTransitionEffect(new HelixEffect());
									break;
								case 8:
									listview.setTransitionEffect(new ReverseFlyEffect());
									break;
								case 9:
									listview.setTransitionEffect(new SlideInEffect());
									break;
								case 10:
									listview.setTransitionEffect(new StandardEffect());
									break;
								case 11:
									listview.setTransitionEffect(new TiltEffect());
									break;
								case 12:
									listview.setTransitionEffect(new TwirlEffect());
									break;
								case 13:
									listview.setTransitionEffect(new WaveEffect());
									break;
								case 14:
									listview.setTransitionEffect(new ZipperEffect());
									break;

								}
								setTitle("选择了" + effects[which] + "效果");

							}
						});
				builder.show();

			}
		});
	}

	/**
	 * 给界面中的控件设置数据显示
	 */
	private void setData() {
		// 设置动画效果
		// listview.setTransitionEffect(new SlideInEffect());
		listview.setTransitionEffect(new CardsEffect());
		MyAdaoter adapter = new MyAdaoter();
		listview.setAdapter(adapter);
		setTitle("选择了1 CardsEffect效果");

	}

	private final class MyAdaoter extends BaseAdapter {

		@Override
		public int getCount() {
			return 100;
		}

		@Override
		public Object getItem(int position) {
			return null;
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (convertView == null) {
				convertView = View.inflate(AnimationListActivity.this,
						R.layout.item_animationlist, null);
			}
			ViewHolder holder = ViewHolder.getHolder(convertView);
			holder.tv.setText("数据" + position);
			return convertView;
		}
	}

	private final static class ViewHolder {

		private TextView tv;

		private ViewHolder(View view) {
			tv = (TextView) view.findViewById(R.id.tv);

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
