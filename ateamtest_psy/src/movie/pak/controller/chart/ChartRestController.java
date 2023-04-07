package movie.pak.controller.chart;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import movie.pak.dao.movie.ChartDAOInter;
import movie.pak.dto.LoginDTO;

@RestController
public class ChartRestController {
	   @Autowired // 땡겨와라
	   public ChartDAOInter chartInter;

	   // produces = "text/html;charset=euc-kr") => content-Type을 지정하는 속성
	   @RequestMapping(value = "/genDonut", produces = "application/json;charset=utf-8")
	   public String genChart(int mno) {

	      String mvTitle = chartInter.movTitle(mno);
	      System.out.println("영화제목=> " + mvTitle); //영화제목

	      List<LoginDTO> list = chartInter.genDonut(mno);
//	      LoginDTO a = list.get(0);
//	      int b = a.getCnt();
//	      String b2 = a.getLgender();
	      //예매를 한 사람이 없을 경우에 0 처리
	      Map<String, Integer> map = new HashedMap();

	      for (int i = 0; i < list.size(); i++) {
	         map.put(list.get(i).getLgender(), list.get(i).getCnt());
	      }
	      //System.out.println("성별b" + b2);
	      //System.out.println("수b" + b);

	      String res = null;
	      ObjectMapper mapper = new ObjectMapper(); //Jason <=> java
	      try {
	         res = mapper.writeValueAsString(map); 
	         res = "[{\"movieTitle\":\"" + mvTitle + "\"}," + res + "]";
	         System.out.println(res);
	      } catch (JsonProcessingException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      return res;
	   }
	   
	   @RequestMapping(value = "/ageBar", produces = "application/json;charset=utf-8")
	   public String ageChart(int mno) {
	      
	      String mvTitle = chartInter.movTitle(mno); //영화 제목 가져오기
	      System.out.println("----------");
	      List<Map<String, Integer>> list = chartInter.ageBarlist(mno); //맵에 담아서 리스트로 가져오자
	      Map<Object, Object> map = new LinkedHashMap<Object, Object>(); //HashMap은 저장 순서대로 저장안됨. 되는건 얘
	            //HashedMap(); // Map<String, Integer> 안됨.......왜지???
	      System.out.println("list=>"+list);
	      System.out.println("list[1]=>"+list.get(1));
	      System.out.println("list[ages]=>"+list.get(1).get("AGES"));
	      System.out.println("list[cnt]=>"+list.get(1).get("CNT"));
	      
	      for (int i = 0; i < list.size(); i++) { //리스트 사이즈 구해서
	         map.put(list.get(i).get("AGES"), list.get(i).get("CNT")); // k값,v값 설정해서map넣기 
	      }
	      // -----------
	      String res = null;
	      ObjectMapper mapper = new ObjectMapper();
	      try {
	         res = mapper.writeValueAsString(map);
	         res = "[{\"movieTitle\":\"" + mvTitle + "\"}," + res + "]";
	         System.out.println(res);
	      } catch (JsonProcessingException e) {
	         e.printStackTrace();
	      }
	      return res;
	      // -----------
	   }
}
