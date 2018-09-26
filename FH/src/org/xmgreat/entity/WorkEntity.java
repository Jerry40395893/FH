package org.xmgreat.entity;

/**
 * WorkEntity 实体类 Wed Sep 26 14:14:51 CST 2018 沈杰---前台用户工作学习表
 */

public class WorkEntity
{
  private Integer workId;
  private Integer userId;
  private String postion;
  private String industry;
  private String cpanyStyle;
  private String welfare;
  private String workStage;
  private String changeWork;
  private String wortSea;
  private String workHome;
  private String graduation;
  private String majorStyle;
  private String language;

  public WorkEntity()
  {
    super();
  }

  public WorkEntity(Integer workId, Integer userId, String postion,
    String industry, String cpanyStyle, String welfare, String workStage,
    String changeWork, String wortSea, String workHome, String graduation,
    String majorStyle, String language)
  {
    super();
    this.workId = workId;
    this.userId = userId;
    this.postion = postion;
    this.industry = industry;
    this.cpanyStyle = cpanyStyle;
    this.welfare = welfare;
    this.workStage = workStage;
    this.changeWork = changeWork;
    this.wortSea = wortSea;
    this.workHome = workHome;
    this.graduation = graduation;
    this.majorStyle = majorStyle;
    this.language = language;
  }

  /**
   * @return the workId
   */
  public Integer getWorkId()
  {
    return workId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the postion
   */
  public String getPostion()
  {
    return postion;
  }

  /**
   * @return the industry
   */
  public String getIndustry()
  {
    return industry;
  }

  /**
   * @return the cpanyStyle
   */
  public String getCpanyStyle()
  {
    return cpanyStyle;
  }

  /**
   * @return the welfare
   */
  public String getWelfare()
  {
    return welfare;
  }

  /**
   * @return the workStage
   */
  public String getWorkStage()
  {
    return workStage;
  }

  /**
   * @return the changeWork
   */
  public String getChangeWork()
  {
    return changeWork;
  }

  /**
   * @return the wortSea
   */
  public String getWortSea()
  {
    return wortSea;
  }

  /**
   * @return the workHome
   */
  public String getWorkHome()
  {
    return workHome;
  }

  /**
   * @return the graduation
   */
  public String getGraduation()
  {
    return graduation;
  }

  /**
   * @return the majorStyle
   */
  public String getMajorStyle()
  {
    return majorStyle;
  }

  /**
   * @return the language
   */
  public String getLanguage()
  {
    return language;
  }

  /**
   * @param workId
   *          the workId to set
   */
  public void setWorkId(Integer workId)
  {
    this.workId = workId;
  }

  /**
   * @param userId
   *          the userId to set
   */
  public void setUserId(Integer userId)
  {
    this.userId = userId;
  }

  /**
   * @param postion
   *          the postion to set
   */
  public void setPostion(String postion)
  {
    this.postion = postion;
  }

  /**
   * @param industry
   *          the industry to set
   */
  public void setIndustry(String industry)
  {
    this.industry = industry;
  }

  /**
   * @param cpanyStyle
   *          the cpanyStyle to set
   */
  public void setCpanyStyle(String cpanyStyle)
  {
    this.cpanyStyle = cpanyStyle;
  }

  /**
   * @param welfare
   *          the welfare to set
   */
  public void setWelfare(String welfare)
  {
    this.welfare = welfare;
  }

  /**
   * @param workStage
   *          the workStage to set
   */
  public void setWorkStage(String workStage)
  {
    this.workStage = workStage;
  }

  /**
   * @param changeWork
   *          the changeWork to set
   */
  public void setChangeWork(String changeWork)
  {
    this.changeWork = changeWork;
  }

  /**
   * @param wortSea
   *          the wortSea to set
   */
  public void setWortSea(String wortSea)
  {
    this.wortSea = wortSea;
  }

  /**
   * @param workHome
   *          the workHome to set
   */
  public void setWorkHome(String workHome)
  {
    this.workHome = workHome;
  }

  /**
   * @param graduation
   *          the graduation to set
   */
  public void setGraduation(String graduation)
  {
    this.graduation = graduation;
  }

  /**
   * @param majorStyle
   *          the majorStyle to set
   */
  public void setMajorStyle(String majorStyle)
  {
    this.majorStyle = majorStyle;
  }

  /**
   * @param language
   *          the language to set
   */
  public void setLanguage(String language)
  {
    this.language = language;
  }

}
