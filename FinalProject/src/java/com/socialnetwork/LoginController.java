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
import javax.servlet.http.HttpServletRequest;
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
public class LoginController {

    @Autowired
    UserDetails userDetails;
    @Autowired
    UserValidations uservalidations;

    @RequestMapping(value = JSPFileNameConstants.USER_LOGIN, method = RequestMethod.GET)
    public String userLogin(ModelMap map, UserDetails userDetails,
                            HttpServletRequest servletRequest) {
        String returnJspName = JSPFileNameConstants.USER_LOGIN_PAGE;
        map.addAttribute(UserConstants.USER_DETAILS, new UserDetails());
        return returnJspName;
    }

    @RequestMapping(value = JSPFileNameConstants.USER_LOGIN, method = RequestMethod.POST)
    public String userLoginInPost(ModelMap map,
                                  @ModelAttribute(UserConstants.USER_DETAILS) UserDetails userDetails,
                                  HttpServletRequest servletRequest) {
        String returnJspName = JSPFileNameConstants.USER_LOGIN_PAGE;
        System.out.println("came inside of userRegistrationAfterSubmit " + userDetails.getUserMailID()
                + " getPassword " + userDetails.getPassword());
        if (uservalidations.isValidEmailID(userDetails.getUserMailID(), map)
                && uservalidations.isValidPassword(userDetails, map, null)) {
            servletRequest.getSession().setAttribute(UserConstants.USER_LOGGED_IN, UserConstants.TRUE);
        }
        return returnJspName;
    }
}
