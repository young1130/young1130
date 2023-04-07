package movie.pak.dao;

import java.util.List;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.PageSearchDTO;
import movie.pak.dto.SnackUpDTO;

public interface MyPageDAOInter {


	// public List<MovieUpDTO> movieP(String id); //영화예매내역 출력
	// public List<SnackUpDTO> snackP(String id); //스낵구매내역 출력
	// public List<LoginDTO> qnaP(String id); //Q&A 내역 출력
	public int getCnt(String id); // 구매내역 페이징
	public List<MovieUpDTO> mvpage(PageSearchDTO pgSvo); //영화예매내역 페이징
	public List<LoginDTO> qnapage(PageSearchDTO pgSvo); //큐엔에이 내역 페이징 - 로그인DTO에 큐엔에이DTO 있음
	public List<SnackUpDTO> snpage(PageSearchDTO pgSvo); //스낵 구매내역 페이징
	
}
