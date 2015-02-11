package com.fzb.common.util;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Mail {
	private String displayName;
	private String to;
	private String from;
	private String smtpServer;
	private String username;
	private String password;
	private String subject;
	private String content;
	private boolean ifAuth;
	private String filename = "";
	private Integer port;
	private Vector file = new Vector();

	public String getDisplayName() {
		return this.displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getTo() {
		return this.to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getFrom() {
		return this.from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getSmtpServer() {
		return this.smtpServer;
	}

	public void setSmtpServer(String smtpServer) {
		this.smtpServer = smtpServer;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boolean isIfAuth() {
		return this.ifAuth;
	}

	public void setIfAuth(boolean ifAuth) {
		this.ifAuth = ifAuth;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Vector getFile() {
		return this.file;
	}

	public void setFile(Vector file) {
		this.file = file;
	}

	public Mail(Map<String, Object> webSite, String mailTemplate,String append, String title) {
		this.displayName = ((String) webSite.get("mail_displayName"));
		this.to = (String) webSite.get("mail_to");
		this.from = ((String) webSite.get("mail_from"));
		this.smtpServer = ((String) webSite.get("mail_smtpServer"));
		this.username = ((String) webSite.get("mail_userName"));
		this.password = ((String) webSite.get("mail_password"));
		/*String content = ((String) webSite.get("mail_mailTemplate_"
				+ mailTemplate)).replace("{append}", append);
		content = content.replace("{userMail}", to);*/
		String content="dsafsafdsaf";
		this.subject = title;
		this.content = content;
		this.ifAuth = true;
		this.port = Integer.valueOf(25);
	}

	public Mail(String displayName, String to, String from, String smtpServer,
			String username, String password, String subject, String content,
			boolean ifAuth, String filename, Vector file) {
		this.displayName = displayName;
		this.to = to;
		this.from = from;
		this.smtpServer = smtpServer;
		this.username = username;
		this.password = password;
		this.subject = subject;
		this.content = content;
		this.ifAuth = ifAuth;
		this.filename = filename;
		this.file = file;
		this.port = Integer.valueOf(25);
	}

	public Mail() {
		
	}

	public static void main(String[] args) {
		Mail mail = new Mail("小春", "504008147@qq.com", "forum4j@163.com",
				"smtp.163.com", "forum4j", "wozcc94", "标题", "内容", true, "小春",
				new Vector());
		mail.sendMail();
	}

	public static void simpleEmail() {
		Mail mail = new Mail("小春", "504008147@qq.com", "wzfz94264@163.com",
				"smtp.163.com", "wozcc94264", "wzfz94264", "标题", "内容", true,
				"小春", new Vector());
		mail.sendMail();
	}

	public Map<String, String> sendMail() {
		Map map = new HashMap();
		map.put("status", "ok");
		Session session = null;

		Properties prop = System.getProperties();
		prop.put("mail.smtp.host", this.smtpServer);
		if (this.ifAuth) {
			prop.put("mail.smtp.auth", "true");
			prop.put("mail.smtp.port", this.port);

			SmtpAuth smtpAuth = new SmtpAuth(this.username, this.password);
			session = Session.getDefaultInstance(prop, smtpAuth);
		} else {
			prop.put("mail.smtp.auth", "false");
			session = Session.getDefaultInstance(prop, null);
		}
		session.setDebug(true);
		Transport tran = null;
		Message message = new MimeMessage(session);
		try {
			Address address = new InternetAddress(this.from, this.displayName);
			message.setFrom(address);
			InternetAddress[] addressto = { new InternetAddress(this.to) };
			message.setRecipients(Message.RecipientType.TO, addressto);
			message.setSubject(this.subject);
			Multipart mp = new MimeMultipart();
			MimeBodyPart mbp = new MimeBodyPart();
			mbp.setContent(this.content, "text/html;charset=utf-8");
			mp.addBodyPart(mbp);
			message.setContent(mp);
			message.setSentDate(new Date());
			message.saveChanges();
			tran = session.getTransport("smtp");
			tran.connect(this.smtpServer, this.username, this.password);
			tran.sendMessage(message, message.getAllRecipients());
			tran.close();
		} catch (AddressException e) {
			map.put("status", "failed");
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			map.put("status", "failed");
			e.printStackTrace();
		} catch (MessagingException e) {
			map.put("status", "failed");
			e.printStackTrace();
		}
		return map;
	}
}
