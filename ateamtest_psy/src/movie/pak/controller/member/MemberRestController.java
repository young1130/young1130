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
	// Pageó���� ���� �Ӽ�
	private int nowPage = 1; // ���� ������ �� -> �޴� �������� �����Ǵ� ����
	private int nowBlock = 1; // ���� �� -> [][][][][] -> 1block�� 5�� �迭 ����
	private int totalRecord; // �� �Խù� �� .Dao�� ���� ����
	private int numPerPage = 3; // �� �������� ������ �Խù� ��
	private int pagePerBlock = 3; // �� ���� ������ ������ ��
	private int totalPage; // ��ü ������ �� => totalRecord/numPerPage
	private int totalBlock; // ��ü ����
	private int beginPerPage; // �� �������� ���� �Խù��� index��
	private int endPerPage; // �� �������� ������ �Խù��� index��
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

			// nowPage�� ������ SQL���� start��(#{begin})�� , #{end}����
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
			// endPage �� ������ ������ �츮�� ���� totalPage�� �̸��̶��
			// totalPage�� ������ ���Խ�Ų��.
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

			
// 			modelandview �Ǵ� model�� �Ⱦ� ������ request.setAttribute�� ������� ���� ���� �� �� �ֱ� ����
//			model.addAttribute("muvo", muvo);
//			model.addAttribute("snvo", snvo);
//			model.addAttribute("lovo", lovo);
//			model.addAttribute("nowPage", nowPage);
//			model.addAttribute("startPage", startPage);
//			model.addAttribute("endPage", endPage);
//			model.addAttribute("pagePerBlock", pagePerBlock); // ������ 5
//			model.addAttribute("totalPage", totalPage);

			// request.setAttribute("muvo", muvo);
//             request.setAttribute("snvo", snvo);
//             request.setAttribute("lovo", lovo);

		} 
		return map;

	}
}