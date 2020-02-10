package com.kail.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
public class JspController {

    @RequestMapping(value="/main")      // localhost
    public String main() {
        return "index";          	// 실제 호출될 /WEB-INF/view/index.jsp        
    }
    
    @RequestMapping("/login") 
    public @ResponseBody String login(){ 
    	return "login"; 
    }

}
