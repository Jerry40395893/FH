package org.xmgreat.handle;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.entity.AdminEntity;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin")
public class AdminHandle
{

  @Resource
  private AdminEntity adminEntity;

  @RequestMapping("/login.action")
  public ModelAndView login()
  {
    // 跳转后台的登录页面
    System.out.println("执行login页面");
    ModelAndView mav = new ModelAndView();
    mav.setViewName("web/login");
    return mav;
  }

  @RequestMapping(value = "/adminmain.action")
  public String adminmain(HttpServletRequest request, AdminEntity admin)
  {
    // 登录进入后台首页
    System.out.println("登录进入后台首页");
    HttpSession session = request.getSession();
    // adminEntity=iUserDao.login(admin);//调用biz或者dao里的方法
    if (adminEntity != null && adminEntity.getType().equals("1"))
    {
      session.setAttribute("admin", admin);
      return "web/adminmain";
    } else
    {
      return "web/login";
    }

  }

}
