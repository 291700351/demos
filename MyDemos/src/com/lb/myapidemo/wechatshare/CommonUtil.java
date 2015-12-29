package com.lb.myapidemo.wechatshare;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.os.Environment;
import android.text.TextUtils;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;

import com.lb.myapidemo.R;

public class CommonUtil {
	/**
	 * 开始微信分享
	 * 
	 * @param title
	 *            分享的标题
	 * @param msg
	 *            分享的内容
	 * @param imgUrl
	 *            分享的图片的url地址，如果地址为空，则默认使用应用程序的图标
	 * @param shareUrl
	 *            点击跳转的url连接，不传就跳转至官网
	 * @param callback
	 *            分享之后的接口回调
	 */
	public static void showShare(Context context, String title, String msg,
			String imgUrl, String shareUrl, PlatformActionListener callback) {
		ShareSDK.initSDK(context);
		OnekeyShare oks = new OnekeyShare();
		// 关闭sso授权
		oks.disableSSOWhenAuthorize();

		// 设置标题
		oks.setTitle(title);

		oks.setTitleUrl("https://www.edianlicai.com");
		
		// site是分享此内容的网站名称，仅在QQ空间使用
		oks.setSite("艺典理财");
		// siteUrl是分享此内容的网站地址，仅在QQ空间使用
		oks.setSiteUrl("http://www.baidu.com");
		
		oks.setSilent(true);

		// 设置分享内容
		oks.setText(msg);

		// 设置分享图片
		// 判断图片url是不是为空，为空就设置当前的应用图标
		if (TextUtils.isEmpty(imgUrl)) {
			File rootFile = Environment.getExternalStorageDirectory();
			String fileName = copyImgFromDrawable(context,
					R.drawable.ic_launcher, "ic_launcher");
			File imgFile = new File(rootFile, fileName);
			oks.setImagePath(imgFile.getAbsolutePath());
		} else {
			oks.setImageUrl(imgUrl);
		}

		// 设置分享的点击地址
		if (TextUtils.isEmpty(shareUrl)) {
			oks.setUrl("https://www.edianlicai.com");// 没有传递点击链接就使用默认的官网链接
		} else {
			oks.setUrl(shareUrl);// 分享的连接地址
		}

		// 设置分享之后的回调
		if (null != callback) {
			oks.setCallback(callback);
		}

		// 启动分享GUI
		oks.show(context);

	}

	/**
	 * 通过资源id将drawable目录下的图片复制到内存卡上面
	 * 
	 * @param drawableId
	 *            需要复制的图片的id
	 * @param fileName
	 *            复制到内存卡的文件名,自动将文件名进行MD5加密
	 * 
	 * @return 复制到内存卡之后的文件名
	 */
	private static String copyImgFromDrawable(Context context, int drawableId,
			String fileName) {
		InputStream is;
		try {
			is = context.getResources().openRawResource(drawableId);
		} catch (NotFoundException e1) {
			throw new NotFoundException("Can't find resources from Drawable");
		}

		File rootFile = Environment.getExternalStorageDirectory();

		fileName = MD5Utils.digestPassWord(fileName);

		File imgFile = new File(rootFile, fileName);
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(imgFile);
			byte[] byteArray = toByteArray(is);

			fos.write(byteArray);
			fos.flush();
			return fileName;
		} catch (IOException e) {

		} finally {
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
				}
			}
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
				}
			}
		}
		return "";

	}

	/**
	 * 将一个inputStream转换成字节数组的方法
	 * 
	 * @param input
	 *            需要转换的inoutstream
	 * @return 转换之后的字节数组
	 * @throws IOException
	 */
	public static byte[] toByteArray(InputStream input) throws IOException {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len = 0;
		while (-1 != (len = input.read(buffer))) {
			output.write(buffer, 0, len);
			output.flush();
		}
		byte[] byteArray = output.toByteArray();
		output.close();
		return byteArray;
	}
}
