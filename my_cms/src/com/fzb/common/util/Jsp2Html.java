package com.fzb.common.util;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/**
 * 将信息发布为静态页面
 * 
 * @author xchun
 * 
 */

public class Jsp2Html {
	/**
	 * 将信息转化为静态html
	 * 
	 * @param sSourceUrl
	 *            动态信息访问URL
	 * @param sDestDir
	 *            存储为静态文件的目录
	 * @param sHtmlFile
	 *            生成的静态文件名,可以按信息的唯一ID+.html命名
	 * @throws IOException
	 */
	
	public static void convert2Html(String sSourceUrl, File file) throws IOException {
		int HttpResult;
		URL url = new URL(sSourceUrl);
		
		URLConnection urlconn = url.openConnection();
		urlconn.connect();
		HttpURLConnection httpconn = (HttpURLConnection) urlconn;
		HttpResult = httpconn.getResponseCode();
		if (HttpResult != HttpURLConnection.HTTP_OK) {
			
		} else {
			InputStream in = urlconn.getInputStream(); 
			if(!file.getParentFile().exists()){
				file.getParentFile().mkdirs();
			}
			FileOutputStream fout =new FileOutputStream(file);
			byte temp[]=new byte[1024];
			Integer length=0;
			while ((length = in.read(temp)) != -1) {
				fout.write(temp,0,length);
			}
			in.close();
			fout.close();
		}
	}

}