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
import java.util.List;
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
import org.xmgreat.entity.FigureEntity;
import org.xmgreat.entity.HobbyEntity;
import org.xmgreat.entity.LifeEntity;
import org.xmgreat.entity.MarriedEntity;
import org.xmgreat.entity.SalaryEntity;
import org.xmgreat.entity.SchoolEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.WorkEntity;

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

  // private int userId =
  // ((UserEntity)request.getSession().getAttribute("user")).getUserId();
  /**
   * 我的佳缘页面
   */
  @RequestMapping("/showMycompany.action")
  public ModelAndView showMycompany()
  {
    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();

    ModelAndView mv = new ModelAndView();

    /** 从session获取用户信息 ，然后通过ID查出智能匹配对象 */
    HttpSession session = request.getSession();
    UserEntity user = (UserEntity) session.getAttribute("user");
    if (user != null)
    {
      comSjBizImpl.getRecomList(user.getUserId());
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
    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();

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
    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();

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

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    salaryEntity.setUserId(userId);
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
  public ModelAndView life(LifeEntity lifeEntity)
  {

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    lifeEntity.setUserId(userId);
    cpQxBizImpl.selectLife(lifeEntity);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/LifeStyle");
    return mv;

  }

  /**
   * 工作学习页面
   */
  @RequestMapping("/job.action")
  public ModelAndView job(WorkEntity workEntity)
  {

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    workEntity.setUserId(userId);
    cpQxBizImpl.selectWork(workEntity);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Job");
    return mv;

  }

  /**
   * 外贸体型页面
   */
  @RequestMapping("/appearance.action")
  public ModelAndView Appearance(FigureEntity figureEntity)
  {
    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    figureEntity.setUserId(userId);
    cpQxBizImpl.selectAppearance(figureEntity);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Appearance");
    return mv;

  }

  /**
   * 婚姻观念页面
   */
  @RequestMapping("/marriage.action")
  public ModelAndView Marriage()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Marriage");
    return mv;

  }

  /**
   * 兴趣爱好页面
   */
  @RequestMapping("/Hobbies.action")
  public ModelAndView Hobbies()
  {

    ModelAndView mv = new ModelAndView();
    mv.setViewName("bw/Hobbies");
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

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    userEntity.setUserId(userId);
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

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    userEntity.setUserId(userId);
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

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();

    String filename = pic.getOriginalFilename();
    System.out.println("获取到的文件名:" + filename);
    try
    {
      String root = request.getServletContext().getRealPath("/upload");
      String headPortrait = root + "/" + filename;

      user.setHeadPortrait(headPortrait);
      user.setUserId(userId);
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
    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    salaryEntity.setUserId(userId);
    cpQxBizImpl.Economics(finance, debt, salaryEntity);
    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/MyCompany");

    return mav;

  }

  /*
   * 生活方式
   */
  @RequestMapping(value = "/lifeStyle.action")
  public ModelAndView lifeStyle(LifeEntity lifeEntity)
  {
    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();

    lifeEntity.setUserId(userId);

    cpQxBizImpl.savaLife(lifeEntity);
    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/MyCompany");

    return mav;

  }

  /*
   * 毕业院校
   */
  @RequestMapping(value = "/school.action")
  public @ResponseBody List<SchoolEntity> school(SchoolEntity schoolEntity)
  {

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();

    return cpQxBizImpl.School(schoolEntity);

  }

  /*
   * 工作学习
   */
  @RequestMapping(value = "/Work.action")
  public ModelAndView Work(WorkEntity workEntity)
  {

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    workEntity.setUserId(userId);
    cpQxBizImpl.savaWork(workEntity);
    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/MyCompany");

    return mav;

  }

  /*
   * 外貌体型
   */
  @RequestMapping(value = "/savaAppearance.action")
  public ModelAndView savaAppearance(FigureEntity figureEntity)
  {

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    figureEntity.setUserId(userId);
    cpQxBizImpl.savaAppearance(figureEntity);
    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/MyCompany");

    return mav;

  }

  /*
   * 婚姻观念
   */
  @RequestMapping(value = "/savaMarriage.action")
  public ModelAndView savaMarriage(MarriedEntity marriedEntity)
  {

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    marriedEntity.setUserId(userId);
    cpQxBizImpl.savaMarried(marriedEntity);

    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/MyCompany");

    return mav;

  }

  /*
   * 兴趣爱好
   */
  @RequestMapping(value = "/savaHobbies.action")
  public ModelAndView savaHobbies(HobbyEntity hobbyEntity)
  {

    int userId = ((UserEntity) request.getSession().getAttribute("user"))
      .getUserId();
    hobbyEntity.setUserId(userId);

    cpQxBizImpl.savaHobby(hobbyEntity);

    ModelAndView mav = new ModelAndView();
    mav.setViewName("bw/MyCompany");

    return mav;

  }

}
