package com.itbank.board;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface BoardDAO {
	
	@Select("select idx, writer, content, to_char(writeDate,'yyyy-MM-dd') as writeDate from board2" +   //날짜를 문자열로 바꾸기(to_char 오라클 자체함수이다)
			" order by idx desc" +
			" offset #{offset} rows " +
			" fetch next 5 rows only")
	List<HashMap<String, Object>> selectBoardData(int offset);  //날짜땜에 Object로  key는 컬럼명이다.

	
	@Insert("insert into board2 (title, writer, content, ipaddress) values "
			+ "( #{title}, #{writer}, #{content}, #{ipaddress} )")
	int insertBoardData(HashMap<String, String> map);
	
}
