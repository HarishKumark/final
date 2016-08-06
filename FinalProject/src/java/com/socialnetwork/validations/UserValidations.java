/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.validations;

import com.socialnetwork.vo.UserDetails;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.context.annotation.Scope;

/**
 *
 * @author NCODEIT
 */
@Scope(value = "singleton")
public class UserValidations {

    private UserValidations() {

    }

    public boolean isValidaEnteredDetails(UserDetails userDetails) {
        boolean isValidDetails = false;
        if (userDetails != null) {
            isValidDetails = isValidUserName(userDetails.getUserName());
            if (isValidDetails) {
                isValidDetails = isValidUserName(userDetails.getLastName());
                if (isValidDetails) {
                    isValidDetails = isValidMobileNumber(userDetails.getPhoneNumber());
                    if (isValidDetails) {
                        isValidDetails = isValidEmailID(userDetails.getUserMailID());
                        if (isValidDetails) {
                            isValidDetails = isValidPassword(userDetails);
                        }
                    }
                }
            }
        }
        return isValidDetails;
    }

    public boolean isValidUserName(String userName) {
        boolean isValidUserName = false;
        if (userName == null || userName.equals("")) {
            isValidUserName = false;
        }
        return isValidUserName;
    }

    public boolean isValidMobileNumber(String mobileNumber) {
        boolean isValidMobile = false;
        if (mobileNumber == null || mobileNumber.equals("")) {
            isValidMobile = false;
        } else if (!mobileNumber.equals("")) {
            if (mobileNumber.matches("[0-9]+") && mobileNumber.length() > 10) {
                isValidMobile = true;
            }
        }
        return isValidMobile;
    }

    public boolean isValidEmailID(String emailID) {
        boolean isValidEmailID = false;
        if (emailID == null || emailID.equals("")) {
            isValidEmailID = false;
        } else if (!emailID.equals("")) {
            String regex = "^(.+)@(.+)$";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(emailID);
            isValidEmailID = matcher.matches();
        }
        return isValidEmailID;
    }

    public boolean isValidPassword(UserDetails userDetails) {
        boolean isValidPassword = false;
        if (userDetails.getPassword() == null || userDetails.getPassword().equals("")) {
            isValidPassword = false;
        } else if (!userDetails.getPassword().equals("")) {
            if (userDetails.getPassword().contains(userDetails.getUserName())) {
                isValidPassword = false;
            }
            if (userDetails.getPassword().contains(userDetails.getLastName())) {
                isValidPassword = false;
            }
        }
        return isValidPassword;
    }

}
