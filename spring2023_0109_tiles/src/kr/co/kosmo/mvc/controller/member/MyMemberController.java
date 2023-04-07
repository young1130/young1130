package kr.co.kosmo.mvc.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.MemberDTO;

@Controller
@RequestMapping("/member") // ��з�
public class MyMemberController {

	@Autowired
	private MemberDaoInter memberDaoInter;

	@GetMapping(value = "/memberForm") // �ߺз�
	public ModelAndView memberForm() {
		ModelAndView mav = new ModelAndView("mymember/memberForm");
		return mav;
	}

	// ��ȯ���� String�� ��쿡�� viewName����, Model���ڷ� ���� �� �ִ�.
	@PostMapping(value = "/memberIn")
	public String memberIn(MemberDTO dto) {
		System.out.println("id = " + dto.getId());
		System.out.println("pwd = " + dto.getPwd());
		System.out.println("Name = " + dto.getName());
		System.out.println("Gender = " + dto.getGender());
		System.out.println("Age = " + dto.getAge());
		// ȸ�������� ������ ���� �̵��� ������ ���� - redirect
		memberDaoInter.addMember(dto);
		return "redirect:/web/main";
	}

	//�ݵ�� id�� �Ķ���Ͱ� �־�� �Ѵ�.(üũ���)	
	@GetMapping(value = "/idcheck")
	public String idCheck(Model m, @RequestParam String id) {
		System.out.println("idAjax:" + id);
		int cnt = memberDaoInter.idcheck(id);
		m.addAttribute("msg", cnt);
		return "mymember/idchk";
	}
}
