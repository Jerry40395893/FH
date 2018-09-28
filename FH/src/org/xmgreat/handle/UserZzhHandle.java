package org.xmgreat.handle;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.AccZzhBizImpl;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WeathEntity;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/user/zzh")
public class UserZzhHandle
{

  @Resource
  private WeathEntity weathEntity;

  @Resource
  private AccZzhBizImpl accZzhBizImpl;

  @Resource
  private UserEntity userEntity;


  

//会员管理列表显示
  @RequestMapping(value = "/accList.action")  
  public ModelAndView accList(HttpServletRequest request,ConditionEntity uet) {
	  System.out.println("账单表显示");
	  HttpSession session = request.getSession();	//获取前台的userid
	  UserEntity userEntity= (UserEntity) session.getAttribute("user");
	  
	  //uet.setUserId(userEntity.getUserId());
	  uet.setRequest(request);
	  ModelAndView mav = new ModelAndView("bw/userBillList");
	  accZzhBizImpl.selecAcc(uet);
	  accZzhBizImpl.selecBala(uet);
	  return mav; 
  }
 
}