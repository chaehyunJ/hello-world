package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface ImageDAO {

	@Select("select * from delivery")
	List<ImageDTO> getImageList();
}
