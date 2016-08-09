/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.validations;

import com.socialnetwork.constants.UserConstants;
import com.socialnetwork.email.EmailVerification;
import com.socialnetwork.readproperties.ErrorMessagesProperties;
import com.socialnetwork.vo.UserDetails;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.ui.ModelMap;

/**
 *
 * @author NCODEIT
 */
@Scope(value = "singleton")
public class UserValidations {

    @Autowired
    EmailVerification emailVerification;
//    @Autowired
//    ErrorMessagesProperties errorMsg;

    private UserValidations() {

    }

    public boolean isValidaEnteredDetails(UserDetails userDetails, ModelMap model) {
        boolean isValidDetails = false;
        try {
            if (userDetails != null) {
                isValidDetails = isValidUserName(userDetails.getUserName(), model, UserConstants.INVALID_USER_NAME);
                System.out.println("in isValidUserName for first " + isValidDetails);
                if (isValidDetails) {
                    isValidDetails = isValidUserName(userDetails.getLastName(), model, UserConstants.INVALID_LAST_NAME);
                    System.out.println("in isValidUserName for last " + isValidDetails);
                    if (isValidDetails) {
                        isValidDetails = isValidMobileNumber(userDetails.getPhoneNumber(), model);
                        System.out.println("in isValidMobileNumber " + isValidDetails);
                        if (isValidDetails) {
                            isValidDetails = isValidEmailID(userDetails.getUserMailID(), model);
                            System.out.println("in isValidEmailID " + isValidDetails);
                            if (isValidDetails) {

//                                emailVerification.sendMail("Harish", UserConstants.MAILCONTENT, "khharish2@gmail.com");
                                System.out.println("in isValidUserName " + isValidDetails);
                                return isValidPassword(userDetails, model, UserConstants.CAME_FROM);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("user name  " + userDetails.getLastName() + " =============== " + isValidDetails);
        return isValidDetails;
    }

    public boolean isValidUserName(String userName, ModelMap model, String key) {
        boolean isValidUserName = true;
        if (userName == null || userName.equals("")) {
            isValidUserName = false;
        }
        System.out.println("userName " + userName + " key ::::: " + key
                + " isValidUserName " + isValidUserName);
        if (!isValidUserName) {
            model.addAttribute(UserConstants.ERROR_MSG,
                    ErrorMessagesProperties.getErrorMessages().get(key));
        }
        return isValidUserName;
    }

    public boolean isValidMobileNumber(String mobileNumber, ModelMap model) {
        boolean isValidMobile = false;
        if (mobileNumber == null || mobileNumber.equals("")) {
            isValidMobile = false;
        } else if (!mobileNumber.equals("")) {
            System.out.println(" mobileNumber " + mobileNumber.matches("[0-9]+") + " len " + mobileNumber.length());
            isValidMobile = mobileNumber.matches("[0-9]+") && mobileNumber.length() >= 10;
        }
        if (!isValidMobile) {
            model.addAttribute(UserConstants.ERROR_MSG,
                    ErrorMessagesProperties.getErrorMessages().get(UserConstants.INVALID_MOBILE));
        }
        return isValidMobile;
    }

    public boolean isValidEmailID(String emailID, ModelMap model) {
        boolean isValidEmailID = false;
        if (emailID == null || emailID.equals("")) {
            isValidEmailID = false;
        } else if (!emailID.equals("")) {
            String regex = "^(.+)@(.+)$";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(emailID);
            isValidEmailID = matcher.matches();
        }
        if (!isValidEmailID) {
            model.addAttribute(UserConstants.ERROR_MSG,
                    ErrorMessagesProperties.getErrorMessages().get(UserConstants.INVALID_EMAILID));
        }
        return isValidEmailID;
    }

    public boolean isValidPassword(UserDetails userDetails, ModelMap model, String cameFrom) {
        boolean isValidPassword = true;
        if (userDetails.getPassword() == null || userDetails.getPassword().equals("")) {
            isValidPassword = false;
        } else if (!userDetails.getPassword().equals("")) {
            if (cameFrom != null && cameFrom.equalsIgnoreCase(UserConstants.CAME_FROM)) {
                if (userDetails.getPassword().contains(userDetails.getUserName())) {
                    isValidPassword = false;
                }
                if (userDetails.getPassword().contains(userDetails.getLastName())) {
                    isValidPassword = false;
                }
            }
            if (userDetails.getPassword().length() > 8) {
                isValidPassword = false;
            }
        }
        if (!isValidPassword) {
            model.addAttribute(UserConstants.ERROR_MSG,
                    ErrorMessagesProperties.getErrorMessages().get(UserConstants.INVALID_PASSWORD));
        }
        return isValidPassword;
    }

}
