package com.fzb.yunstore;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import net.sf.jmimemagic.Magic;
import net.sf.jmimemagic.MagicException;
import net.sf.jmimemagic.MagicMatch;
import net.sf.jmimemagic.MagicMatchNotFoundException;
import net.sf.jmimemagic.MagicMatcher;
import net.sf.jmimemagic.MagicParseException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.baidu.inf.iis.bcs.BaiduBCS;
import com.baidu.inf.iis.bcs.auth.BCSCredentials;
import com.baidu.inf.iis.bcs.auth.BCSSignCondition;
import com.baidu.inf.iis.bcs.http.HttpMethodName;
import com.baidu.inf.iis.bcs.model.BCSClientException;
import com.baidu.inf.iis.bcs.model.BCSServiceException;
import com.baidu.inf.iis.bcs.model.BucketSummary;
import com.baidu.inf.iis.bcs.model.Empty;
import com.baidu.inf.iis.bcs.model.ObjectListing;
import com.baidu.inf.iis.bcs.model.ObjectMetadata;
import com.baidu.inf.iis.bcs.model.ObjectSummary;
import com.baidu.inf.iis.bcs.model.Resource;
import com.baidu.inf.iis.bcs.model.SuperfileSubObject;
import com.baidu.inf.iis.bcs.model.X_BS_ACL;
import com.baidu.inf.iis.bcs.policy.Policy;
import com.baidu.inf.iis.bcs.policy.PolicyAction;
import com.baidu.inf.iis.bcs.policy.PolicyEffect;
import com.baidu.inf.iis.bcs.policy.Statement;
import com.baidu.inf.iis.bcs.request.CreateBucketRequest;
import com.baidu.inf.iis.bcs.request.GenerateUrlRequest;
import com.baidu.inf.iis.bcs.request.GetObjectRequest;
import com.baidu.inf.iis.bcs.request.ListBucketRequest;
import com.baidu.inf.iis.bcs.request.ListObjectRequest;
import com.baidu.inf.iis.bcs.request.PutObjectRequest;
import com.baidu.inf.iis.bcs.request.PutSuperfileRequest;
import com.baidu.inf.iis.bcs.response.BaiduBCSResponse;

@SuppressWarnings("unused")
public class BcsUtil {
	private static final Log log = LogFactory.getLog(BcsUtil.class);
	// ----------------------------------------
	static String host = "bcs.duapp.com";
	static String accessKey = "28bab5b6bcd56edbbb5638b9b6684398";
	static String secretKey = "2de700f6a71dbdc9e79d5230c869c59d";
	static String bucket = "a94fzb";
	// ----------------------------------------
	static String object = "/5.txt";
	static File destFile = new File("D:/QQ截图20141128105607.png");
	private String fileName;
	private String storePath;
	private String ubucket;
	/**
	 * @param args
	 * @throws URISyntaxException
	 * @throws IOException
	 */
	public BcsUtil(String fileName,String storePath,String ubucket)
	{
		this.setUbucket(ubucket);
		this.storePath=storePath;
		this.fileName=fileName;
	}
	public BcsUtil(){
		
	}
	
	public static void main(String[] args) throws URISyntaxException, IOException {
		BCSCredentials credentials = new BCSCredentials(accessKey, secretKey);
		BaiduBCS baiduBCS = new BaiduBCS(credentials, host);
		// baiduBCS.setDefaultEncoding("GBK");
		baiduBCS.setDefaultEncoding("UTF-8"); // Default UTF-8
		try {
 
			// -------------bucket-------------
			//listBucket(baiduBCS);
			
			// createBucket(baiduBCS);
			//deleteBucket(baiduBCS);
			//getBucketPolicy(baiduBCS);
			//putBucketPolicyByPolicy(baiduBCS);
			//putBucketPolicyByX_BS_ACL(baiduBCS, X_BS_ACL.PublicControl);
			//listObject(baiduBCS);
			// ------------object-------------
			InputStream in=new FileInputStream(destFile);
			// getObjectWithDestFile(baiduBCS);
			//putSuperfile(baiduBCS);
			//deleteObject(baiduBCS);
			// getObjectMetadata(baiduBCS);
			// setObjectMetadata(baiduBCS);
			// copyObject(baiduBCS, bucket, object + "_copy" +
			// (System.currentTimeMillis()));
			//getObjectPolicy(baiduBCS);
			// putObjectPolicyByPolicy(baiduBCS);
			// putObjectPolicyByX_BS_ACL(baiduBCS, X_BS_ACL.PublicControl);

			// ------------common------------------
			//generateUrl(baiduBCS);
			new BcsUtil("D:/QQ截图20141128105607.png", "/aaa.png", "a94fzb").putObjectByInputStreamAndGetRequestURL(in);
			// putObjectByInputStreamAndGetRequestURL()
		} catch (BCSServiceException e) {
			log.warn("Bcs return:" + e.getBcsErrorCode() + ", " + e.getBcsErrorMessage() + ", RequestId=" + e.getRequestId());
		} catch (BCSClientException e) {
			e.printStackTrace();
		}
	}

	public static void generateUrl(BaiduBCS baiduBCS) {
		GenerateUrlRequest generateUrlRequest = new GenerateUrlRequest(HttpMethodName.GET, bucket, object);
		generateUrlRequest.setBcsSignCondition(new BCSSignCondition());
		System.out.println(baiduBCS.generateUrl(generateUrlRequest));
	}

	public static void copyObject(BaiduBCS baiduBCS, String destBucket, String destObject) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType("image/jpeg");
		baiduBCS.copyObject(new Resource(bucket, object), new Resource(destBucket, destObject), objectMetadata);
		baiduBCS.copyObject(new Resource(bucket, object), new Resource(destBucket, destObject), null);
		baiduBCS.copyObject(new Resource(bucket, object), new Resource(destBucket, destObject));
	}

	private static void createBucket(BaiduBCS baiduBCS) {
		// baiduBCS.createBucket(bucket);
		for(int i=2;i<=20;i++)
		{
			baiduBCS.createBucket(new CreateBucketRequest("a94fzb"+i, X_BS_ACL.PublicRead));
			
		}
	}

	private static void deleteBucket(BaiduBCS baiduBCS) {
		for(int i=2;i<20;i++)
		{
			baiduBCS.deleteBucket("a94fzb"+i);
			
		}
	}

	public static void deleteObject(BaiduBCS baiduBCS) {
		Empty result = baiduBCS.deleteObject(bucket, object).getResult();
		log.info(result);
	}

	private static void getBucketPolicy(BaiduBCS baiduBCS) {
		BaiduBCSResponse<Policy> response = baiduBCS.getBucketPolicy(bucket);
		System.out.println(response.getResult().getOriginalJsonStr());
		log.info("After analyze: " + response.getResult().toJson());
		log.info("Origianal str: " + response.getResult().getOriginalJsonStr());
	}

	public static void getObjectMetadata(BaiduBCS baiduBCS) {
		ObjectMetadata objectMetadata = baiduBCS.getObjectMetadata(bucket, object).getResult();
		log.info(objectMetadata);
	}

	private static void getObjectPolicy(BaiduBCS baiduBCS) {
		BaiduBCSResponse<Policy> response = baiduBCS.getObjectPolicy(bucket, object);
		log.info("After analyze: " + response.getResult().toJson());
		log.info("Origianal str: " + response.getResult().getOriginalJsonStr());
	}

	private static void getObjectWithDestFile(BaiduBCS baiduBCS) {
		GetObjectRequest getObjectRequest = new GetObjectRequest(bucket, object);
		System.out.println(baiduBCS.getObject(getObjectRequest, destFile)+"xx");
	}

	private static void listBucket(BaiduBCS baiduBCS) {
		ListBucketRequest listBucketRequest = new ListBucketRequest();
		BaiduBCSResponse<List<BucketSummary>> response = baiduBCS.listBucket(listBucketRequest);
		for (BucketSummary bucket : response.getResult()) {
			log.info(bucket);
		}
	}

	private static void listObject(BaiduBCS baiduBCS) {
		ListObjectRequest listObjectRequest = new ListObjectRequest(bucket);
		listObjectRequest.setStart(0);
		listObjectRequest.setLimit(20);
		// ------------------by dir
		{
			// prefix must start with '/' and end with '/'
			// listObjectRequest.setPrefix("/1/");
			// listObjectRequest.setListModel(2);
		}
		// ------------------only object
		{
			// prefix must start with '/'
			// listObjectRequest.setPrefix("/1/");
		}
		BaiduBCSResponse<ObjectListing> response = baiduBCS.listObject(listObjectRequest);
		log.info("we get [" + response.getResult().getObjectSummaries().size() + "] object record.");
		for (ObjectSummary os : response.getResult().getObjectSummaries()) {
			log.info(os.toString());
		}
		
	}

	private static void putBucketPolicyByPolicy(BaiduBCS baiduBCS) {
		Policy policy = new Policy();
		Statement st1 = new Statement();
		st1.addAction(PolicyAction.all).addAction(PolicyAction.get_object);
		st1.addUser("zhengkan").addUser("zhangyong01");
		st1.addResource(bucket + "/111").addResource(bucket + "/111");
		st1.setEffect(PolicyEffect.allow);
		policy.addStatements(st1);
		baiduBCS.putBucketPolicy(bucket, policy);
	}

	private static void putBucketPolicyByX_BS_ACL(BaiduBCS baiduBCS, X_BS_ACL acl) {
		System.out.println(baiduBCS.putBucketPolicy(bucket, acl).getResult());
	}

	public static void putObjectByFile() {
		BCSCredentials credentials = new BCSCredentials(accessKey, secretKey);
		BaiduBCS baiduBCS = new BaiduBCS(credentials, host);
		// baiduBCS.setDefaultEncoding("GBK");
		baiduBCS.setDefaultEncoding("UTF-8"); // Default UTF-8
		PutObjectRequest request = new PutObjectRequest(bucket, object, createSampleFile());
		
		ObjectMetadata metadata = new ObjectMetadata();
		metadata.setContentType("text/html");
		request.setMetadata(metadata);
		BaiduBCSResponse<ObjectMetadata> response = baiduBCS.putObject(request);
		ObjectMetadata objectMetadata = response.getResult();
		log.info("x-bs-request-id: " + response.getRequestId());
		log.info(objectMetadata);
	}

	public String putObjectByInputStreamAndGetRequestURL(InputStream in) throws FileNotFoundException {
		try{
		BCSCredentials credentials = new BCSCredentials(accessKey, secretKey);
		BaiduBCS baiduBCS = new BaiduBCS(credentials, host);
		baiduBCS.setDefaultEncoding("UTF-8"); 
		File file=createSampleFile(in);
		InputStream fileContent = new FileInputStream(file);
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentLength(file.length());
		try {
			
			objectMetadata.setContentType(Magic.getMagicMatch(file, false).getMimeType());
			System.out.println(Magic.getMagicMatch(file, false).getMimeType());
		} catch (MagicParseException e) {
			e.printStackTrace();
		} catch (MagicMatchNotFoundException e) {
			e.printStackTrace();
		} catch (MagicException e) {
			e.printStackTrace();
		}
		PutObjectRequest request = new PutObjectRequest(ubucket, storePath+"/"+fileName, fileContent, objectMetadata);
		ObjectMetadata result = baiduBCS.putObject(request).getResult();
		GenerateUrlRequest generateUrlRequest = new GenerateUrlRequest(HttpMethodName.GET, ubucket,storePath+"/"+fileName);
		generateUrlRequest.setBcsSignCondition(new BCSSignCondition());
		log.info(result);

		return baiduBCS.generateUrl(generateUrlRequest);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	private static void putObjectPolicyByPolicy(BaiduBCS baiduBCS) {
		Policy policy = new Policy();
		Statement st1 = new Statement();
		st1.addAction(PolicyAction.all).addAction(PolicyAction.get_object);
		st1.addUser("zhengkan").addUser("zhangyong01");
		st1.addResource(bucket + object).addResource(bucket + object);
		st1.setEffect(PolicyEffect.allow);
		policy.addStatements(st1);
		baiduBCS.putObjectPolicy(bucket, object, policy);
	}

	private static void putObjectPolicyByX_BS_ACL(BaiduBCS baiduBCS, X_BS_ACL acl) {
		baiduBCS.putObjectPolicy(bucket, object, acl);
	}

	public static void putSuperfile(BaiduBCS baiduBCS) {
		List<SuperfileSubObject> subObjectList = new ArrayList<SuperfileSubObject>();
		// 0
		BaiduBCSResponse<ObjectMetadata> response1 = baiduBCS.putObject(bucket, object + "_part0", createSampleFile());
		subObjectList.add(new SuperfileSubObject(bucket, object + "_part0", response1.getResult().getETag()));
		// 1
		BaiduBCSResponse<ObjectMetadata> response2 = baiduBCS.putObject(bucket, object + "_part1", createSampleFile());
		subObjectList.add(new SuperfileSubObject(bucket, object + "_part1", response2.getResult().getETag()));
		// put superfile
		PutSuperfileRequest request = new PutSuperfileRequest(bucket, object + "_superfile", subObjectList);
		BaiduBCSResponse<ObjectMetadata> response = baiduBCS.putSuperfile(request);
		ObjectMetadata objectMetadata = response.getResult();
		log.info("x-bs-request-id: " + response.getRequestId());
		log.info(objectMetadata);
	}

	public static void setObjectMetadata(BaiduBCS baiduBCS) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType("text/html12");
		baiduBCS.setObjectMetadata(bucket, object, objectMetadata);
	}
	
	private static File createSampleFile() {
		try {
			File file = File.createTempFile("java-sdk-", ".txt");
			file.deleteOnExit();

			Writer writer = new OutputStreamWriter(new FileOutputStream(file));
			InputStream in=new FileInputStream(destFile);
			byte[] b=new byte[1024];
			StringBuffer sb=new StringBuffer();
			while(in.read(b)!=-1)
			{
				sb.append(new String(b));
				b=new byte[1024];
			}
			writer.write(sb.toString());
			writer.close();
			return file;
		} catch (IOException e) {
			log.error("tmp file create failed.");
			return null;
		}
	}
	private static File createSampleFile(InputStream in) {
		try {
			File file = File.createTempFile("java-sdk-", ".txt");
			file.deleteOnExit();
			FileOutputStream writer = new FileOutputStream(file);
			byte[] b=new byte[1];
			StringBuffer sb=new StringBuffer();
			while(in.read(b)!=-1)
			{
				writer.write(b);
				b=new byte[1];
			}
			writer.close();
			in.close();
			return file;
		} catch (IOException e) {
			log.error("tmp file create failed.");
			return null;
		}
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getStorePath() {
		return storePath;
	}
	public void setStorePath(String storePath) {
		this.storePath = storePath;
	}
	public String getUbucket() {
		return ubucket;
	}
	public void setUbucket(String ubucket) {
		this.ubucket = ubucket;
	}
	
}