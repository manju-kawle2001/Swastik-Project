/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.other;
    
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;
import java.util.Scanner;


public class GemailSender {


    public boolean sendEmail(String to,String from,String subject,String text){
        boolean flag = false;
        
        Properties p = new Properties();
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.port", "587");
        p.put("mail.smtp.host", "smtp.gmail.com");
         String user = "sonampra07@gmail.com";
          System.out.println("Boolean : "+flag);
         String password = "milqhmyemdfceuds";
        //session object get
        Session session = Session.getInstance(p,new jakarta.mail.Authenticator() {
           @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                System.out.println(" xkajdbfkas dj");
                return new PasswordAuthentication(user,password);
        }
        
        });
        
        try{
            System.out.println("Boolean : ZXvewgvawsdv");
            
            Message message = new MimeMessage(session);
            System.out.println(" zxvbd babkdm ");
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            System.out.println("z xjasdv vba vsvjwb");
            message.setFrom(new InternetAddress(from));
            System.out.println(" scjbadv asjdbabwd");
            message.setSubject(subject);
            message.setText(text);
            Transport.send(message);
            System.out.println("KJS DJAWEGJASD VKJASDV");
            flag  = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return flag;
    }
    public String generateRandomCode() {
        Random random = new Random();
        int code = 100000 + random.nextInt(900000); // Generates a random 6-digit code
        return String.valueOf(code);
    }
    public boolean verifyCode(String generatedCode) {
    Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the verification code sent to your email: ");
        String userEnteredCode = scanner.nextLine();
        if (generatedCode.equals(userEnteredCode)) {
            return true; 
        } else {
                return false;
        }   
}   
    
}

