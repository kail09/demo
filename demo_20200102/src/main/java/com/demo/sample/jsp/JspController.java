package com.demo.sample.jsp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
public class JspController {

    @RequestMapping(value="/")      // localhost
    public String root() {
        return "index";          	// 실제 호출될 /WEB-INF/view/index.jsp        
    }
    
    @RequestMapping(value="/") 
    public String loginByGet(){ 
    	return "login"; 
    }

}
