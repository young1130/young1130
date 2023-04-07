package kr.co.kosmo.mvc.advice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.MyLoginLoggerDTO;

@Component
@Aspect
public class LoginAdvice {
	private String userAgent;

	@Autowired
	private MemberDaoInter memberList;

	@Around("execution(* kr.co.kosmo.mvc.controller.login.LoginCheckController.loginf*(..))")
	public ModelAndView loginLogger(ProceedingJoinPoint jp) {
		System.out.println("loginLogger ����1");
		ModelAndView rpath = null;
		// step1) �޼����� �̸��� �����ͼ� �α��ΰ� �α׾ƿ��� �����Ѵ�.
		String methodName = jp.getSignature().getName();
		System.out.println("methodName: " + methodName); // �޼��� �̸� Ȯ��
		// �����;� �ϴ� ����
		// step2) Joinpoint�κ��� Ÿ�� ��ü�� �޼����� ���ڰ� �޾ƿ���
		Object[] fd = jp.getArgs();
//			for(Object e:fd) {
//				System.out.println(e.getClass().getName());
//			}
		if (methodName.equals("loginfProcess")) {
			// getArgs: ����, request,userAgent, DTO -4��
			
			try {
				rpath = (ModelAndView) jp.proceed();//�α��� �޼��� ȣ��
			} catch (Throwable e) {
				e.printStackTrace();
			}
			
			HttpSession session = (HttpSession) fd[0];
			userAgent = (String) fd[3];
			String uid=(String) session.getAttribute("sessionID");
			String reip = ((HttpServletRequest)(fd[1])).getRemoteAddr();
			System.out.println("agent=> " + userAgent);
			System.out.println("reIP=> "+reip);
			System.out.println("uid=> "+uid);
			//�α��� ������ �����ͺ��̽��� �����ϱ�
			MyLoginLoggerDTO vo = new MyLoginLoggerDTO();
			vo.setIdn(uid);
			vo.setStatus("login");
			vo.setReip(reip);
			vo.setUagent(userAgent);
			memberList.addLoginLogging(vo);
			
		} else if (methodName.equals("loginfoutProcess")) {
			// getArgs: ����,request -2��
			HttpSession session = (HttpSession) fd[0];
			String uid=(String) session.getAttribute("sessionID");
			String reip = ((HttpServletRequest)(fd[1])).getRemoteAddr();
			//�α׾ƿ� ������ �����ͺ��̽��� �����ϱ�
			MyLoginLoggerDTO vo = new MyLoginLoggerDTO();
			vo.setIdn(uid);
			vo.setStatus("logout");
			vo.setReip(reip);
			vo.setUagent(userAgent);
			memberList.addLoginLogging(vo);
			try {
				rpath = (ModelAndView) jp.proceed(); //�α׾ƿ� �޼��� ȣ��
				
				
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}
		
		/*
		try {
			rpath = (ModelAndView) jp.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		*/
		System.out.println("loginLogger ����2");
		System.out.println("----------------------");
		return rpath;
	}
}
