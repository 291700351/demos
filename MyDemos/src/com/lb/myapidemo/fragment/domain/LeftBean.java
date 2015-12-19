package com.lb.myapidemo.fragment.domain;

import java.util.ArrayList;

public class LeftBean {
	private String title;

	private ArrayList<RightBean> list;

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public ArrayList<RightBean> getList() {
		return this.list;
	}

	public void setList(ArrayList<RightBean> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "LeftBean [title=" + title + ", list=" + list + "]";
	}

}
