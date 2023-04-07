package kr.co.kosmo.mvc.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.MemberDTO;

@Controller
@RequestMapping(value = "/login")
public class LoginCheckController {

	@Autowired
	private MemberDaoInter memberList;

	@RequestMapping(value = "/loginForm")
	public String loginForm() {
		return "login/loginForm";
	}

//	@PostMapping(value = "/loginProcess")
//	public ModelAndView loginProcess(HttpSession session,
//	MemberDTO vo, @RequestHeader("User-Agent") String userAgent) {
//		System.out.println("userAgent : " + userAgent);
//		ModelAndView mav = new ModelAndView("redirect:/main");
//		//== �׽�Ʈ ����==
//		String dbid = "xman";
//		String dbpwd = "123";
//		if (dbid.equals(vo.getId()) && dbpwd.equals(vo.getPwd())) { // �α��� ����
//			vo.setName("���ڹ�");
//			session.setAttribute("sessionName", vo.getName());
//			session.setAttribute("sessionID", vo.getId());
//			System.out.println(vo.getId());
//			System.out.println(vo.getPwd());
//		} else {
//			mav.setViewName("error/paramExeption");
//			mav.addObject("emsg", "�α��ν����Դϴ�.");
//		}
//		//==�׽�Ʈ ��==
//		return mav;
//	}

	// ������ ���۵Ǿ� �� �Ķ������ ���� �������� �����ͺ��̽�����
	// ������ ȸ���̸� ������ ���� �����ϰ�, �ƴϸ� �����޼����� ��������Ѵ�.
	// String userAgent : Aspect(AOP)���� ���� ������
	//HttpSession session(=>0), HttpServletRequest request(=>1),
	@PostMapping(value = "/loginProcess")
	public ModelAndView loginfProcess(HttpSession session, HttpServletRequest request,
			MemberDTO vo, @RequestHeader("User-Agent") String userAgent) {
		//System.out.println("userAgent : " + userAgent);
		ModelAndView mav = new ModelAndView("redirect:/web/main");
		MemberDTO dto = memberList.loginCheck(vo);
		//System.out.println("dto : "+dto);
		if (dto == null) {
			mav.setViewName("error/paramExeption");
			mav.addObject("emsg", "�α��ν����Դϴ�.");
		} else {
			session.setAttribute("sessionName", dto.getName());
			session.setAttribute("sessionID", dto.getId());
			System.out.println("�α��� ���� �� ���� ���� ==> Proceeding Call");
		}
			return mav;
	}

	@GetMapping("/logout")
	public ModelAndView loginfoutProcess(HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		// session.invalidate();=>������ ���� ����
		session.removeAttribute("sessionName");
		session.removeAttribute("sessionID");
		mav.setViewName("redirect:/web/main");
		System.out.println("�α׾ƿ� ���� �� ���� ���� ==> Proceeding Call");
		return mav;
	}
}
