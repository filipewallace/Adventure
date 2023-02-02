package com.skilldistillery.adv.services;

import java.util.List;

import com.skilldistillery.adv.entities.User;

public interface UserService {
	public User create (User user);
	
	public User update (User user, String username, int id);
	
	public List<User> index();
	
	public User show (String username, int id);
	
	public User showUser(String username);
	
	public boolean destroy(String username, int id);

}
