package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TodayMyProfileController {
	//value = "/myprofile" �ߺ��Ǹ� �ȵ� (cf.id)
	@RequestMapping(value = "/myprofile", method = RequestMethod.GET)
	public ModelAndView todayProfile() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("profile", "���� �������� ��浿�̴�.");
		mav.setViewName("today/todayProfile"); //forward�� ����
		return mav;
	}

	@RequestMapping(value = "todaywk", method = RequestMethod.GET)
	public ModelAndView todayWork() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("work", "�ð��� ������ �� �ֽŴٸ�...");
		mav.setViewName("today/todayWork");
		return mav;
	}

}
