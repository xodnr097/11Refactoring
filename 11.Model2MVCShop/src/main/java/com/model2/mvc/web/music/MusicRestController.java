package com.model2.mvc.web.music;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.model2.mvc.service.domain.Music;
import com.model2.mvc.service.music.MusicService;

@RestController
@RequestMapping("/music/*")
public class MusicRestController {

	///Field
	@Autowired
	@Qualifier("musicServiceImpl")
	private MusicService musicService;
	
	public MusicRestController() {
		System.out.println(this.getClass());
	}
	
	@RequestMapping(value="json/getMusic/{musicName}", method=RequestMethod.GET)
	public Music getMusic( @PathVariable String musicName ) throws Exception{
		
		System.out.println("/music/json/getMusic : GET");
		
		return musicService.findMusic(musicName);
	}
	
	
	
}//end class
