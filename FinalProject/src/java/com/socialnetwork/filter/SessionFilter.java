/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.filter;

import com.socialnetwork.constants.JSPFileNameConstants;
import com.socialnetwork.constants.UserConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NCODEIT
 */
public class SessionFilter implements Filter {

    private ArrayList<String> urlList;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("in session filter of init");
        Enumeration<String> enumeration = filterConfig.getInitParameterNames();
        urlList = new ArrayList<>();
        while (enumeration.hasMoreElements()) {
            String nextElement = enumeration.nextElement();
            System.out.println(" nextElement  " + nextElement + " val : " + filterConfig.getInitParameter(nextElement));
            urlList.add("/" + filterConfig.getInitParameter(nextElement));
        }

        System.out.println("");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try {
            HttpServletRequest httpRequest = (HttpServletRequest) request;
            HttpServletResponse httpResponse = (HttpServletResponse) response;
            String url = httpRequest.getServletPath();

            boolean allowedRequest = false;
            if (!urlList.contains(url)) {
                allowedRequest = true;
            }
            System.out.println("url  in filter " + url + " urlList "
                    + urlList + " allowedRequest " + allowedRequest + " urlList.contains(url) " + urlList.contains(url));

            if (allowedRequest) {
                HttpSession session = httpRequest.getSession();
                if (null == session.getAttribute(UserConstants.USER_LOGGED_IN)) {
//                    session.removeAttribute(UserConstants.USER_LOGGED_IN);
//                    httpResponse.sendRedirect(JSPFileNameConstants.LOGOUT);
//                    httpResponse.sendRedirect("logout_new.jsp");
//                    httpResponse.sendRedirect(JSPFileNameConstants.LOGOUT);
                    RequestDispatcher dd = request.getRequestDispatcher(JSPFileNameConstants.LOGOUT);
                    dd.forward(request, response);
                    return;
                } else {
                    System.out.println("sessionis not null");
                }
            } else {
                chain.doFilter(httpRequest, httpResponse);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void destroy() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
