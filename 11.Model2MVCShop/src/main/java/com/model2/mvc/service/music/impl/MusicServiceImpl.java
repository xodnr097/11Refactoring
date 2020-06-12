package com.model2.mvc.service.music.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.service.domain.Music;
import com.model2.mvc.service.music.MusicDAO;
import com.model2.mvc.service.music.MusicService;

@Service("musicServiceImpl")
public class MusicServiceImpl implements MusicService {

	@Autowired
	@Qualifier("musicDAOImpl")
	private MusicDAO musicDAO;
	public void setMusicDAO(MusicDAO musicDAO) {
		this.musicDAO = musicDAO;
	}
	
	///Consturctor
	public MusicServiceImpl() {
		System.out.println(this.getClass());
	}
	
	public Music findMusic(String musicName) throws Exception{
		return musicDAO.findMusic(musicName);
	}
	
	

}
