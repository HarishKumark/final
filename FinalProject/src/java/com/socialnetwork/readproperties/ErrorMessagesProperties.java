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
public class ErrorMessagesProperties {

    private ErrorMessagesProperties() {
        System.out.println("in ErrorMessagesProperties ");
        getErrorMessages();
    }

    public static HashMap<String, String> getErrorMessages() {
        HashMap<String, String> errorMsgProps = new HashMap<>();
        try {            
            Properties properties = new Properties();           
            properties.load(new FileInputStream("D:\\Project\\ErrorMessages.properties"));
            for (String key : properties.stringPropertyNames()) {
                errorMsgProps.put(key, properties.getProperty(key));
            }
            System.out.println("errorMsgProps ==========" + errorMsgProps);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return errorMsgProps;
    }
}
