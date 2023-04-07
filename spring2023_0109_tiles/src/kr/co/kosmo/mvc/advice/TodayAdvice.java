package kr.co.kosmo.mvc.advice;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

// @Aspect :advice
// @Component: �Ϲ����� bean���� ��ĵ���ؼ� ��ϵ�
@Component
@Aspect
public class TodayAdvice {
	// 1. ���� ���ɻ����� �����ΰ� =>
	// 2. target ? => Today
	// 3. ������ �����غ� �ʿ䰡 �ִ�.

	@Before("execution(* kr.co.kosmo.mvc.controller.TodayMy*.today*(..))")
	public void todayAdviceMethod() {
		String todate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		System.out.println("== Todate ==");
		System.out.println(todate);
	}

	@AfterReturning(pointcut = "execution(* kr.co.kosmo.mvc.controller.Today*.today*(..))", returning = "mav")
	public ModelAndView afterToday(JoinPoint jp, ModelAndView mav) {
		//RequestContexHolder����ؼ� HttpServletRequest �޾Ƽ� ������� �����Ǹ� �޾Ƽ� �α��غ���
		ServletRequestAttributes ra = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpServletRequest request = ra.getRequest();
		mav.addObject("reip",request.getRemoteAddr());
		System.out.println("reip=>"+request.getRemoteAddr());
		mav.addObject("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		return mav;
	}
}
