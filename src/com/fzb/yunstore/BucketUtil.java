package com.fzb.yunstore;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class BucketUtil {

	private static Map<String,Object[]> CACHEMAP=new HashMap<String, Object[]>();
	
	public static String getAccessKeyByBN(String becketName,String storePro){
		if(CACHEMAP.get(storePro)==null){
			putCache(becketName, storePro);
		}
		return CACHEMAP.get(storePro)[0].toString();
	}
	
	public static void putCache(String becketName,String storePro){
		Properties prop=new Properties();
		try {
			prop.load(BucketUtil.class.getResourceAsStream("/"+storePro+"_"+becketName+".properties"));
			CACHEMAP.put(storePro,new Object[]{prop.get("ACCESS_KEY"),prop.get("SECRET_KEY"),prop.get("HOST")});
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static String getSecretKeyByBN(String becketName,String storePro){
		if(CACHEMAP.get(storePro)==null){
			putCache(becketName, storePro);
		}
		return CACHEMAP.get(storePro)[1].toString();
	}
	
	public static String getHostByBN(String becketName,String storePro){
		if(CACHEMAP.get(storePro)==null){
			putCache(becketName, storePro);
		}
		return CACHEMAP.get(storePro)[2].toString();
	}
}
