package movie.pak.controller.chatbot;

import java.io.FileInputStream;
import java.util.Properties;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value = "/chat")
public class RestControllerChatbot {
   private static Properties prop;
   private static String path;

   @RequestMapping(value = "/chatbot", produces = "application/json;charset=utf-8")
   public String printChat(String key) {
      System.out.println("key=>"+key);
      prop = new Properties();
      path = "C:\\Users\\123\\Desktop\\������\\workspace\\ateamtestproject\\WebContent\\WEB-INF\\views\\chat\\chatbot.properties";

      String value = "";
      try (FileInputStream fis = new FileInputStream(path)) {
         prop.load(fis);
         value = prop.getProperty(key, "1�� 2�� 3�� �� �Է����ּ���.");

      } catch (Exception e) {
         e.printStackTrace();
      }
      System.out.println(value);
      return value;
      
   }

   
}