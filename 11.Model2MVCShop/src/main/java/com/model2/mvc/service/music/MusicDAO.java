package com.model2.mvc.service.music;

import com.model2.mvc.service.domain.Music;

public interface MusicDAO {

		public Music findMusic(String musicName) throws Exception;

}//end class
