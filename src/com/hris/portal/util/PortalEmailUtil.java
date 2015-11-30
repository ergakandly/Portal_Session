package com.hris.portal.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class PortalEmailUtil {

	public static void sendEmail(String emailTo) {
		final String username = "guiphisaki@gmail.com";
		final String password = "emaildummy";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("guiphisaki@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
			message.setSubject("Password Reset");
			message.setText("Hi Dear,"
				+ "\n\n Forgot your password?");

			Transport.send(message);
			System.out.println("COBA1 - Send Email.");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
	
}
