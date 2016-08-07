/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork;

import com.socialnetwork.constants.JSPFileNameConstants;
import com.socialnetwork.constants.UserConstants;
import com.socialnetwork.vo.UserDetails;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author NCODEIT
 */
@Controller
public class LoginController {

    @Autowired
    UserDetails userDetails;

    @RequestMapping(value = UserConstants.USER_LOGIN_DETAILS_AFTER_SUBMIT, method = RequestMethod.GET)
    public String userRegistration(ModelMap map, UserDetails userDetails, HttpServletRequest servletRequest) {
        String returnJspName = JSPFileNameConstants.USER_LOGIN_PAGE;
        map.addAttribute(UserConstants.LOGIN_DETAILS, new UserDetails());
        return returnJspName;
    }

    @RequestMapping(value = UserConstants.USER_LOGIN_DETAILS_AFTER_SUBMIT, method = RequestMethod.POST)
//    public String userRegistrationAfterSubmit(@ModelAttribute(UserConstants.LOGIN_DETAILS) UserDetails userDetails) {
    public String userRegistrationAfterSubmit(ModelMap map, UserDetails userDetails, HttpServletRequest servletRequest) {
        String returnJspName = JSPFileNameConstants.USER_LOGIN_PAGE;
        System.out.println("came inside of userRegistrationAfterSubmit " + userDetails.getUserName()
                + " " + userDetails.getPassword());
        map.addAttribute(UserConstants.LOGIN_DETAILS, new UserDetails());

        return returnJspName;
    }

}
