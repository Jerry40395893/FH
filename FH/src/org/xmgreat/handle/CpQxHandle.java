/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：MyCompanyHandle.java
 *
 *创建时间：2018年9月20日
 *当前版本：v1.0
 */
package org.xmgreat.handle;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.CpQxBiz;
import org.xmgreat.entity.CityEntity;

/**
 * @author 周群新
 *
 */
@Controller
@RequestMapping("/user/qx")
public class CpQxHandle
{
	@Resource
	private CpQxBiz cpQxBizImpl;
	private CityEntity city;

	@RequestMapping("showMycompany.action")
   public ModelAndView MyCompany() {
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("bw/MyCompany");
	   return mv;
   }
	@RequestMapping("showMyData.action")
	public ModelAndView MyData() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bw/MyData");
		return mv;
		
	}
	@RequestMapping("showCity.action")
	@ResponseBody
	public CityEntity selectArea() {
		
		city = cpQxBizImpl.selectCity();
		
		
		return city;
		
		
		
	}
	
}
