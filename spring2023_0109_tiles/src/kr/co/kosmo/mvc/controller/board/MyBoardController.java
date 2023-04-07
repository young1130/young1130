package kr.co.kosmo.mvc.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.MyBoardDaoInter;
import kr.co.kosmo.mvc.vo.BoardVO;
import kr.co.kosmo.mvc.vo.PagingDTO;

@Controller
@RequestMapping(value = "/board") // ��з�
public class MyBoardController {

	@Autowired
	private MyBoardDaoInter myBoardDaoInter;
	//===
	private int nowPage = 1; // ���� ������ �� -> �޴� �������� �����Ǵ� ����
	private int nowBlock = 1; // ���� �� -> [][][][][] -> 1block�� 5�� �迭 ����
	private int totalRecord; // �� �Խù� �� .Dao�� ���� ����
	private int numPerPage = 10; // �� �������� ������ �Խù� ��
	private int pagePerBlock = 5; // �� ���� ������ ������ ��
	private int totalPage; // ��ü ������ �� => totalRecord/numPerPage
	private int totalBlock; // ��ü ����
	private int beginPerPage; // �� �������� ���� �Խù��� index��
	private int endPerPage; // �� �������� ������ �Խù��� index��

	@GetMapping(value = "/boardForm")
	public ModelAndView boardForm() {
		ModelAndView mav = new ModelAndView("board/boardForm");
		return mav;
	}

	@PostMapping(value = "/boardIn")
	public String boardIn(BoardVO vo) {
		System.out.println("subject=>" + vo.getSubject());
		System.out.println("contents" + vo.getContents());
		// private String reip, title, subject, contents, content, writer, bdate;
		// private int num;
		myBoardDaoInter.addBoard(vo);
		return "redirect:/board/boardList";
	}

	@GetMapping(value = "/boardList")
	public ModelAndView listBoard() {
		// ������ �̵���� 1
		ModelAndView mav = new ModelAndView("board/boardList");
		List<BoardVO> list = myBoardDaoInter.listBoard();
		// �̵������ ����Ʈ���� forward
		mav.addObject("list", list);
		// setAttribute�� ���� ȿ�� �̵��ϴ� �������� addObject�� ���� ������.
		// (key�� ����Ͽ� valueȣ��)
		// mav.setView("board/boardList");
		return mav;
	}

	@GetMapping(value = "/boardDetail")
	public ModelAndView detailBoard(int num) {
		ModelAndView mav = new ModelAndView("board/boardDetail");
		BoardVO vo = myBoardDaoInter.detailBoard(num);
		mav.addObject("vo", vo);
		return mav;
	}

	@GetMapping(value = "/boardDelete")
	public String deleteBoard(int num) {
		myBoardDaoInter.delBoard(num);
		return "redirect:/web/board/boardList";
	}

	@GetMapping(value = "/boardUpForm")
	public ModelAndView boardUpForm(int num) {
		ModelAndView mav = new ModelAndView("board/boardUpForm");
		BoardVO vo = myBoardDaoInter.detailBoard(num);
		mav.addObject("vo", vo);
		return mav;
	}

	@PostMapping(value = "/boardUp")
	public String upBoard(BoardVO vo) {
		int num = vo.getNum();
		myBoardDaoInter.upBoard(vo);
		return "redirect:/web/board/boardList";
	}

	@GetMapping(value = "/boardSearchList")
	public ModelAndView SearchlistBoard(String cPage, PagingDTO pvo) {
		totalRecord = myBoardDaoInter.getCnt(pvo);

		totalPage = (int) Math.ceil(totalRecord / (double) numPerPage);
		totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
		String s_page = cPage;
		if (s_page != null) {
			nowPage = Integer.parseInt(s_page);
		}
		beginPerPage = (nowPage - 1) * numPerPage + 1;
		endPerPage = (beginPerPage - 1) + numPerPage;

		pvo.setBegin(beginPerPage);
		pvo.setEnd(endPerPage);
		
		ModelAndView mav = new ModelAndView("board/boardSearchList");
		List<BoardVO> list = myBoardDaoInter.searchlistBoard(pvo);
		int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
		int endPage = startPage + pagePerBlock - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		
		
		mav.addObject("list", list);
		mav.addObject("nowPage", nowPage);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("pagePerBlock", pagePerBlock);
		mav.addObject("totalPage", totalPage);
		mav.addObject("SearchType",pvo.getSearchType());
		mav.addObject("SearchValue",pvo.getSearchValue());
		
		return mav;
	}
}
