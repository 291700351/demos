package com.lb.myapidemo.wechatshare;

import android.annotation.SuppressLint;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 进行MD5加密的工具类
 * 
 * @author xiaofuweng
 * 
 */
public class MD5Utils {
	/**
	 * 将字符串进行MD5加密
	 * 
	 * @param str
	 * @return
	 */
	@SuppressLint("DefaultLocale")
	public static String digestPassWord(String str) {
		StringBuilder sb = new StringBuilder();
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			byte[] digest = messageDigest.digest(str.getBytes());
			for (int i = 0; i < digest.length; i++) {
				int result = digest[i] & 0xff;
				// String hexString = Integer.toHexString(result)+1;
				String hexString = Integer.toHexString(result);
//				if (i==0) {
//					hexString = hexString.toUpperCase();
//				}
				if (hexString.length() < 2) {
					sb.append("0");
				}
				sb.append(hexString);
			}
			return sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
}
