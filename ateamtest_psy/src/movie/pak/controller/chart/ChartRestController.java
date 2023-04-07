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
	   @Autowired // ���ܿͶ�
	   public ChartDAOInter chartInter;

	   // produces = "text/html;charset=euc-kr") => content-Type�� �����ϴ� �Ӽ�
	   @RequestMapping(value = "/genDonut", produces = "application/json;charset=utf-8")
	   public String genChart(int mno) {

	      String mvTitle = chartInter.movTitle(mno);
	      System.out.println("��ȭ����=> " + mvTitle); //��ȭ����

	      List<LoginDTO> list = chartInter.genDonut(mno);
//	      LoginDTO a = list.get(0);
//	      int b = a.getCnt();
//	      String b2 = a.getLgender();
	      //���Ÿ� �� ����� ���� ��쿡 0 ó��
	      Map<String, Integer> map = new HashedMap();

	      for (int i = 0; i < list.size(); i++) {
	         map.put(list.get(i).getLgender(), list.get(i).getCnt());
	      }
	      //System.out.println("����b" + b2);
	      //System.out.println("��b" + b);

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
	      
	      String mvTitle = chartInter.movTitle(mno); //��ȭ ���� ��������
	      System.out.println("----------");
	      List<Map<String, Integer>> list = chartInter.ageBarlist(mno); //�ʿ� ��Ƽ� ����Ʈ�� ��������
	      Map<Object, Object> map = new LinkedHashMap<Object, Object>(); //HashMap�� ���� ������� ����ȵ�. �Ǵ°� ��
	            //HashedMap(); // Map<String, Integer> �ȵ�.......����???
	      System.out.println("list=>"+list);
	      System.out.println("list[1]=>"+list.get(1));
	      System.out.println("list[ages]=>"+list.get(1).get("AGES"));
	      System.out.println("list[cnt]=>"+list.get(1).get("CNT"));
	      
	      for (int i = 0; i < list.size(); i++) { //����Ʈ ������ ���ؼ�
	         map.put(list.get(i).get("AGES"), list.get(i).get("CNT")); // k��,v�� �����ؼ�map�ֱ� 
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
