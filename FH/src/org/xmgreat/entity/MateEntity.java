package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * MateEntity 实体类 Wed Sep 26 14:15:36 CST 2018 沈杰---前台择偶条件表
 */
@Component
public class MateEntity
{
  private Integer mateId;
  private Integer userId;
  private Integer lowAge;
  private Integer hightAge;
  private Integer lowHeight;
  private Integer height;
  private String nation;
  private String address;
  private String married;
  private String doctor;
  private Integer stage;
  private Integer recommend;
  private String sex;
  private String month;
  private String photo;
  private String honesty;

  public MateEntity(Integer mateId, Integer userId, Integer lowAge,
    Integer hightAge, Integer lowHeight, Integer height, String nation,
    String address, String married, String doctor, Integer stage)
  {
    super();
    this.mateId = mateId;
    this.userId = userId;
    this.lowAge = lowAge;
    this.hightAge = hightAge;
    this.lowHeight = lowHeight;
    this.height = height;
    this.nation = nation;
    this.address = address;
    this.married = married;
    this.doctor = doctor;
    this.stage = stage;
  }

  public MateEntity()
  {
    super();
  }

  /**
   * @return the mateId
   */
  public Integer getMateId()
  {
    return mateId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the lowAge
   */
  public Integer getLowAge()
  {
    return lowAge;
  }

  /**
   * @return the hightAge
   */
  public Integer getHightAge()
  {
    return hightAge;
  }

  /**
   * @return the lowHeight
   */
  public Integer getLowHeight()
  {
    return lowHeight;
  }

  /**
   * @return the height
   */
  public Integer getHeight()
  {
    return height;
  }

  /**
   * @return the nation
   */
  public String getNation()
  {
    return nation;
  }

  /**
   * @return the address
   */
  public String getAddress()
  {
    return address;
  }

  /**
   * @return the married
   */
  public String getMarried()
  {
    return married;
  }

  /**
   * @return the doctor
   */
  public String getDoctor()
  {
    return doctor;
  }

  /**
   * @return the stage
   */
  public Integer getStage()
  {
    return stage;
  }

  /**
   * @param mateId
   *          the mateId to set
   */
  public void setMateId(Integer mateId)
  {
    this.mateId = mateId;
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
   * @param lowAge
   *          the lowAge to set
   */
  public void setLowAge(Integer lowAge)
  {
    this.lowAge = lowAge;
  }

  /**
   * @param hightAge
   *          the hightAge to set
   */
  public void setHightAge(Integer hightAge)
  {
    this.hightAge = hightAge;
  }

  /**
   * @param lowHeight
   *          the lowHeight to set
   */
  public void setLowHeight(Integer lowHeight)
  {
    this.lowHeight = lowHeight;
  }

  /**
   * @param height
   *          the height to set
   */
  public void setHeight(Integer height)
  {
    this.height = height;
  }

  /**
   * @param nation
   *          the nation to set
   */
  public void setNation(String nation)
  {
    this.nation = nation;
  }

  /**
   * @param address
   *          the address to set
   */
  public void setAddress(String address)
  {
    this.address = address;
  }

  /**
   * @param married
   *          the married to set
   */
  public void setMarried(String married)
  {
    this.married = married;
  }

  /**
   * @param doctor
   *          the doctor to set
   */
  public void setDoctor(String doctor)
  {
    this.doctor = doctor;
  }

  /**
   * @param stage
   *          the stage to set
   */
  public void setStage(Integer stage)
  {
    this.stage = stage;
  }

  public Integer getRecommend()
  {
    return recommend;
  }

  public void setRecommend(Integer recommend)
  {
    this.recommend = recommend;
  }

  public String getSex()
  {
    return sex;
  }

  public void setSex(String sex)
  {
    this.sex = sex;
  }

  public String getMonth()
  {
    return month;
  }

  public void setMonth(String month)
  {
    this.month = month;
  }

  public String getPhoto()
  {
    return photo;
  }

  public void setPhoto(String photo)
  {
    this.photo = photo;
  }

  public String getHonesty()
  {
    return honesty;
  }

  public void setHonesty(String honesty)
  {
    this.honesty = honesty;
  }

}
