/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.email;

import com.socialnetwork.constants.UserConstants;
import com.socialnetwork.readproperties.MailProperties;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.MailParseException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

/**
 *
 * @author NCODEIT
 */
@Scope(value = "singleton")
public class EmailVerification {

//    @Autowired
//    MailProperties mailProperties;

    private JavaMailSender mailSender;
    private SimpleMailMessage simpleMailMessage;

    public void setSimpleMailMessage(SimpleMailMessage simpleMailMessage) {
        this.simpleMailMessage = simpleMailMessage;
    }

    public void setMailSender(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    private EmailVerification() {
        System.out.println("in EmailVerification");
    }

    public boolean sendMail(String userName, String content, String userMailID) {
        boolean isEmailSent = false;
        String subject = "Social Network Account Activation";
        MimeMessage message = mailSender.createMimeMessage();
        System.out.println("dear " + userName + " content " + content
                + " userMailID " + userMailID + " : "
                + MailProperties.mailRelatedProps.get(content));
        try {
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            message.setContent(MailProperties.mailRelatedProps.get(content), "text/html");
            helper.setFrom(simpleMailMessage.getFrom());
//            System.out.println("frm " + simpleMailMessage.getFrom()
//                    + " MAILCONTENT " + MailProperties.getMailContentInformation().get(UserConstants.MAILCONTENT));

            if (content.equalsIgnoreCase(UserConstants.FORGOTPASSWORDCONTENT)) {
                System.out.println("userName: " + userName);
                subject = "Forgot password link";
            }
            helper.setTo(userMailID);
            helper.setSubject(subject);
            helper.setText(String.format(simpleMailMessage.getText(), userName, MailProperties.mailRelatedProps.get(content)));

            /**
             * for attaching file, for further use
             */
//
//            FileSystemResource file = new FileSystemResource("C:\\log.txt");
//            helper.addAttachment(file.getFilename(), file);
        } catch (MessagingException e) {
            isEmailSent = false;
            throw new MailParseException(e);
        }
        mailSender.send(message);
        isEmailSent = true;
        return isEmailSent;
    }

}
