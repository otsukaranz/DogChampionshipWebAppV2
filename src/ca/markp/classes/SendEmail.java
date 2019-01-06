package ca.markp.classes;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

	Properties prop;
	Session mailSession;
	MimeMessage msg;

	public void mailRegisteredOwner(String dogName, String owner, String breed, String group, String gender, String game, String userEmail, boolean isHandler, String date) throws AddressException, MessagingException {

		String emailPort = "587";//gmail's smtp port
		
		prop = System.getProperties();
		prop.put("mail.smtp.port", emailPort);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");

		String emailSubject = "Registration Successful - Thank you";
		String emailBody = "Dear "+owner+","
				+ "<br>"
				+ "<br>"
				+ "<br>Your registration to this year's Dog Championship is successful. "
				+ "<br>Below is the registered entry you have made:"
				+ "<br>"
				+ "<br>Dog Name: <b>"+dogName+"</b>"
				+ "<br>Breed: <b>"+breed+"</b>"
				+ "<br>Group: <b>"+group+"</b>"
				+ "<br>Gender: <b>"+gender+"</b>"
				+ "<br>Game: <b>"+game+"</b>"
				+ "<br>Registered with Handler: <b>"+isHandler+"</b>"
				+ "<br>Date/s Selected: <b>"+date+"</b>"
				+ "<br>"
				+ "<br>If you wish to modify the information you can visit <a href=\"http://localhost:8080/DogChampionshipVer2/searchentry.jsp\">Search Page</a> "
				+ "<br>on the website and click edit on the entry."
				+ "<br>"
				+ "<br>Good luck!"
				+ "<br>"
				+ "<br>"
				+ "<br>Best Regards,"
				+ "<br>Admin Mark P";

		mailSession = Session.getDefaultInstance(prop, null);
		msg = new MimeMessage(mailSession);
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
		

		msg.setSubject(emailSubject);
		msg.setContent(emailBody, "text/html");//for a html email
		//msg.setText(emailBody);// for a text email


		String emailHost = "smtp.gmail.com";
		String fromUser = "noreply.dogchampionship";//just the id alone without @gmail.com
		String fromUserEmailPassword = "asdklahjsdkh1k2dmasndmansd";

		Transport transport = mailSession.getTransport("smtp");

		transport.connect(emailHost, fromUser, fromUserEmailPassword);
		transport.sendMessage(msg, msg.getAllRecipients());
		transport.close();
		System.out.println("Email sent successfully.");
	}

}


