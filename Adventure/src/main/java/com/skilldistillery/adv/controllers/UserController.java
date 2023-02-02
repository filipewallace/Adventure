package com.skilldistillery.adv.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skilldistillery.adv.entities.User;
import com.skilldistillery.adv.services.UserService;

@RestController
@RequestMapping("api")
@CrossOrigin({ "*", "http://localhost" })
public class UserController {

	@Autowired
	private UserService svc;
	
	@GetMapping("users")
	public List<User> index() {
		return svc.index();
	}
}
