package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class IndexController {
	
	@RequestMapping
	public ModelAndView index(){
		// 반환값이 될 ModelAndView 인스턴스 생성
		ModelAndView modelAndView = new ModelAndView("/index/index");
		
		return modelAndView;
	}
}
