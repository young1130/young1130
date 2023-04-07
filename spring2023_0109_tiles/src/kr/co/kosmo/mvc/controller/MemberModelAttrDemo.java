package kr.co.kosmo.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.vo.MemberDemoVO;

@Controller // �߿�!!!
public class MemberModelAttrDemo {
	// form�� ���� ���� �޼��带 ���� - forward

	// @RequestMapping(value = "/memberForm", method = RequestMethod.GET)
	// only Get��ĸ� ���� spring 4.X�� ����
	@GetMapping(value = "/memberForm")
	public ModelAndView memberform() {
		ModelAndView mav = new ModelAndView("member/memberForm");
		return mav;
	}

	// memberIn ó���ϴ� �޼���� �ڵ鷯 ������ �����Ѵ�.
	// �Ķ���� ó��(����ڰ� �Է��� ��) : HttpServletRequest request WAS-> DispatcherServlet
	// -> SpringContainer�� ���ؼ� ���Թ޴´�.
	// @PostMapping(value = "/memberIn")
	public ModelAndView addTest(HttpServletRequest request) {
		System.out.println("ID0=>" + request.getParameter("id")); // ���̶� ����ߴ� ���
		System.out.println("PASSWORD0=>" + request.getParameter("pwd"));
		System.out.println("NAME0=>" + request.getParameter("uname"));
		ModelAndView mav = new ModelAndView("member/success");
		return mav; //setAttribute���ؼ� jsp���� �Ⱥ���?
	}

	// request.getParameter() �Ƚᵵ ��. �˾Ƽ� �Ķ���� ó�� ����
//	@PostMapping(value = "/memberIn")
	public ModelAndView addTest(String id, String pwd, String uname) {

		System.out.println("ID=>" + id);
		System.out.println("PASSWORD=>" + pwd);
		System.out.println("NAME=>" + uname);
		ModelAndView mav = new ModelAndView("member/success");
		return mav;

	}

	// vo�� �Ķ���͸� �˾Ƽ� ���ε��ؼ� ������!!
	// @PostMapping(value = "/memberIn")
	public ModelAndView addTest(MemberDemoVO vo) {

		System.out.println("ID(VO)=>" + vo.getId());
		System.out.println("PASSWORD(VO)=>" + vo.getPwd());
		System.out.println("NAME(VO)=>" + vo.getUname());
		ModelAndView mav = new ModelAndView("member/success");
		mav.addObject("vo", vo);
		return mav;
	}

//	@PostMapping(value = "/memberIn")
//	public String addTest(Model model, MemberDemoVO vo) {
//
//		System.out.println("@ID(VO)=>" + vo.getId());
//		System.out.println("@PASSWORD(VO)=>" + vo.getPwd());
//		System.out.println("@NAME(VO)=>" + vo.getUname());
//		System.out.println("-----------------");
//		vo.setRdate("2023-01-03");
//		model.addAttribute("vo", vo);
//		ModelAndView mav = new ModelAndView("member/success");
//		mav.addObject("vo",vo);
//		return "member/success";
//	}
	
	@PostMapping(value = "/memberIn")
	public String addTest(Model model, @ModelAttribute(value = "vo") MemberDemoVO vo) {
		
		System.out.println("@ID(VO)=>" + vo.getId());
		System.out.println("@PASSWORD(VO)=>" + vo.getPwd());
		System.out.println("@NAME(VO)=>" + vo.getUname());
		System.out.println("-----------------");
		vo.setRdate("2023-01-03");
		// model.addAttribute("vo", vo); => @ModelAttribute(value = "vo")�� �����
		// @ModelAttribute ����ϸ� ���� ���� �� ���� �����ϴ� �Ͱ� ����.
		return "member/success";
	}

}
