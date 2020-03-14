/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos.vo;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import modelos.dao.UsuarioDAO;

/**
 *
 * @author Santi
 */
public class CorreoVO {
            UsuarioVO vo = new UsuarioVO();
        UsuarioDAO dao = new UsuarioDAO(vo);
        
    public static void sendMail(String recipient, String mensaje, String asunto)throws Exception{
        System.out.println("Preparing to send email");
        Properties properties = new Properties();
        
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        
        String myAccountEmail = "lromero89989@gmail.com";
        String myAcountPassword = "auratienestecorreo888";
        
        Session session = Session.getInstance(properties, new Authenticator(){
           @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(myAccountEmail, myAcountPassword);
                
            }
        });
        Message message = prepareMessage(session, myAccountEmail, recipient, mensaje, asunto);
        Transport.send(message);
        System.out.println("Message set succesfully");
    }

    private static Message prepareMessage(Session session, String myAccountEmail, String recipient, String mensaje, String asunto) {

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            message.setSubject(asunto);
            message.setText(mensaje);
            return message;
            
        } catch (Exception ex) {
            Logger.getLogger(CorreoVO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
