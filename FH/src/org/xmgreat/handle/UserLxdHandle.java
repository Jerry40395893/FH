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
import org.xmgreat.entity.EmailEntity;
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
  public void addVisit(HttpServletRequest request, VisitEntity visitEntity)
  {
    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      // 赋值
      visitEntity.setUserId(user.getUserId());

    }
    visitEntity.setStyle(20);

    VisitLxdBizImpl.addVisit(visitEntity);
    System.out.println("添加结束");
  }

  /** 添加关注 */
  @RequestMapping(value = "/addFocus.action", method = RequestMethod.POST,
    produces = "application/json;charset=utf-8")
  public @ResponseBody String addFocus(HttpServletRequest request,
    FocusEntity focusEntity)
  {
    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      // 赋值
      focusEntity.setUserId(user.getUserId());

    }
    String flag = VisitLxdBizImpl.addFocus(focusEntity);
    return flag;
  }

  /** 显示看来谁的记录 */
  // localhost:8080/FH/user/lxd/showVisit.action?page=1
  @RequestMapping("/showVisit.action")
  public ModelAndView showVisit(HttpServletRequest request,
    VisitEntity visitEntity, int page)
  {
    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      // 赋值
      visitEntity.setUserId(user.getUserId());

    }
    // 赋值访问对象ID0代表查找所有
    visitEntity.setToUserId(0);
    // 19表示查找访问
    visitEntity.setStyle(19);
    // 查找数据
    VisitLxdBizImpl.selectPageVisit(request, visitEntity, page);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/visit");
    return mv;
  }

  /** 显示谁看了我的记录 */
  // localhost:8080/FH/user/lxd/showVisited.action?page=1
  @RequestMapping("/showVisited.action")
  public ModelAndView showVisited(HttpServletRequest request,
    VisitEntity visitEntity, int page)
  {
    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {

      // 赋值访问对象ID0代表查找所有
      visitEntity.setToUserId(user.getUserId());

    }
    // 赋值
    visitEntity.setUserId(0);
    // 19表示查找访问
    visitEntity.setStyle(19);
    // 查找数据
    VisitLxdBizImpl.selectPageVisit(request, visitEntity, page);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/visited");
    return mv;
  }

  /** 显示我赞了谁记录 */
  // localhost:8080/FH/user/lxd/showAdmire.action?page=1
  @RequestMapping("/showAdmire.action")
  public ModelAndView showAdmire(HttpServletRequest request,
    VisitEntity visitEntity, int page)
  {
    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      // 赋值
      visitEntity.setUserId(user.getUserId());

    }
    // 赋值访问对象ID0代表查找所有
    visitEntity.setToUserId(0);
    // 19表示查找访问
    visitEntity.setStyle(20);
    VisitLxdBizImpl.selectPageVisit(request, visitEntity, page);
    ModelAndView mv = new ModelAndView();
    System.out.println("调到赞");
    mv.setViewName("bw/admire");
    return mv;
  }

  /** 显示谁赞了我记录 */
  // localhost:8080/FH/user/lxd/showAdmired.action?page=1
  @RequestMapping("/showAdmired.action")
  public ModelAndView showAdmired(HttpServletRequest request,
    VisitEntity visitEntity, int page)
  {

    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {

      // 赋值访问对象ID0代表查找所有
      visitEntity.setToUserId(user.getUserId());

    }
    // 赋值
    visitEntity.setUserId(0);
    // 19表示查找访问
    visitEntity.setStyle(20);
    VisitLxdBizImpl.selectPageVisit(request, visitEntity, page);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/admired");
    System.out.println("调到赞了");
    return mv;
  }

  /** 显示我关注了谁 */
  // localhost:8080/FH/user/lxd/showFocus.action?page=1
  @RequestMapping("/showFocus.action")
  public ModelAndView showFocus(HttpServletRequest request,
    FocusEntity focusEntity, int page)
  {

    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {

      // 赋值访问对象ID0代表查找所有
      focusEntity.setUserId(user.getUserId());

    }
    // 赋值
    focusEntity.setToUserId(0);
    focusEntity.setDeleteId(21);
    VisitLxdBizImpl.selectPageFocus(request, focusEntity, page);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/focus");
    return mv;
  }

  /** 显示谁赞了我记录 */
  // localhost:8080/FH/user/lxd/showFocused.action?page=1
  @RequestMapping("/showFocused.action")
  public ModelAndView showFocused(HttpServletRequest request,
    FocusEntity focusEntity, int page)
  {

    // 获取session对象
    HttpSession session = request.getSession();
    // 获取user对象
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {

      // 赋值访问对象ID0代表查找所有
      focusEntity.setToUserId(user.getUserId());

    }
    // 赋值
    focusEntity.setUserId(0);
    VisitLxdBizImpl.selectPageFocus(request, focusEntity, page);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/focused");
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
    /** 从session获取用户信息 ，然后通过ID查出智能匹配对象 */
    HttpSession session = request.getSession();
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      visitEntity.setUserId(user.getUserId());
      // 添加访问记录
      VisitLxdBizImpl.addVisit(visitEntity);
    }

    // 获取信息
    userLxdBizImpl.getUserInfo(visitEntity, request);
    // 返回页面
    mv.setViewName("bw/toUserInfo");
    return mv;
  }

  /** 跳到写信页面 */
  // localhost:8080/FH/user/lxd/showWrite.action
  @RequestMapping("/showWrite.action")
  public ModelAndView showWrite(HttpServletRequest request,
    VisitEntity visitEntity)
  {

    ModelAndView mv = new ModelAndView();
    /** 从session获取用户信息 ，然后通过ID查出智能匹配对象 */
    HttpSession session = request.getSession();

    // 获取信息
    userLxdBizImpl.getUser(visitEntity, request);
    // 返回页面
    mv.setViewName("bw/writeEmail");
    return mv;
  }

  /** 写信 */
  // localhost:8080/FH/user/lxd/addEmail.action
  @RequestMapping("/addEmail.action")
  public ModelAndView addEmail(HttpServletRequest request,
    EmailEntity emailEntity)
  {
    System.out.println("addEmail");
    ModelAndView mv = new ModelAndView();
    /** 从session获取用户信息 ，然后通过ID查出智能匹配对象 */
    HttpSession session = request.getSession();
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      emailEntity.setUserId(user.getUserId());

    }
    System.out.println("msg=" + emailEntity.getMsg());
    System.out.println("user" + emailEntity.getUserId());
    System.out.println("touser" + emailEntity.getToUserId());
    userLxdBizImpl.addEmail(emailEntity);
    // 返回页面
    mv.setViewName("bw/MyCompany");
    return mv;
  }

  /** 查询所有未读信件 */
  // localhost:8080/FH/user/lxd/showUnemail.action?page=1
  @RequestMapping("/showUnemail.action")
  public ModelAndView showUnemail(HttpServletRequest request,
    EmailEntity emailEntity, int page)
  {
    System.out.println("addEmail");
    ModelAndView mv = new ModelAndView();
    /** 从session获取用户信息 ，然后通过ID查出智能匹配对象 */
    HttpSession session = request.getSession();
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      emailEntity.setUserId(user.getUserId());

    }
    emailEntity.setToUserId(0);
    emailEntity.setStage(1);

    userLxdBizImpl.selectPageEmail(request, emailEntity, page);
    // 返回页面
    mv.setViewName("bw/unreadEmail");
    return mv;
  }

}
