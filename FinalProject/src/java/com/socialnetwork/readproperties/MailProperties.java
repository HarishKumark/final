/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.readproperties;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Properties;
import org.springframework.context.annotation.Scope;

/**
 *
 * @author NCODEIT
 */
@Scope(value = "singleton")
public class MailProperties {

    private MailProperties() {
        System.out.println("In MailProperties");
        getMailContentInformation();
    }

    public static HashMap<String, String> getMailContentInformation() {
        HashMap<String, String> mailRelatedProps = new HashMap<>();
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream("D:\\Project\\MailProps.properties"));
            for (String key : properties.stringPropertyNames()) {
                System.out.println("===================== " + key);
                mailRelatedProps.put(key, properties.getProperty(key));
            }
            System.out.println("mailRelatedProps " + mailRelatedProps);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mailRelatedProps;
    }

}
