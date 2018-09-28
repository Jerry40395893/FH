package org.xmgreat.handle;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.UserLxdBiz;
import org.xmgreat.biz.VisitLxdBiz;
import org.xmgreat.entity.FocusEntity;
import org.xmgreat.entity.UserEntity;
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
  @Resource
  private UserLxdBiz userLxdBizImpl;

  /** 赞添加记录 */
  @RequestMapping("/addVisit.action")
  public void addVisit(VisitEntity visitEntity)
  {
    System.out.println("添加赞");
    visitEntity.setStyle(20);
    System.out.println("to" + visitEntity.getToUserId());
    System.out.println("user" + visitEntity.getUserId());
    VisitLxdBizImpl.addVisit(visitEntity);
    System.out.println("添加结束");
  }

  /** 添加关注 */
  @RequestMapping(value = "/addFocus.action", method = RequestMethod.POST,
    produces = "application/json;charset=utf-8")
  public @ResponseBody String addFocus(FocusEntity focusEntity,
    HttpServletRequest request)
  {
    System.out.println("添加关注");
    /** 从session获取用户信息 ，然后通过ID查出智能匹配对象 */
    HttpSession session = request.getSession();
    UserEntity user = (UserEntity) session.getAttribute("user");
    String flag = null;
    if (user != null)
    {
      focusEntity.setUserId(user.getUserId());
      flag = VisitLxdBizImpl.addFocus(focusEntity);
    }

    System.out.println(flag);
    System.out.println("添加结束");
    return flag;
  }

  /** 添加关注 */
  @RequestMapping(value = "/addFocus.action", method = RequestMethod.POST,
    produces = "application/json;charset=utf-8")
  public @ResponseBody String addFocus(FocusEntity focusEntity)
  {
    System.out.println("添加关注");

    String flag = VisitLxdBizImpl.addFocus(focusEntity);
    System.out.println(flag);
    System.out.println("添加结束");
    return flag;
  }

  /** 显示访问或赞的记录 */
  // localhost:8080/FH/user/showWelcom.action
  @RequestMapping("/showVisit.action")
  public ModelAndView showWelcom(HttpServletRequest request,
    VisitEntity visitEntity, int page)
  {
    VisitLxdBizImpl.selectPageVisit(request, visitEntity, page);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/visit");
    return mv;
  }

  /** 显示对方信息 */
  // localhost:8080/FH/user/lxd/toUserInfo.action
  @RequestMapping("/toUserInfo.action")
  public ModelAndView showToUserInfo(HttpServletRequest request,
    VisitEntity visitEntity)
  {

    ModelAndView mv = new ModelAndView();

    visitEntity.setStyle(19);
    // 添加访问记录
    VisitLxdBizImpl.addVisit(visitEntity);
    // 获取信息
    userLxdBizImpl.getUserInfo(visitEntity.getToUserId(), request);
    // 返回页面
    mv.setViewName("bw/toUserInfo");
    return mv;
  }

}
