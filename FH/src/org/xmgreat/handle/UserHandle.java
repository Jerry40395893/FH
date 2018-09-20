package org.xmgreat.handle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

  // localhost:8080/FH/user/showWelcom.action
  @RequestMapping("/showWelcom.action")
  public ModelAndView showWelcom()
  {
    ModelAndView mv = new ModelAndView();
    /** springMVC会自动找到路径，然后进行页面跳转，展示欢迎页 */
    mv.setViewName("web/banking");
    return mv;
  }
}
