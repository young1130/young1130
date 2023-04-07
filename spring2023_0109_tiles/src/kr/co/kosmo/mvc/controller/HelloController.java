//package kr.co.kosmo.mvc;
package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//HelloControllerd ���� �𵨿� �ش�
//DispatcherServlet�� ��Ʈ�� ������ ������ �����̳ʿ� ���ؼ� Model�� ���Թ޾Ƽ� ����
//HandlerMapping�� ��û������ �м����ش�.
//�����������̳ʸ� ���� ��Ʈ�ѷ�
@Controller // ����X
public class HelloController {
	
	//http://localhost/spring0103_mvc/hello (request) : �ߺ��Ǹ� �ȵ�!
	// ActionFactory-------->SpringContainer-------->DispatcherServlet
	// ----->HandlerMapping�� �м�
	@RequestMapping(value = "/hello")
	public ModelAndView myHello() {
		ModelAndView mav = new ModelAndView();
		// request.setAttribute("key",Val);
		mav.addObject("msg", "<h1>�ȳ��ϼ���2, ���� ù��° springMVC�Դϴ�.</h1>");
		// new ActionForward("Hello.jsp",false); 
		// �⺻���� forward. redirect�� �ٸ������� ���� 
		mav.setViewName("hello");
		return mav;
	}
}
