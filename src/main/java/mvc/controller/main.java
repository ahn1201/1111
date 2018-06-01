package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class main {
	
	//메인
	@RequestMapping(value="/tiles/main.do")
	public void Main() { }
	
	//모임
	@RequestMapping(value="/tiles/group.do", method=RequestMethod.GET)
	public void Group() {
		
		
		
		
	}
	
	//정모
	@RequestMapping(value="/tiles/meeting.do")
	public void Meeting() { }
	
	//회원가입
	@RequestMapping(value="/tiles/signup.do", method=RequestMethod.GET)
	public void Signup() { }
	
	//검색
	@RequestMapping(value="/tiles/search.do", method=RequestMethod.GET)
	public void Search() { }
	
}
