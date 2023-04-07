package movie.pak.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerMain {
	
	// (value = {"/","/main"}) => project run�� �ٷ� �ش� �޼��带 �����Ѵ�. 
	@RequestMapping(value = {"/","/main"})
	public String main() {
		return "index/index";	
	}
	
	
	@GetMapping(value = "/vip")
	public String membership() {
		return "membership/membership";
	}
	
}
