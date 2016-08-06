/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.validations;

import com.socialnetwork.vo.UserDetails;
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
            if(mobileNumber.contains("[a-zA-Z]+")){
                
            }
        }
        return isValidMobile;
    }

}
