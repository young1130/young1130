package movie.pak.controller.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import movie.pak.dao.LoginDAOInter;
import movie.pak.dao.MyPageDAOInter;
import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.PageSearchDTO;

@RestController
@RequestMapping(value = "/memberR")
public class MemberRestController {

	@Autowired
	private LoginDAOInter loginDaoInter;
	@Autowired
	private MyPageDAOInter myPageDaoInter;
	// -----------------------------------------------
	// Page처리를 위한 속성
	private int nowPage = 1; // 현재 페이지 값 -> 메뉴 페이지와 연동되는 변수
	private int nowBlock = 1; // 현재 블럭 -> [][][][][] -> 1block당 5개 배열 생성
	private int totalRecord; // 총 게시물 수 .Dao로 부터 받음
	private int numPerPage = 3; // 한 페이지당 보여질 게시물 수
	private int pagePerBlock = 3; // 한 블럭당 보여질 페이지 수
	private int totalPage; // 전체 페이지 수 => totalRecord/numPerPage
	private int totalBlock; // 전체 블럭수
	private int beginPerPage; // 각 페이지별 시작 게시물의 index값
	private int endPerPage; // 각 페이지별 마지막 게시물의 index값
	// --------------------------------------------------



		@RequestMapping(value = "/mbpage")
	  public Map<String, Object> mppage(HttpServletRequest request, String cPage,String lid, Model model) {
  	  HttpSession session = request.getSession(false);
        String id = (String) session.getAttribute("sessionID");
        Map<String, Object> map = new HashedMap();
		if (id != null) {
			LoginDTO v = loginDaoInter.mypage(id);

			PageSearchDTO pgSvo = new PageSearchDTO();
			totalRecord = myPageDaoInter.getCnt(id);
			totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);

			totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);

			String s_page = cPage;
			if (s_page != null) {
				nowPage = Integer.parseInt(s_page);
			}

			// nowPage의 값에서 SQL문의 start값(#{begin})과 , #{end}연산
			beginPerPage = (nowPage - 1) * numPerPage + 1;
			endPerPage = (beginPerPage - 1) + numPerPage;

			pgSvo.setBegin(beginPerPage);
			pgSvo.setEnd(endPerPage);
			pgSvo.setLid(id);

			List<MovieUpDTO> muvo = myPageDaoInter.mvpage(pgSvo);
			// List<SnackUpDTO> snvo = myPageDaoInter.snpage(pgSvo);
			// List<LoginDTO> lovo = myPageDaoInter.qnapage(pgSvo);

			int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
			int endPage = startPage + pagePerBlock - 1;
			// endPage 의 연산의 범위가 우리가 구한 totalPage값 미만이라면
			// totalPage의 값으로 대입시킨다.
			if (endPage > totalPage) {
				endPage = totalPage;
			}

			request.setAttribute("v", v);
			map.put("muvo", muvo);
			map.put("nowPage", nowPage);
			map.put("startPage", startPage);
			map.put("endPage", endPage);
			map.put("pagePerBlock", pagePerBlock);
			map.put("totalPage", totalPage);
			System.out.println("nowPage=>"+nowPage);
			System.out.println("startPage=>"+startPage);
			System.out.println("endPage=>"+endPage);
			System.out.println("pagePerBlock=>"+pagePerBlock);
			System.out.println("totalPage=>"+totalPage);
			System.out.println("totalRecord=>"+totalRecord);

			
// 			modelandview 또는 model을 안쓴 이유는 request.setAttribute로 뷰단으로 값을 전달 할 수 있기 때문
//			model.addAttribute("muvo", muvo);
//			model.addAttribute("snvo", snvo);
//			model.addAttribute("lovo", lovo);
//			model.addAttribute("nowPage", nowPage);
//			model.addAttribute("startPage", startPage);
//			model.addAttribute("endPage", endPage);
//			model.addAttribute("pagePerBlock", pagePerBlock); // 설정된 5
//			model.addAttribute("totalPage", totalPage);

			// request.setAttribute("muvo", muvo);
//             request.setAttribute("snvo", snvo);
//             request.setAttribute("lovo", lovo);

		} 
		return map;

	}
}