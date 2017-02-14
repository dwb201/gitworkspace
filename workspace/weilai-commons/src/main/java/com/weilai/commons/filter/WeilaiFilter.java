package com.weilai.commons.filter;


import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

public class WeilaiFilter implements Filter{
    
	@Autowired
	private AuditHandler auditHandler;
	
	private String appName;

    public WeilaiFilter() {}

    public WeilaiFilter(AuditHandler auditHandler) {
        this.auditHandler = auditHandler;
    }


    public void destroy() {}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 auditHandler.auditRequest(appName,request);
	        chain.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		 appName = filterConfig.getInitParameter("appName");
		
	}

}
