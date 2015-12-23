package com.lb.myapidemo.explosion;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;

import com.lb.libexplosion.view.ExplosionField;
import com.lb.myapidemo.R;

public class ExplosionActivity extends Activity {

	private ExplosionField mExplosionField;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_explosion);
		mExplosionField = ExplosionField.attach2Window(this);
		addListener(findViewById(R.id.root));

	}

	/**
	 * 为root中除了ViewGroup的控件都添加点击事件，点击后执行爆炸效果
	 * 
	 * @param root
	 */
	private void addListener(View root) {
		if (root instanceof ViewGroup) {
			ViewGroup parent = (ViewGroup) root;
			for (int i = 0; i < parent.getChildCount(); i++) {
				addListener(parent.getChildAt(i));
			}
		} else {
			root.setClickable(true);
			root.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					mExplosionField.explode(v);
					v.setOnClickListener(null);
				}
			});
		}
	}

	public void click(View v) {
		View root = findViewById(R.id.root);
		reset(root);
		addListener(root);
		mExplosionField.clear();

	}

	@SuppressLint("NewApi")
	private void reset(View root) {

		if (root instanceof ViewGroup) {
			ViewGroup parent = (ViewGroup) root;
			for (int i = 0; i < parent.getChildCount(); i++) {
				reset(parent.getChildAt(i));
			}
		} else {
			root.setScaleX(1);
			root.setScaleY(1);
			root.setAlpha(1);
		}
	}
}