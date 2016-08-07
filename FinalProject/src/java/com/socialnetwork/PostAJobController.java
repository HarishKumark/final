/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork;

import com.socialnetwork.constants.JSPFileNameConstants;
import com.socialnetwork.constants.UserConstants;
import com.socialnetwork.vo.PostAJobDetails;
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
public class PostAJobController {

    @Autowired
    PostAJobDetails postAJobDetails;

    @RequestMapping(value = UserConstants.POSTAJOB_SUBMIT, method = RequestMethod.GET)
    public String postAJobRequest(ModelMap map, UserDetails userDetails, HttpServletRequest servletRequest) {

        System.out.println("it came in request Post a job!!!");
        String returnJspName = JSPFileNameConstants.POSTAJOB_PAGE;
        map.addAttribute(UserConstants.POSTAJOB_DETAILS, new PostAJobDetails());
        return returnJspName;
    }

    @RequestMapping(value = UserConstants.POSTAJOB_SUBMIT, method = RequestMethod.POST)
    public String postAJobSending(ModelMap map, PostAJobDetails postAJobDetails, HttpServletRequest servletRequest) {

        System.out.println("it came in Post a job!!!");
        System.out.println("company: " + postAJobDetails.getCompanyName() + ", desc: " + postAJobDetails.getDescription());
        String returnJspName = JSPFileNameConstants.POSTAJOB_PAGE;
        map.addAttribute(UserConstants.POSTAJOB_DETAILS, new PostAJobDetails());
        return returnJspName;
    }

}
