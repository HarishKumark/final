/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork;

import com.socialnetwork.constants.JSPFileNameConstants;
import com.socialnetwork.constants.UserConstants;
import com.socialnetwork.vo.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author NCODEIT
 */
@Controller
public class RegisterationController {

    @RequestMapping(value = JSPFileNameConstants.USER_REGISTRATION_PAGE, method = RequestMethod.GET)
    public String userRegistration(ModelMap map) {
        String returnJspName = JSPFileNameConstants.USER_REGISTRATION_PAGE;
        map.addAttribute(UserConstants.USER_DETAILS, new UserDetails());
        return returnJspName;
    }

    @RequestMapping(value = UserConstants.USER_DETAILS_AFTER_SUBMIT, method = RequestMethod.POST)
    public String userRegistrationAfterSubmit(@ModelAttribute(UserConstants.USER_DETAILS) UserDetails userDetails) {
        String returnJspName = JSPFileNameConstants.USER_PROFILE;
        System.out.println("came inside of userRegistrationAfterSubmit " + userDetails.getUserName()
                + " " + userDetails.getUserMailID());
        
        

        if (userDetails.getPassword() != null && userDetails.getPhoneNumber() != null
                && userDetails.getLastName() != null) {

        }

        return returnJspName;
    }
    
    

}
