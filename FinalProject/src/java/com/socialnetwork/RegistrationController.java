/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork;

import com.socialnetwork.constants.JSPFileNameConstants;
import com.socialnetwork.constants.UserConstants;
import com.socialnetwork.validations.UserValidations;
import com.socialnetwork.vo.UserDetails;
import org.springframework.beans.factory.annotation.Autowired;
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
public class RegistrationController {

    @Autowired
    UserValidations uservalidations;

    @RequestMapping(value = JSPFileNameConstants.USER_REGISTRATION_PAGE, method = RequestMethod.GET)
    public String userRegistration(ModelMap map) {
        String returnJspName = JSPFileNameConstants.USER_REGISTRATION_PAGE;
        map.addAttribute(UserConstants.USER_DETAILS, new UserDetails());
        return returnJspName;
    }

    @RequestMapping(value = UserConstants.USER_DETAILS_AFTER_SUBMIT, method = RequestMethod.POST)
    public String userRegistrationAfterSubmit(@ModelAttribute(UserConstants.USER_DETAILS) UserDetails userDetails,
            ModelMap model) {
        String returnJspName = JSPFileNameConstants.USER_REGISTRATION_PAGE;
        System.out.println("came inside of userRegistrationAfterSubmit " + userDetails.getUserName()
                + " " + userDetails.getUserMailID());
        if (uservalidations.isValidaEnteredDetails(userDetails, model)) {
            returnJspName = JSPFileNameConstants.USER_PROFILE;
        }
//        System.out.println("values----------- "+model.get(UserConstants.ERROR_MSG));
//        model.addAttribute(UserConstants.ERROR_MSG, model.get(UserConstants.ERROR_MSG));
        return returnJspName;
    }

    @RequestMapping(value = UserConstants.VERIFY_EMAIL, method = RequestMethod.GET)
    public String verifyEmail() {
        String returnJspName = JSPFileNameConstants.USER_PROFILE;
        System.out.println("came insdie of email verificattion");
        return returnJspName;
    }

}
