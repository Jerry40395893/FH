package org.xmgreat.handle;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.AdminBizImpl;
import org.xmgreat.entity.AdminEntity;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin")
public class AdminHandle
{

  @Resource
  private AdminEntity adminEntity;

  @Resource
  private AdminBizImpl adminBizImpl;
  private List<AdminEntity> ulist;
  private AdminEntity adminB;

  // localhost:8080/FH/admin/login.action
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
  public String adminmain(HttpServletRequest request, AdminEntity adminEntity)
  {
    // 登录进入后台首页
    System.out.println("登录进入后台首页");
    HttpSession session = request.getSession();
    adminB = adminBizImpl.login(adminEntity);// 调用biz或者dao里的方法 等会用到》》》》》 &&
                                             // adminEntity.getType().equals("1")
    if (adminB != null)
    {
      session.setAttribute("AdminEntity", adminB);
      return "web/index";
    } else
    {
      return "web/login";
    }

  }

  // 查询后台管理员
  @RequestMapping(value = "/adminList.action")
  public ModelAndView adminList(HttpServletRequest request, AdminEntity udf)
  {
    System.out.println("页数" + udf.getPage());
    ModelAndView mav = new ModelAndView("web/adminList");
    if (udf.getPage() <= 0)
    {
      int page = 1;
      udf.setPage(page);
    } else
    {
      ulist = adminBizImpl.selecAdmin(udf);
      if (ulist.size() == 0)
      {
        int page = udf.getPage() - 1;
        udf.setPage(page);
      }
    }
    ulist = adminBizImpl.selecAdmin(udf);
    for (int i = 0; i < ulist.size(); i++)
    {
      System.out.println(ulist.get(i));
    }
    System.out.println(ulist.size());
    mav.addObject("ulist", ulist);
    return mav;
  }

  @RequestMapping(value = "/delAdmin.action") //
  public ModelAndView delAdmin(HttpServletRequest request, AdminEntity udf)
  {

    return null;

  }

}
