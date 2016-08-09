/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork;

import com.socialnetwork.constants.JSPFileNameConstants;
import com.socialnetwork.constants.UserConstants;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author NCODEIT
 */
@Controller
public class LogoutController {

    @RequestMapping(value = JSPFileNameConstants.LOGOUT, method = RequestMethod.POST)
    public String logout_POST(HttpSession session) {
        String returnJspName = JSPFileNameConstants.LOGOUT;
        System.out.println("session removed post ");
//        session.removeAttribute(UserConstants.USER_LOGGED_IN);
        session.invalidate();
        return returnJspName;
    }

    @RequestMapping(value = JSPFileNameConstants.LOGOUT, method = RequestMethod.GET)
    public String logout_GET(HttpSession session) {
        String returnJspName = JSPFileNameConstants.LOGOUT;
        System.out.println("session removed get ");
//        session.removeAttribute(UserConstants.USER_LOGGED_IN);
        session.invalidate();
        return returnJspName;
    }
}
