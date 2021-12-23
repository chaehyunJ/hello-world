package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.model.ImageDTO;
import com.itbank.service.imageService;

@RestController
public class AjaxController {
	@Autowired private imageService is;
	@GetMapping("/ajax1")
	public List<ImageDTO> ajax1() {
		return is.getImageList();
	}
}
