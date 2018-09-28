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
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.ComSjBiz;
import org.xmgreat.biz.CpQxBiz;
import org.xmgreat.entity.CityEntity;
import org.xmgreat.entity.SalaryEntity;
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
  @Resource
  private ComSjBiz comSjBizImpl;
  private CityEntity city;
  private SalaryEntity salary;
  @Resource
  private UserEntity user;

  @Autowired
  private HttpServletRequest request;
  @Autowired
  private HttpServletResponse response;
  @Autowired
  private ServletContext servletContext;

  /**
   * 我的佳缘页面
   */
  @RequestMapping("/showMycompany.action")
  public ModelAndView showMycompany(HttpServletRequest request)
  {

    ModelAndView mv = new ModelAndView();
    /** 从session获取用户信息 ，然后通过ID查出智能匹配对象 */
    HttpSession session = request.getSession();
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      comSjBizImpl.getRecomList(user.getUserId());
    } else
    {
      comSjBizImpl.getRecomList(1);
    }
    mv.setViewName("bw/MyCompany");
    return mv;
  }

  /**
   * 我的资料页面
   */
  @RequestMapping("/showMyData.action")
  public ModelAndView MyData()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/MyData");
    return mv;

  }

  /**
   * 内心独白页面
   */
  @RequestMapping("/showSoliloquy.action")
  public ModelAndView showSoliloquy()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Soliloquy");
    return mv;

  }

  /**
   * 我的照片页面
   */
  @RequestMapping("/showPhoto.action")
  public ModelAndView showPhoto()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Photo");
    return mv;

  }

  /**
   * 经济实力页面
   */
  @RequestMapping("/economics.action")
  public ModelAndView economics(SalaryEntity salaryEntity)
  {

    salary = cpQxBizImpl.selectEconomics(salaryEntity);

    request.setAttribute("salary", salary);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Economics");
    return mv;

  }

  /**
   * 生活方式页面
   */
  @RequestMapping("/life.action")
  public ModelAndView life()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/LifeStyle");
    return mv;

  }

  /**
   * 工作学习页面
   */
  @RequestMapping("/job.action")
  public ModelAndView job()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Job");
    return mv;

  }

  /**
   * 外贸体型页面
   */
  @RequestMapping("/appearance.action")
  public ModelAndView Appearance()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Appearance");
    return mv;

  }

  @RequestMapping("/showCity.action")
  @ResponseBody
  public CityEntity selectArea()
  {

    city = cpQxBizImpl.selectCity();

    return city;

  }

  /**
   * 保存我的资料
   */
  @RequestMapping("/saveData.action")
  public ModelAndView saveData(UserEntity userEntity)
  {

    System.out.println("666" + userEntity.getUserName());
    cpQxBizImpl.saveData(userEntity);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/MyCompany");

    return mv;
  }

  /**
   * 保存我的内心独白
   */
  @RequestMapping("/saveSoliloquy.action")
  public ModelAndView saveSoliloquy(UserEntity userEntity)
  {

    System.out.println("独白" + userEntity.getInformation());
    cpQxBizImpl.saveSoliloquy(userEntity);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/MyCompany");

    return mv;
  }

  /*
   * 上传头像
   */
  @RequestMapping(value = "/uploadHead.action", method = RequestMethod.POST)
  public ModelAndView fileact(MultipartFile pic)
  {
    String filename = pic.getOriginalFilename();
    System.out.println("获取到的文件名:" + filename);
    try
    {
      String root = request.getServletContext().getRealPath("/upload");
      String headPortrait = root + "/" + filename;

      user.setHeadPortrait(headPortrait);
      cpQxBizImpl.upHeadPortrait(user);

      // String root = ServletActionContext.getRequest().getRealPath(
      // "/upload"); // 设置文件上传的路径
      // fileact.transferTo(new File("D:/" + filename));
      pic.transferTo(new File(root + "/" + filename));
      System.out.println("路径:" + root);
    } catch (IllegalStateException | IOException e)
    {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }

    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/Photo");
    return mav;
  }

  /*
   * 经济实力
   */
  @RequestMapping(value = "/finance.action")
  public ModelAndView finance(@RequestParam(value = "finance") String finance,
    @RequestParam(value = "debt") String debt, SalaryEntity salaryEntity)
  {

    cpQxBizImpl.Economics(finance, debt, salaryEntity);
    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/MyCompany");

    return mav;

  }

}
