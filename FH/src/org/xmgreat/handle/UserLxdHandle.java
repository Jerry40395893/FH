package org.xmgreat.handle;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.VisitLxdBiz;
import org.xmgreat.entity.VisitEntity;


/*
 * 作者：林小东
 * 用途：处理前台用户业务
 */
@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/user/lxd")
public class UserLxdHandle
{
	@Resource
	private VisitLxdBiz VisitLxdBizImpl;
	
	 /** 赞添加记录*/
	@RequestMapping("/addVisit.action")
	  public void addVisit( VisitEntity visitEntity)
	  {	
		 VisitLxdBizImpl.addVisit(visitEntity);	
	  }
	
	 /** 显示访问或赞的记录*/
	 // localhost:8080/FH/user/showWelcom.action
	  @RequestMapping("/showVisit.action")
	  public ModelAndView showWelcom(HttpServletRequest request,VisitEntity visitEntity,int page)
	  {
		  VisitLxdBizImpl.selectPageVisit(request,visitEntity, page);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("bw/visit");
	    return mv;
	  }
	
	
}
