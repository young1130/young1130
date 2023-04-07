package kr.co.kosmo.mvc.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.kosmo.mvc.dao.MemberDaoInter;

@RestController
public class IdCheckController {
	//@RestController => json, ���� Ŀ���� ��� �����ϴ� ����
	
	@Autowired
	private MemberDaoInter memberDaoInter;
	
	//�ݵ�� id�� �Ķ���Ͱ� �־�� �Ѵ�.(üũ���)	
	@GetMapping(value = "/idcheck")
	public int idCheck(Model m, @RequestParam String id) {
		System.out.println("idAjax:" + id);
		int cnt = memberDaoInter.idcheck(id);
		m.addAttribute("msg", cnt);
		return cnt;
	}
	
}
