package movie.pak.controller.member;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import movie.pak.dao.LoginDAOInter;
import movie.pak.dao.MyPageDAOInter;
import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.PageSearchDTO;
import movie.pak.dto.SnackUpDTO;

@Controller
@RequestMapping(value = "/member")
public class ControllerMember {
// ����Ϸ��� MemberDao�� MemberInter�� �����Ͽ� (implement)memberinter�� autowirde���ش�.
	


   
   @Autowired
   private LoginDAOInter loginDaoInter;
   
   @Autowired
   private MyPageDAOInter myPageDaoInter;
   
   // ȸ������ ������ �̵�
   @GetMapping(value = "/joinForm")
   public String joinForm() {
      return "loginJoin/joinForm";
      
   }
   
   //�α��� ������ �̵�
   @GetMapping(value = "/loginForm")
   public String loginForm() {
      return "loginJoin/loginForm";
      
   }
   // ȸ������
   @PostMapping(value = "/join")
   public String memberIn(LoginDTO vo) {
   loginDaoInter.addMember(vo);
    
   /*#{lid},#{lpwd},#{ljumin},#{lphone},#{mgrno},#{lname},
#{lgender},#{laddr},#{lemail},#{limg},#{lmileage},#{lclass})*/
   return "loginJoin/loginForm";
   }
   
   //���̵�üũ
   @RequestMapping(value = "/idchk")
   public ModelAndView idChk(String lid) {
      ModelAndView mav = new ModelAndView("loginJoin/idchk");
      int cnt = loginDaoInter.idCheck(lid);
      mav.addObject("cnt", cnt);
      return mav;
   }
   
   @PostMapping(value = "/login")
   public ModelAndView logfin(HttpSession session, HttpServletRequest requset, LoginDTO vo, 
         @RequestHeader("User-Agent") String userAgent) {
      ModelAndView mav = new ModelAndView("redirect:/main");
      LoginDTO dto = loginDaoInter.login(vo);
      if (dto == null) {
         mav.setViewName("error/paramException");
         mav.addObject("emsg", "�α��� �����Դϴ�.");
      } else {
           session.setAttribute("sessionName", dto.getLname());
           session.setAttribute("sessionID", dto.getLid());
      }
      return mav;
   }
   
   @GetMapping(value = "/logout")
      public ModelAndView logfout(HttpSession session, HttpServletRequest request) {
         ModelAndView mav = new ModelAndView();
         session.removeAttribute("sessionName");
         session.removeAttribute("sessionID");
         mav.setViewName("redirect:/main");
         return mav;
      }
   
   // mypage
   @GetMapping(value = "/mypage")
   public String mypage(HttpServletRequest request, Model model, String cPage) {
      
      HttpSession session = request.getSession(false);
      String id = (String) session.getAttribute("sessionID");
      if(id != null) {
    	 LoginDTO v = loginDaoInter.mypage(id);
         
    	 request.setAttribute("v",v);
       
         
         return "loginJoin/myPage";
      }else {
         return "index";
      }
   }
   

   @RequestMapping(value = "/photoup")
      public String upload(Model m, LoginDTO vo, HttpServletRequest request) {
         
         String img_path= "resources\\imgpwd"; //�̹��� ���
         String r_path = request.getRealPath("/");
         
         String oriFn = vo.getMfile().getOriginalFilename(); // ���� �̸�
         
         
         long size = vo.getMfile().getSize(); //�뷮
         String contentType = vo.getMfile().getContentType(); // Ÿ��
         

         
         StringBuffer path = new StringBuffer(); // �ӽ� �����
         path.append(r_path).append(img_path).append("\\");
         path.append(oriFn);
         
      System.out.println("test");
         
         File f = new File(path.toString()); // ���� ��ü ����
         try {
            vo.getMfile().transferTo(f);
            vo.setLimg(oriFn);
         } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
         }
         loginDaoInter.update(vo);
      
         return "redirect:/member/mypage";
   }
   
   @GetMapping(value = "/upform")
   public ModelAndView upForm(LoginDTO vo, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView("loginJoin/joinUpdateForm");
      HttpSession session = request.getSession(false);
      String id = (String) session.getAttribute("sessionID");
      vo = loginDaoInter.mypage(id);
      mav.addObject("v", vo);
      return mav;
   }
   
   // mypage ����
   @PostMapping(value = "/update")
   public String update(LoginDTO vo) {
      loginDaoInter.update(vo);
      return "redirect:/member/mypage";
   }
   
   
}