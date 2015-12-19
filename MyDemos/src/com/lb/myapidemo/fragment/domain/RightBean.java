package com.lb.myapidemo.fragment.domain;

public class RightBean {

	private String data;

	/** 0是标题 1是内容 */
	private int type;

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getType() {
		return this.type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "RightBean [data=" + data + ", type=" + type + "]";
	}
	
	

}
