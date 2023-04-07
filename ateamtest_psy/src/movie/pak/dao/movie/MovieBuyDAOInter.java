package movie.pak.dao.movie;

import java.util.List;

import movie.pak.dto.MovieBuyDTO;
import movie.pak.dto.MovieUpDTO;

public interface MovieBuyDAOInter {
	public void addMoviebuy(MovieBuyDTO vo);

	   // ���� �� ��ȭ ����Ʈ �̾Ƴ��� --> X
	   public List<MovieUpDTO> movieName();
	   
	   // ���Ž� �󿵰� �̾Ƴ���,�󿵽ð� �߰�!!! --> X
	   public List<MovieBuyDTO> moviePlace();
	   
	   
	   // ���Ž� total ����Ʈ
	   public List<MovieBuyDTO> getMovieTotalList(MovieBuyDTO vo);
	   
	   // getMovie ��ȭ ���� �̾Ƴ���
	   public MovieUpDTO getMovie(int num);
	   // getTheater ���� �̾Ƴ���
	   public List<MovieBuyDTO> getTheater(int num);
	   
	   // ���� �� ��ȭ ���� �� ����Ʈ �̾Ƴ��� --> join�� ���� 
	   public List<MovieUpDTO> movieList(int mno);
}
