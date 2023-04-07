package movie.pak.controller.snackbuy;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import movie.pak.dao.snackbuy.SnackBuyDAOInter;
import movie.pak.dto.SnackBuyDTO;

@Controller
@RequestMapping(value = "/snackbuy")
public class SnackBuyController {
@Autowired
private SnackBuyDAOInter snackBuyDAOInter;

@RequestMapping(value = "/addSnack")
public String addSnack(String[] popname, String[] snacksaram) {
	System.out.println("==========================================");
	
	List<SnackBuyDTO> svolist = new ArrayList<SnackBuyDTO>();
	for(int i=0; i<popname.length; i++) {
		SnackBuyDTO svo = new SnackBuyDTO();	
		svo.setPopname(popname[i]);
		svo.setSnacksaram(Integer.parseInt(snacksaram[i]));
		svolist.add(svo);
		System.out.println("==========");
		System.out.println(svolist.get(i).getPopname());
		System.out.println(svolist.get(i).getSnacksaram());
	}
	
	snackBuyDAOInter.snackBuy(svolist);
	
	return "redirect:/main";
}

}
