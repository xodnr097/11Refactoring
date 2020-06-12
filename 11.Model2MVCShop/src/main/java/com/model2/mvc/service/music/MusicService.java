package com.model2.mvc.service.music;

import com.model2.mvc.service.domain.Music;


public interface MusicService {
	
	public Music findMusic(String musicName) throws Exception;

}