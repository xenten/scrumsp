package com.googlecode.scrumsp.api;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable {
	private String name;
	private String message;

	User() { }

	public User(String name, String message) {
		this.name = name;
		this.message = message;
	}

	public String getName() {
		return name;
	}

	public String getMessage() {
		return message;
	}
}
