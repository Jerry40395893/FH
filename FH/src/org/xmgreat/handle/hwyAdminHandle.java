package org.xmgreat.handle;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.hwyBizImpl;
import org.xmgreat.entity.ParameterEntity;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin/hwy")
public class hwyAdminHandle
{

  @Resource
  hwyBizImpl hwyBizImpl;

  // to ../web/parameterManage.jsp
  @RequestMapping("/parameterManage.action")
  public ModelAndView toParameterManage()
  {
    return new ModelAndView("web/ParameterManage");
  }

  // Ajax请求任意参数-ByID
  @RequestMapping("/getAnyParameter.action")
  public @ResponseBody List<ParameterEntity> getAnyParameter(
    Integer parameterID)
  {
    return hwyBizImpl.getParameterByPIds(parameterID);
  }

  // Ajax请求带分页任意参数-ByID
  @RequestMapping("/getAnyParameterWithPaging.action")
  public @ResponseBody List<ParameterEntity> getAnyParameterWithPaging(
    Integer parameterID)
  {
    return hwyBizImpl.getAnyParameterWithPaging(parameterID);
  }

}
