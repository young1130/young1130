package movie.pak.controller.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import movie.pak.dao.movie.MovieUpDAOInter;

@RestController
@RequestMapping(value = "/movier")
public class MovieUpRestController  {

   @Autowired
   private MovieUpDAOInter movieUpDAOInter;
   
   @RequestMapping(value = "/getavg")
   public float mgoodAvg(int mno) {
      System.out.println("���� ����");
      float avg=movieUpDAOInter.mgoodAvg(mno);
      System.out.println("������?"+avg);
      return avg;
   }
   
   
}