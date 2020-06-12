package com.model2.mvc.service.music.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.service.domain.Music;
import com.model2.mvc.service.music.MusicDAO;


@Repository("musicDAOImpl")
public class MusicDAOImpl implements MusicDAO {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public MusicDAOImpl() {
		System.out.println(this.getClass());
	}
	
	///Method
	public Music findMusic(String musicName) throws Exception {
		return sqlSession.selectOne("MusicMapper.findMusic", musicName);
	}

}
