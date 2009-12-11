package com.googlecode.scrumsp.stubs;

import com.google.gwt.user.server.rpc.RemoteServiceServlet;
import com.googlecode.scrumsp.api.GreetingService;
import com.googlecode.scrumsp.api.User;

@SuppressWarnings("serial")
public class GreetingServiceStub extends RemoteServiceServlet implements
		GreetingService {

	@Override
	public User greetServer(String name) {
		return new User(name, "Hello " + name + ", Welcome to GWT");
	}
}
