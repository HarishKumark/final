/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork;

import com.socialnetwork.constants.JSPFileNameConstants;
import com.socialnetwork.constants.UserConstants;
import com.socialnetwork.email.EmailVerification;
import com.socialnetwork.vo.UserDetails;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author lenovo
 */
@Controller
public class ForgotPasswordController {

    @Autowired
    UserDetails userDetails;
    @Autowired
    EmailVerification emailVerification;

    @RequestMapping(value = UserConstants.FORGOT_PASSWORD, method = RequestMethod.GET)
    public String forgotPassword(ModelMap map, UserDetails userDetails, HttpServletRequest servletRequest) {

        System.out.println("it came here in get");
        String returnJspName = JSPFileNameConstants.FORGOT_PASSWORD_PAGE;
        map.addAttribute(UserConstants.LOGIN_DETAILS, new UserDetails());
        return returnJspName;
    }

    @RequestMapping(value = UserConstants.FORGOT_PASSWORD, method = RequestMethod.POST)
//    public String userRegistrationAfterSubmit(@ModelAttribute(UserConstants.LOGIN_DETAILS) UserDetails userDetails) {
    public String forgotPasswordSubmission(ModelMap map, UserDetails userDetails, HttpServletRequest servletRequest) {
        System.out.println("it came here in post");
        String returnJspName = JSPFileNameConstants.FORGOT_PASSWORD_PAGE;
        System.out.println("came inside of Frogotpassword; emaildid::  " + userDetails.getUserMailID());

        emailVerification.sendMail("", UserConstants.FORGOTPASSWORDCONTENT, "hemanth8926@gmail.com");
//        emailVerification.sendMail("Hi,", "", "hemanth8926@gmail.com");
        map.addAttribute(UserConstants.LOGIN_DETAILS, new UserDetails());

        return returnJspName;
    }

}
