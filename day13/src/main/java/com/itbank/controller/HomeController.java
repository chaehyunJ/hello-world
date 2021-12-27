package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/ex01")
	public void ex01() {}  //jsp를 찾는다
	
	@GetMapping("/ex02")
	public void ex02() {}  //jsp를 찾는다

}