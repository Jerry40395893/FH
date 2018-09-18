package org.xmgreat.handle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/user")
public class UserHandle
{
  // localhost:8080/FH/user/showWelcom.action
  @RequestMapping("/showWelcom.action")
  public ModelAndView showWelcom()
  {
    ModelAndView mv = new ModelAndView();
    /** springMVC会自动找到路径，然后进行页面跳转，展示欢迎页 */
    mv.setViewName("bw/index");
    return mv;
  }
}
