package movie.pak.controller.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "chatmove")
public class ControllerChat {
	
		@GetMapping(value = "/chatForm")
		public String chat() {
			return "chat/chatbot";
		}
	
}
