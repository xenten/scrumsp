package com.googlecode.scrumsp.impl;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

import com.googlecode.scrumsp.api.GreetingService;
import com.googlecode.scrumsp.api.User;

/**
 * The server side implementation of the RPC service.
 */
public class GreetingServiceImpl implements GreetingService, ServletContextAware {

	private ServletContext servletContext;
	
	public User greetServer(String user) {
		String serverInfo = getServletContext().getServerInfo();
		return new User(user, "Hello my dear, " + user + "!<br><br>I am running " + serverInfo
				+ ".<br>");
	}

    public ServletContext getServletContext() {
        return servletContext;
    }

    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }
}
