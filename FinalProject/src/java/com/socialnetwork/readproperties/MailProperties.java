/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.readproperties;

import com.socialnetwork.constants.UserConstants;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Properties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.javamail.JavaMailSenderImpl;

/**
 *
 * @author NCODEIT
 */
@Scope(value = "singleton")
public class MailProperties {

//    @Autowired
//    JavaMailSenderImpl mailSenderImpl  = new JavaMailSenderImpl();

    public static HashMap<String, String> mailRelatedProps = new HashMap<>();

    private MailProperties() {
        System.out.println("In MailProperties");
        getMailContentInformation();
//        setMailRelatedProperties();
    }

    public void getMailContentInformation() {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream("D:\\Project\\MailProps.properties"));
            for (String key : properties.stringPropertyNames()) {
                System.out.println("===================== " + key + " ============ " + properties.getProperty(key));
                mailRelatedProps.put(key, properties.getProperty(key));
            }
            System.out.println("mailRelatedProps " + mailRelatedProps);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    public void setMailRelatedProperties() {
//        try {
//            System.out.println("in setMailRelatedProperties " + mailRelatedProps.get(UserConstants.HOST) 
//                    + " mailSenderImpl " + mailSenderImpl);
//            mailSenderImpl.setHost(mailRelatedProps.get(UserConstants.HOST));
//            mailSenderImpl.setPort(Integer.parseInt(mailRelatedProps.get(UserConstants.PORT)));
//            mailSenderImpl.setUsername(mailRelatedProps.get(UserConstants.SENDING_MAIL_ID));
//            mailSenderImpl.setPassword(mailRelatedProps.get(UserConstants.PASSWORD));
//            mailSenderImpl.getJavaMailProperties().setProperty(UserConstants.MAIL_SMTP_AUTH, UserConstants.TRUE);
//            mailSenderImpl.getJavaMailProperties().setProperty(UserConstants.MAIL_SMTP_STARTTLS_ENABLE, UserConstants.TRUE);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

}
