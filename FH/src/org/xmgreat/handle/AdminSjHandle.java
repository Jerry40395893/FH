package org.xmgreat.handle;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.ComSjBizImpl;
import org.xmgreat.entity.ConditionEntity;

/*
 * 作者：沈杰
 * 用途：处理管理端业务
 */

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin/sj")
public class AdminSjHandle
{
  @Resource
  private ComSjBizImpl comSjBizImpl;
  @Resource
  private ConditionEntity conditionEntity;

  @RequestMapping("/comManager.action")
  public ModelAndView comManager(HttpServletRequest request)
  {
    /** 跳转后台套餐管理页面，展示套餐信息。localhost:8080/admin/sj/comManager.action */
    ModelAndView mav = new ModelAndView();
    conditionEntity.setRequest(request);
    comSjBizImpl.geComboEntity(conditionEntity);
    mav.setViewName("web/comManager");
    return mav;
  }
}
