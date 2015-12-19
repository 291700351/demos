package com.lb.myapidemo.lock;

import android.app.Activity;
import android.os.Bundle;

import com.lb.myapidemo.R;

/**
 * 手势解锁的activity<br/>
 * com.lb.myapidemo.lock.GesturesLockActivity
 * 
 * @author IceLee <br/>
 *         create at 2015-12-14 下午4:38:02
 */
public class GesturesLockActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_gestureslock);
	}

}
