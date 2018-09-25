/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：MyCompanyHandle.java
 *
 *创建时间：2018年9月20日
 *当前版本：v1.0
 */
package org.xmgreat.handle;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.CpQxBiz;
import org.xmgreat.entity.CityEntity;
import org.xmgreat.entity.UserEntity;

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
	//private UserEntity userEntity;
	

	/**
	 * 我的佳缘页面
	 */
	@RequestMapping("/showMycompany.action")
   public ModelAndView showMycompany() {
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("bw/MyCompany");
	   return mv;
   }
	/**
	 * 我的资料页面
	 */
	@RequestMapping("/showMyData.action")
	public ModelAndView MyData() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bw/MyData");
		return mv;
		
	}
	
	/**
	 * 内心独白页面
	 */
	@RequestMapping("/showSoliloquy.action")
	public ModelAndView showSoliloquy() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bw/Soliloquy");
		return mv;
		
	}
	
	/**
	 * 我的照片页面
	 */
	@RequestMapping("/showPhoto.action")
	public ModelAndView showPhoto() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bw/Photo");
		return mv;
		
	}
	
	
	@RequestMapping("/showCity.action")
	@ResponseBody
	public CityEntity selectArea() {
		
		city = cpQxBizImpl.selectCity();
		
		
		return city;	
		
	}
	/**
	 * 保存我的资料
	 */
	@RequestMapping("/saveData.action" )
	public ModelAndView saveData(UserEntity userEntity) {
		
		System.out.println("666"+userEntity.getUserName());
		cpQxBizImpl.saveData(userEntity);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bw/MyCompany");
		
		
		return mv;
	}
	
	/**
	 * 保存我的内心独白
	 */
	@RequestMapping("/saveSoliloquy.action")
	public ModelAndView saveSoliloquy(UserEntity userEntity) {
		
		System.out.println("独白"+userEntity.getInformation());
		cpQxBizImpl.saveSoliloquy(userEntity);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bw/MyCompany");
		
		
		return mv;
	}
	
	@RequestMapping(value="/fileact.action", method=RequestMethod.POST)
	public  ModelAndView fileact(MultipartFile fileact){
		String filename = fileact.getOriginalFilename();
		System.out.println("获取到的文件名:" + filename);
		try {
			fileact.transferTo(new File("D:/" + filename));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bw/Photo");
		return mav;
	}
	
	
	
}
