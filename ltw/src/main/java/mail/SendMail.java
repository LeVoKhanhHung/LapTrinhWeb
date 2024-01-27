package mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendMail {
//    public void sendMail() {
//        String email = "minhthank48@gmail.com";
//        String password = "owhq errw esru tlwm";
//
//        Properties properties = new Properties();
//        properties.put("mail.smtp.auth", "true");
//        properties.put("mail.smtp.starttls.enable", "true");
//        properties.put("mail.smtp.host", "smtp.gmail.com");
//        properties.put("mail.smtp.port", "587");
//
//        Session session = Session.getDefaultInstance(properties, new Authenticator() {
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(email,password);
//            }
//        });
//
//        try {
//            MimeMessage message = new MimeMessage(session);
//            message.setFrom(new InternetAddress(email));
//            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
//            message.setText("Verification link ...");
//            message.setText("Click here :: " + "http://localhost:8080/ltw/AccountActive?key1=" + userEmail + "&key2=" + hash);
//            Transport.send(message);
//        } catch (Exception e) {
//            System.out.println("Sendmail error");
//        }
//    }
//}

    private String userEmail;
    private String hash;

    public void sendMail(String userEmail, String content) {
        String email = "minhthank48@gmail.com";
        String password = "owhq errw esru tlwm";

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getDefaultInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
            message.setText(content);
            Transport.send(message);
        } catch (Exception e) {
            System.out.println("Sendmail error");
        }
    }
}