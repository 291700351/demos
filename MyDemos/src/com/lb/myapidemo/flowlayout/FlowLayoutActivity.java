package com.lb.myapidemo.flowlayout;

import java.util.ArrayList;

import com.lb.myapidemo.flowlayout.view.FlowLayoutView;

import android.R.color;
import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.widget.ScrollView;
import android.widget.TextView;

/**
 * 动态添加TextView标签
 * 
 * @author xiaofuweng
 * 
 */
public class FlowLayoutActivity extends Activity {

	public static final String[] tags = new String[] { "宋江", "卢俊义", "吴用",
			"公孙胜", "关胜", "林冲", "秦明", "呼延灼", "花荣", "柴进", "李应", "朱仝", "鲁智深",
			"武松", "董平", "张清", "杨志", "徐宁", "索超", "戴宗", "刘唐", "李逵", "史进", "穆弘",
			"雷横", "李俊", "阮小二", "张横", "阮小五", " 张顺", "阮小七", "杨雄", "石秀", "解珍",
			" 解宝", "燕青", "朱武", "黄信", "孙立", "宣赞", "郝思文", "韩滔", "彭玘", "单廷珪",
			"魏定国", "萧让", "裴宣", "欧鹏", "邓飞", " 燕顺", "杨林", "凌振", "蒋敬", "吕方",
			"郭 盛", "安道全", "皇甫端", "王英", "扈三娘", "鲍旭", "樊瑞", "孔明", "孔亮", "项充",
			"李衮", "金大坚", "马麟", "童威", "童猛", "孟康", "侯健", "陈达", "杨春", "郑天寿",
			"陶宗旺", "宋清", "乐和", "龚旺", "丁得孙", "穆春", "曹正", "宋万", "杜迁", "薛永", "施恩",
			"周通", "李忠", "杜兴", "汤隆", "邹渊", "邹润", "朱富", "朱贵", "蔡福", "蔡庆", "李立",
			"李云", "焦挺", "石勇", "孙新", "顾大嫂", "张青", "孙二娘", " 王定六", "郁保四", "白胜",
			"时迁", "段景柱" };
	private FlowLayoutView flowLayout;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		ScrollView scrollView = new ScrollView(this);

		flowLayout = new FlowLayoutView(this);
		flowLayout.setPadding(10, 10, 10, 10);
		scrollView.addView(flowLayout);
		initTagView();

		setContentView(scrollView);

	}

	private void initTagView() {
		for (int i = 0; i < tags.length; i++) {
			TextView textView = new TextView(this);
			textView.setText(tags[i]);// 设置文本
			textView.setGravity(Gravity.CENTER);// 设置居中
			textView.setPadding(10, 5, 10, 5);// 设置上下左右的padding值
			textView.setBackgroundColor(Color.RED);// 设置背景颜色
			textView.setTextColor(Color.WHITE);// 设置文本颜色
			textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);// 设置文本大小
			flowLayout.addView(textView);// 添加进自定义viewgroup
		}

	}

}
