package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.ImageDAO;
import com.itbank.model.ImageDTO;

@Service
public class imageService {
	@Autowired private ImageDAO dao;

	public List<ImageDTO> getImageList() {
		return dao.getImageList();
	}
	
}
