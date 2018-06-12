package com.org.jsp.filter;

import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author senel
 */
@WebFilter(filterName = "RequestLoggingFilter", urlPatterns = {"/*"})
public class RequestLoggingFilter implements Filter 
{

    private ServletContext context;
       
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException 
    {
        HttpServletRequest req = (HttpServletRequest) request;
        Enumeration<String> paramNames = req.getParameterNames();
        while(paramNames.hasMoreElements())
        {
            String name = (String) paramNames.nextElement();
            String value = (String) req.getParameter(name);
            this.context.log(req.getRemoteAddr() + "::Request Params::{" + name + " : " + value + "}");
        }
        
        Cookie[] cookies = req.getCookies();
        if(cookies != null)
        {
            for(Cookie cookie : cookies)
            {
                this.context.log(req.getRemoteAddr() + "::Cookie::{"+cookie.getName()+","+cookie.getValue()+"}");
            }
        }
        
        chain.doFilter(request, response);
        
    }


    public void destroy() {        
    }


    public void init(FilterConfig filterConfig) 
    {
        this.context = filterConfig.getServletContext();
        this.context.log("RequestLoggingFilter initialized");
    }    
}
