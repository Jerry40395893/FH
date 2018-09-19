package org.xmgreat.handle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 	类名：	BWHandler 18-9-19
 * 	建立者：	何卧岩
 * 	用途：	前台页面通用Handler
 */

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/bw")	
public class BWHandler {

	//to bw/index.jsp
	@RequestMapping("/index.action")
	public ModelAndView index(){
		return new ModelAndView("bw/index");
	}
	
}
