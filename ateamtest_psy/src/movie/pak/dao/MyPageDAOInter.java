package movie.pak.dao;

import java.util.List;

import movie.pak.dto.LoginDTO;
import movie.pak.dto.MovieUpDTO;
import movie.pak.dto.PageSearchDTO;
import movie.pak.dto.SnackUpDTO;

public interface MyPageDAOInter {


	// public List<MovieUpDTO> movieP(String id); //��ȭ���ų��� ���
	// public List<SnackUpDTO> snackP(String id); //�������ų��� ���
	// public List<LoginDTO> qnaP(String id); //Q&A ���� ���
	public int getCnt(String id); // ���ų��� ����¡
	public List<MovieUpDTO> mvpage(PageSearchDTO pgSvo); //��ȭ���ų��� ����¡
	public List<LoginDTO> qnapage(PageSearchDTO pgSvo); //ť������ ���� ����¡ - �α���DTO�� ť������DTO ����
	public List<SnackUpDTO> snpage(PageSearchDTO pgSvo); //���� ���ų��� ����¡
	
}
