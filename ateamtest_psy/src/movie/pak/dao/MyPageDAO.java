package movie.pak.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.PageSearchDTO;
import movie.pak.dto.SnackUpDTO;

@Repository
public class MyPageDAO implements MyPageDAOInter{

	@Autowired
	private SqlSessionTemplate ss;

//	@Override
//	public List<MovieUpDTO> movieP(String id) {
//		List<MovieUpDTO> muvo = ss.selectList("mypagep.moviep", id);
//		return muvo;
//	}

//	@Override
//	public List<SnackUpDTO> snackP(String id) {
//		return ss.selectList("mypagep.snackp", id);
//	}

//	@Override
//	public List<LoginDTO> qnaP(String id) {
//		return ss.selectList("mypagep.qnap", id);
//	}

	@Override
	public int getCnt(String id) {
		return ss.selectOne("mypagep.pageCount",id);
	}

	@Override
	public List<MovieUpDTO> mvpage(PageSearchDTO pgSvo) {
		return ss.selectList("mypagep.mvpage",pgSvo);
	}

	@Override
	public List<LoginDTO> qnapage(PageSearchDTO pgSvo) {
		return ss.selectList("mypagep.qnapage",pgSvo);
	}

	@Override
	public List<SnackUpDTO> snpage(PageSearchDTO pgSvo) {
		return ss.selectList("mypagep.snpage",pgSvo);
	}  
	
	
}
