package com.googlecode.scrumsp.impl;

import com.google.gwt.user.server.rpc.RemoteServiceServlet;
import com.googlecode.scrumsp.api.User;
import com.googlecode.scrumsp.api.GreetingService;

/**
 * The server side implementation of the RPC service.
 */
@SuppressWarnings("serial")
public class GreetingServiceImpl extends RemoteServiceServlet implements
		GreetingService {

	public User greetServer(String user) {
		String serverInfo = getServletContext().getServerInfo();
		String userAgent = getThreadLocalRequest().getHeader("User-Agent");
		return new User(user, "Hello, " + user + "!<br><br>I am running " + serverInfo
				+ ".<br><br>It looks like you are using:<br>" + userAgent);
	}
}
