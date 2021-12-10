package com.dogether.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dogether.dao.TestDAO;
import com.dogether.domain.BoardVO;

@Service("testService")
public class TestService {
	
	@Autowired
	private TestDAO testDAO;
	
	
	public BoardVO test() {
		return testDAO.getBoardList();
	}
}
