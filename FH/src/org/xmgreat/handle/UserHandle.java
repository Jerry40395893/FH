package org.xmgreat.handle;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.UserBizImpl;
import org.xmgreat.entity.UserEntity;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/user")
public class UserHandle
{
  @RequestMapping("/showBanking.action")
  public ModelAndView showBanking()
  {
    // 跳转前台人气排行榜
    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/banking");
    return mav;
  }

  @Resource
  UserBizImpl userBizImpl;

  private String checkNullToString(String str)
  {
    return str == null ? "" : str;
  }

  // localhost:8080/FH/user/showWelcom.action
  @RequestMapping("/showWelcom.action")
  public ModelAndView showWelcom()
  {
    ModelAndView mv = new ModelAndView();
    /** springMVC会自动找到路径，然后进行页面跳转，展示欢迎页 */
    mv.setViewName("bw/index");
    return mv;
  }

  /*
   * // 前台模态框登录
   * 
   * @RequestMapping("/login.action") public ModelAndView
   * login(HttpServletRequest request, HttpServletResponse response, String
   * userName, String pasw, String url) {
   * 
   * userName = checkNullToString(userName); pasw = checkNullToString(pasw);
   * System.out.println(userName + "," + pasw + "," + url);
   * 
   * HttpSession session = request.getSession(); List<UserEntity> userList =
   * userBizImpl.select_Login(userName, pasw);
   * 
   * if (!userList.isEmpty()) { session.setAttribute("user", userList.get(0));
   * }else { url = "bw/login"; }
   * 
   * return new ModelAndView(url); }
   */

  // 前台模态框ajax登录
  @RequestMapping("/ajaxLogin.action")
  public @ResponseBody String ajaxLogin(HttpServletRequest request,
    HttpServletResponse response, String userAccount, String pasw)
  {
    String result = "false";
    List<UserEntity> userList = new ArrayList<UserEntity>();

    userAccount = checkNullToString(userAccount);
    pasw = checkNullToString(pasw);
    System.out.println(userAccount + "," + pasw);

    HttpSession session = request.getSession();
    System.out.println(userAccount.contains("@"));
    if (userAccount.contains("@"))
    {
      userList = userBizImpl.select_LoginByEmail(userAccount, pasw);
    } else
    {
      userList = userBizImpl.select_LoginByTeleNum(userAccount, pasw);
    }

    if (!userList.isEmpty())
    {
      result = "true";
      session.setAttribute("user", userList.get(0));
    }
    return result;
  }

}
