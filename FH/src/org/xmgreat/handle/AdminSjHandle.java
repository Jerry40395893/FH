package org.xmgreat.handle;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.ComSjBizImpl;
import org.xmgreat.entity.ComboEntity;
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

  @RequestMapping("/comManager.action")
  public ModelAndView comManager(HttpServletRequest request,
    ConditionEntity con)
  {
    /** 跳转后台套餐管理页面，展示套餐信息。localhost:8080/FH/admin/sj/comManager.action */
    ModelAndView mav = new ModelAndView();
    con.setRequest(request);
    comSjBizImpl.geComboEntity(con);
    mav.setViewName("web/comManager");
    return mav;
  }

  @RequestMapping("/delete.action")
  public String delete(HttpServletRequest request, Integer comboId)
  {
    /** 删除某条套餐,删除成功后跳转到上一个action。localhost:8080/FH/admin/sj/delete.action */
    ModelAndView mav = new ModelAndView();
    comSjBizImpl.update(comboId);
    return "forward:comManager.action";

  }

  @RequestMapping("/alertCom.action")
  public ModelAndView alertCom(Integer comboId)
  {
    /** 套餐修改，需要获取本条套餐的整个对象信息。localhost:8080/FH/admin/sj/alertCom.action */
    ModelAndView mav = new ModelAndView();
    comSjBizImpl.getCom(comboId);
    mav.setViewName("web/alertCom");
    return mav;
  }

  @RequestMapping("/updateCom.action")
  public String updateCom(ComboEntity comboEntity)
  {
    /** 套餐提交修改，修改完成跳转至套餐列表。localhost:8080/FH/admin/sj/updateCom.action */
    ModelAndView mav = new ModelAndView();
    comSjBizImpl.updateCom(comboEntity);
    return "forward:comManager.action";
  }

  @RequestMapping("/add.action")
  public ModelAndView add(ComboEntity comboEntity)
  {
    /** 套餐提交修改，修改完成跳转至套餐列表。localhost:8080/FH/admin/sj/add.action */
    ModelAndView mav = new ModelAndView();
    mav.setViewName("web/addCom");
    return mav;
  }

  @RequestMapping("/subAdd.action")
  public String subAdd(ComboEntity comboEntity)
  {
    /** 套餐提交新增，修改完成跳转至套餐列表。localhost:8080/FH/admin/sj/subAdd.action */
    ModelAndView mav = new ModelAndView();
    comSjBizImpl.add(comboEntity);
    return "forward:comManager.action";
  }

  @RequestMapping("/checkName.action")
  public @ResponseBody ComboEntity checkName(ComboEntity comboEntity)
  {
    /** 套餐提交新增，修改完成跳转至套餐列表。localhost:8080/FH/admin/sj/subAdd.action */
    ComboEntity com = comSjBizImpl.getCombo(comboEntity.getName());
    return com;
  }
}
