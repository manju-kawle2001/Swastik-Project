package com.swastik.service;

import java.util.Properties;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class MailServices {

    private String msgSubject = "";
    private String msgText = "";
    private String USER_NAME;   // Reasever Mail (User Mail)
    private final String PASSSWORD = "lhkz flyx wslj eacl";  //Password of the Goole(gmail) account
    private final String SENDER = "sohaninfobeans4@gmail.com";  //From addresss

    public String getMsgSubject() {
        return msgSubject;
    }

    public void setMsgSubject(String msgSubject) {
        this.msgSubject = msgSubject;
    }

    public String getMsgText() {
        return msgText;
    }

    public void setMsgText(String msgText) {
        this.msgText = msgText;
    }

    public String getUSER_NAME() {
        return USER_NAME;
    }

    public void setUSER_NAME(String USER_NAME) {
        this.USER_NAME = USER_NAME;
    }

    public void setUserMail(String userMail) {
        this.USER_NAME = userMail;
    }

    public void SetMsgText(String msgText) {
        this.msgText = msgText;
    }

    public void createAndSendEmail(String msgSubject, String msgText) {
        this.msgSubject = msgSubject;
        this.msgText = msgText;
//        sendEmailMessage();
    }

    public void sendEmailMessage(MailServices mail) {

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SENDER, PASSSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(SENDER)); //Set from address of the email
            message.setContent(mail.msgText, "text/html"); //set content type of the email

            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mail.getUSER_NAME()));

            message.setSubject(mail.msgSubject); //Set email message subject
            Transport.send(message); //Send email message

            System.out.println("sent email successfully!");

        } catch (MessagingException e) {

            System.out.println(e);
        }
    }
}
