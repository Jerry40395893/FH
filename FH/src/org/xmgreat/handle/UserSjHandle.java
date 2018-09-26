package org.xmgreat.handle;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.ComSjBizImpl;

/*
 * 作者：沈杰
 * 用途：处理前台用户业务
 */
@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/user/sj")
public class UserSjHandle
{
  @Resource
  private ComSjBizImpl comSjBizImpl;

  @RequestMapping("/showBanking.action")
  public ModelAndView showBanking()
  {
    // 跳转前台人气排行榜获取用户列表前十男神和女神 localhost:8080/FH/user/sj/showBanking.action
    ModelAndView mav = new ModelAndView();
    comSjBizImpl.getUserList("获取人气排行榜信息");
    mav.setViewName("bw/banking");
    return mav;
  }

  // localhost:8080/FH/user/sj/showWelcom.action
  @RequestMapping("/showWelcom.action")
  public ModelAndView showWelcom()
  {
    ModelAndView mv = new ModelAndView();
    /** springMVC会自动找到路径，然后进行页面跳转，展示欢迎页 .并且更新用户访问量 */
    comSjBizImpl.updateWebsite();
    /** 获取智能推荐的用户列表 */
    /* comSjBizImpl.getRecomList(1); */
    mv.setViewName("bw/index");
    return mv;
  }
}
