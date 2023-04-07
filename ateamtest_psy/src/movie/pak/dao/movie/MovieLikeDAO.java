package movie.pak.dao.movie;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import movie.pak.dto.MovieLikeDTO;

@Repository
public class MovieLikeDAO implements MovieLikeDAOInter{
	
	@Autowired
	private SqlSessionTemplate ss;



	@Override
	public void addLike(MovieLikeDTO mlvo) {
		 ss.insert("movielike.addLike",mlvo);
		
	}

	@Override
	public void delLike(MovieLikeDTO mlvo) {
	      ss.delete("movielike.delLike",mlvo);
		
	}

	@Override
	public int likeCnt(MovieLikeDTO mlvo) {
	      return ss.selectOne("movielike.likeCnt",mlvo);
	}

	@Override
	public int mylikeCnt(MovieLikeDTO mlvo) {
		 return ss.selectOne("movielike.mylikeCnt",mlvo);
	}



}
