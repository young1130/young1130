package movie.pak.controller.movie;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import movie.pak.dao.movie.MovieLikeDAOInter;
import movie.pak.dto.MovieLikeDTO;

@RestController
@RequestMapping(value = "/like")
public class MovieLikeRestController {

   @Autowired
   private MovieLikeDAOInter movieLikDaoInter;
   
   
   // ���ƿ� Ŭ�� �� ����Ǵ� �޼���
   @RequestMapping(value = "/addlike", produces = "application/json;charset=utf-8")
   public int Like(MovieLikeDTO mlvo){
	   
      int cnt=movieLikDaoInter.mylikeCnt(mlvo); //insert �� ���ƿ� �� ��ȯ ���ƿ並 ���� �ʾҴٸ�  0��ȯ
      if (cnt==0) { // ���ƿ� ����� ���ٸ� insert���� ����ȴ�. => ���ƿ� ��� ����
         movieLikDaoInter.addLike(mlvo);
      }else { // ���ƿ� ����� �ִٸ� delete���� ����ȴ�. => ���ƿ� ��� ����
      movieLikDaoInter.delLike(mlvo);
      }
      int cnt2=movieLikDaoInter.mylikeCnt(mlvo); //insert�� �Ǵ� delete�� ���� ������ ���ƿ� ����� �̱� ���Ͽ� mylikeCnt�޼��带 �ѹ� �� ����
      int totalcnt = movieLikDaoInter.likeCnt(mlvo);
      return cnt2; //insert / delete�� ���� ���� ���ƿ� ���� ��ȯ �� ���� return
   }
   
   // ������ ���� �� ����Ǵ� �޼���
   @RequestMapping(value = "/likecnt2", produces = "application/json;charset=utf-8")
   public int likeCnt(MovieLikeDTO mlvo){
      // �ʱ� ��Ʈ ����� ���� => ���ƿ� ����� ���ٸ� "�� ��Ʈ" / ���ƿ� ����� �ִٸ� "��Ʈ ���"
      int cnt=movieLikDaoInter.mylikeCnt(mlvo);
        return cnt; //���ƿ� ��� ����� return
   }
   
   
   @RequestMapping(value = "/totalCnt2", produces = "application/json;charset=utf-8")
   public int totalCnt2(MovieLikeDTO mlvo) {
	   
	   int totalcnt2 = movieLikDaoInter.likeCnt(mlvo);
	   System.out.println("totalcnt2 : "+totalcnt2);
	   System.out.println("------------------------");
	   
	   return totalcnt2;
   }
   @RequestMapping(value = "/totalCnt3", produces = "application/json;charset=utf-8")
   public int totalCnt3(MovieLikeDTO mlvo) {
	   
	   int totalcnt3 = movieLikDaoInter.likeCnt(mlvo);
	   
	   System.out.println("totalcnt3 : "+totalcnt3);
	   System.out.println("------------------------");
	   
	   return totalcnt3;
   }
}