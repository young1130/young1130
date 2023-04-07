package movie.pak.dao.movie;

import movie.pak.dto.MovieLikeDTO;

public interface MovieLikeDAOInter {

	public void addLike(MovieLikeDTO mlvo);
	public void delLike(MovieLikeDTO mlvo); 
	public int likeCnt(MovieLikeDTO mlvo);
	public int mylikeCnt(MovieLikeDTO mlvo);
	
}
