package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TodayDefaultController {
	
	//Aop�� ����Ǿ /main/index.jsp���� ${today} ��밡��!
	@RequestMapping(value = {"/","/main"})
	public ModelAndView todayView(Model model) {
		ModelAndView mav = new ModelAndView("main/index");
		return mav;
		
	}
}
