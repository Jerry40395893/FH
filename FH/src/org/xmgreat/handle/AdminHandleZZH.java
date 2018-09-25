package org.xmgreat.handle;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.AdminZzhBizImpl;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.UserEntity;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin/zzh")
public class AdminHandleZZH
{

  @Resource
  private AdminEntity adminEntity;

  @Resource
  private AdminZzhBizImpl adminBizImpl;

  @Resource
  private UserEntity userEntity;

  private List<AdminEntity> uList;
  private List<MenuEntity> menulist;
  private List<UserEntity> userList;
  private AdminEntity adminB;

  // localhost:8080/FH/admin/zzh/login.action --跳转登录路径
  // 跳转后台的登录页面
  @RequestMapping("/login.action")
  public ModelAndView login()
  {
    System.out.println("执行login页面");
    ModelAndView mav = new ModelAndView();
    mav.setViewName("web/login");
    return mav;
  }

  @RequestMapping(value = "/adminmain.action")
  public ModelAndView adminmain(HttpServletRequest request,
    AdminEntity adminEntity)
  {
    // 登录进入后台首页
    System.out.println("登录进入后台首页");
    HttpSession session = request.getSession();
    adminB = adminBizImpl.login(adminEntity);// 调用biz或者dao里的方法 等会用到》》》》》 &&
                                             // adminEntity.getType().equals("1")
    if (adminB != null)
    {
      ModelAndView mav1 = new ModelAndView("web/index");
      menulist = adminBizImpl.selecMenu(adminB);
      session.setAttribute("AdminEntity", adminB);
      mav1.addObject("menulist", menulist);
      return mav1;
    } else
    {
      ModelAndView mav2 = new ModelAndView("web/login");
      return mav2;
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

      uList = adminBizImpl.selecAdmin(udf);
      if (uList.size() == 0)
      {
        int page = udf.getPage() - 1;
        udf.setPage(page);
      }
    }
    uList = adminBizImpl.selecAdmin(udf);
    for (int i = 0; i < uList.size(); i++)
    {
      System.out.println(uList.get(i));
    }
    System.out.println(uList.size());
    mav.addObject("ulist", uList);
    return mav;
  }

  // 删除管理员--假删除
  @RequestMapping(value = "/delAdmin.action") //
  public ModelAndView delAdmin(HttpServletRequest request, AdminEntity udf)
  {
    System.out.println("删除");
    ModelAndView mav = new ModelAndView("web/adminList");
    adminBizImpl.delAdmin(udf);
    uList = adminBizImpl.selecAdmin(udf);
    mav.addObject("ulist", uList);
    return mav;
  }

  // 跳转后台的添加管理员
  @RequestMapping("/showAddAdmin.action")
  public ModelAndView showAddAdmin()
  {
    System.out.println("执行添加管理员页面");
    ModelAndView mav = new ModelAndView();
    mav.setViewName("web/addAdmin");
    return mav;
  }

  // 添加管理员
  @RequestMapping(value = "/addAdmin.action") //
  public ModelAndView addAdmin(HttpServletRequest request, AdminEntity udf)
  {
    System.out.println("添加");
    ModelAndView mav = new ModelAndView("web/adminList");
    adminBizImpl.addAdmin(udf);
    uList = adminBizImpl.selecAdmin(udf);
    mav.addObject("ulist", uList);
    return mav;
  }

  // 重置密码
  @RequestMapping(value = "/upAdminPsw.action")
  public ModelAndView upAdminPsw(HttpServletRequest request, AdminEntity udf)
  {
    System.out.println("重置密码");
    ModelAndView mav = new ModelAndView("web/adminList");
    adminBizImpl.upPsw(udf);
    uList = adminBizImpl.selecAdmin(udf);
    mav.addObject("ulist", uList);
    return mav;
  }

  // 会员管理列表显示
  @RequestMapping(value = "/userList.action")
  public ModelAndView userList(HttpServletRequest request, ConditionEntity uet)
  {
    System.out.println("会员列表显示");
    ModelAndView mav = new ModelAndView("web/cusUserList");
    adminBizImpl.selecUserL(uet);
    return mav;
  }
}
