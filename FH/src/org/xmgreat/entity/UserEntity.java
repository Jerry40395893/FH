package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * UserEntity 实体类 Wed Sep 19 18:40:54 CST 2018 沈杰---前台用户表
 */
@Component
public class UserEntity
{
  private Integer userId;
  private Integer cityId;
  private Integer comboId;
  private String userName;
  private String pasw;
  private String sex;
  private String brithday;
  private String address;
  private Long teleNum;
  private String email;
  private Integer married;
  private String salary;
  private String height;
  private String doctor;
  private String information;
  private String zodiac;
  private String constellation;
  private String children;
  private String residence;
  private String bloodStyle;
  private String nation;
  private String car;
  private String rgTime;
  private String lgTime;
  private Integer score;
  private Integer onlineStage;
  private Integer deleteId;
  private Integer onStage;
  private Integer auditStage;
  private Integer popular;
  /** 年龄需要动态计算 */
  private String strAge;
  /** 城市名称 */
  private String cityName;

  /**头像   */
  private String headPortrait;
  
  public static class Builder
  {

    private Integer userId;
    private Integer cityId;
    private Integer comboId;
    private String userName;
    private String pasw;
    private String sex;
    private String brithday;
    private String address;
    private Long teleNum;
    private String email;
    private Integer married;
    private String salary;
    private String height;
    private String doctor;
    private String information;
    private String zodiac;
    private String constellation;
    private String children;
    private String residence;
    private String bloodStyle;
    private String nation;
    private String car;
    private String rgTime;
    private String lgTime;
    private Integer score;
    private Integer onlineStage;
    private Integer deleteId;
    private Integer onStage;
    private Integer auditStage;
    private Integer popular;

    public Builder setUserId(Integer userId)
    {
      this.userId = userId;
      return this;
    }

    public Builder setCityId(Integer cityId)
    {
      this.cityId = cityId;
      return this;
    }

    public Builder setComboId(Integer comboId)
    {
      this.comboId = comboId;
      return this;
    }

    public Builder setUserName(String userName)
    {
      this.userName = userName;
      return this;
    }

    public Builder setPasw(String pasw)
    {
      this.pasw = pasw;
      return this;
    }

    public Builder setSex(String sex)
    {
      this.sex = sex;
      return this;
    }

    public Builder setBrithday(String brithday)
    {
      this.brithday = brithday;
      return this;
    }

    public Builder setAddress(String address)
    {
      this.address = address;
      return this;
    }

    public Builder setTeleNum(Long teleNum)
    {
      this.teleNum = teleNum;
      return this;
    }

    public Builder setEmail(String email)
    {
      this.email = email;
      return this;
    }

    public Builder setMarried(Integer married)
    {
      this.married = married;
      return this;
    }

    public Builder setSalary(String salary)
    {
      this.salary = salary;
      return this;
    }

    public Builder setHeight(String height)
    {
      this.height = height;
      return this;
    }

    public Builder setDoctor(String doctor)
    {
      this.doctor = doctor;
      return this;
    }

    public Builder setInformation(String information)
    {
      this.information = information;
      return this;
    }

    public Builder setZodiac(String zodiac)
    {
      this.zodiac = zodiac;
      return this;
    }

    public Builder setConstellation(String constellation)
    {
      this.constellation = constellation;
      return this;
    }

    public Builder setChildren(String children)
    {
      this.children = children;
      return this;
    }

    public Builder setResidence(String residence)
    {
      this.residence = residence;
      return this;
    }

    public Builder setBloodStyle(String bloodStyle)
    {
      this.bloodStyle = bloodStyle;
      return this;
    }

    public Builder setNation(String nation)
    {
      this.nation = nation;
      return this;
    }

    public Builder setCar(String car)
    {
      this.car = car;
      return this;
    }

    public Builder setRgTime(String rgTime)
    {
      this.rgTime = rgTime;
      return this;
    }

    public Builder setLgTime(String lgTime)
    {
      this.lgTime = lgTime;
      return this;
    }

    public Builder setScore(Integer score)
    {
      this.score = score;
      return this;
    }

    public Builder setOnlineStage(Integer onlineStage)
    {
      this.onlineStage = onlineStage;
      return this;
    }

    public Builder setDeleteId(Integer deleteId)
    {
      this.deleteId = deleteId;
      return this;
    }

    public Builder setOnStage(Integer onStage)
    {
      this.onStage = onStage;
      return this;
    }

    public Builder setAuditStage(Integer auditStage)
    {
      this.auditStage = auditStage;
      return this;
    }

    public Builder setPopular(Integer popular)
    {
      this.popular = popular;
      return this;
    }

    public UserEntity build()
    {
      return new UserEntity(this);
    }
  }

  public UserEntity(Builder builder)
  {
    super();
    this.userId = builder.userId;
    this.cityId = builder.cityId;
    this.comboId = builder.comboId;
    this.userName = builder.userName;
    this.pasw = builder.pasw;
    this.sex = builder.sex;
    this.brithday = builder.brithday;
    this.address = builder.address;
    this.teleNum = builder.teleNum;
    this.email = builder.email;
    this.married = builder.married;
    this.salary = builder.salary;
    this.height = builder.height;
    this.doctor = builder.doctor;
    this.information = builder.information;
    this.zodiac = builder.zodiac;
    this.constellation = builder.constellation;
    this.children = builder.children;
    this.residence = builder.residence;
    this.bloodStyle = builder.bloodStyle;
    this.nation = builder.nation;
    this.car = builder.car;
    this.rgTime = builder.rgTime;
    this.lgTime = builder.lgTime;
    this.score = builder.score;
    this.onlineStage = builder.onlineStage;
    this.deleteId = builder.deleteId;
    this.onStage = builder.onStage;
    this.auditStage = builder.auditStage;
    this.popular = builder.popular;
  }

  public UserEntity()
  {
    super();
  }

  public UserEntity(Integer userId, Integer cityId, Integer comboId,
    String userName, String pasw, String sex, String brithday, String address,
    Long teleNum, String email, Integer married, String salary, String height,
    String doctor, String information, String zodiac, String constellation,
    String children, String residence, String bloodStyle, String nation,
    String car, String rgTime, String lgTime, Integer score,
    Integer onlineStage, Integer deleteId, Integer onStage, Integer auditStage,
    Integer popular)
  {
    super();
    this.userId = userId;
    this.cityId = cityId;
    this.comboId = comboId;
    this.userName = userName;
    this.pasw = pasw;
    this.sex = sex;
    this.brithday = brithday;
    this.address = address;
    this.teleNum = teleNum;
    this.email = email;
    this.married = married;
    this.salary = salary;
    this.height = height;
    this.doctor = doctor;
    this.information = information;
    this.zodiac = zodiac;
    this.constellation = constellation;
    this.children = children;
    this.residence = residence;
    this.bloodStyle = bloodStyle;
    this.nation = nation;
    this.car = car;
    this.rgTime = rgTime;
    this.lgTime = lgTime;
    this.score = score;
    this.onlineStage = onlineStage;
    this.deleteId = deleteId;
    this.onStage = onStage;
    this.auditStage = auditStage;
    this.popular = popular;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the cityId
   */
  public Integer getCityId()
  {
    return cityId;
  }

  /**
   * @return the comboId
   */
  public Integer getComboId()
  {
    return comboId;
  }

  /**
   * @return the userName
   */
  public String getUserName()
  {
    return userName;
  }

  /**
   * @return the pasw
   */
  public String getPasw()
  {
    return pasw;
  }

  /**
   * @return the sex
   */
  public String getSex()
  {
    return sex;
  }

  /**
   * @return the brithday
   */
  public String getBrithday()
  {
    return brithday;
  }

  /**
   * @return the address
   */
  public String getAddress()
  {
    return address;
  }

  /**
   * @return the teleNum
   */
  public Long getTeleNum()
  {
    return teleNum;
  }

  /**
   * @return the email
   */
  public String getEmail()
  {
    return email;
  }

  /**
   * @return the married
   */
  public Integer getMarried()
  {
    return married;
  }

  /**
   * @return the salary
   */
  public String getSalary()
  {
    return salary;
  }

  /**
   * @return the height
   */
  public String getHeight()
  {
    return height;
  }

  /**
   * @return the doctor
   */
  public String getDoctor()
  {
    return doctor;
  }

  /**
   * @return the information
   */
  public String getInformation()
  {
    return information;
  }

  /**
   * @return the zodiac
   */
  public String getZodiac()
  {
    return zodiac;
  }

  /**
   * @return the constellation
   */
  public String getConstellation()
  {
    return constellation;
  }

  /**
   * @return the children
   */
  public String getChildren()
  {
    return children;
  }

  /**
   * @return the residence
   */
  public String getResidence()
  {
    return residence;
  }

  /**
   * @return the bloodStyle
   */
  public String getBloodStyle()
  {
    return bloodStyle;
  }

  /**
   * @return the nation
   */
  public String getNation()
  {
    return nation;
  }

  /**
   * @return the car
   */
  public String getCar()
  {
    return car;
  }

  /**
   * @return the rgTime
   */
  public String getRgTime()
  {
    return rgTime;
  }

  /**
   * @return the lgTime
   */
  public String getLgTime()
  {
    return lgTime;
  }

  /**
   * @return the score
   */
  public Integer getScore()
  {
    return score;
  }

  /**
   * @return the onlineStage
   */
  public Integer getOnlineStage()
  {
    return onlineStage;
  }

  /**
   * @return the deleteId
   */
  public Integer getDeleteId()
  {
    return deleteId;
  }

  /**
   * @return the onStage
   */
  public Integer getOnStage()
  {
    return onStage;
  }

  /**
   * @return the auditStage
   */
  public Integer getAuditStage()
  {
    return auditStage;
  }

  /**
   * @return the popular
   */
  public Integer getPopular()
  {
    return popular;
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
   * @param cityId
   *          the cityId to set
   */
  public void setCityId(Integer cityId)
  {
    this.cityId = cityId;
  }

  /**
   * @param comboId
   *          the comboId to set
   */
  public void setComboId(Integer comboId)
  {
    this.comboId = comboId;
  }

  /**
   * @param userName
   *          the userName to set
   */
  public void setUserName(String userName)
  {
    this.userName = userName;
  }

  /**
   * @param pasw
   *          the pasw to set
   */
  public void setPasw(String pasw)
  {
    this.pasw = pasw;
  }

  /**
   * @param sex
   *          the sex to set
   */
  public void setSex(String sex)
  {
    this.sex = sex;
  }

  /**
   * @param brithday
   *          the brithday to set
   */
  public void setBrithday(String brithday)
  {
    this.brithday = brithday;
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
   * @param teleNum
   *          the teleNum to set
   */
  public void setTeleNum(Long teleNum)
  {
    this.teleNum = teleNum;
  }

  /**
   * @param email
   *          the email to set
   */
  public void setEmail(String email)
  {
    this.email = email;
  }

  /**
   * @param married
   *          the married to set
   */
  public void setMarried(Integer married)
  {
    this.married = married;
  }

  /**
   * @param salary
   *          the salary to set
   */
  public void setSalary(String salary)
  {
    this.salary = salary;
  }

  /**
   * @param height
   *          the height to set
   */
  public void setHeight(String height)
  {
    this.height = height;
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
   * @param information
   *          the information to set
   */
  public void setInformation(String information)
  {
    this.information = information;
  }

  /**
   * @param zodiac
   *          the zodiac to set
   */
  public void setZodiac(String zodiac)
  {
    this.zodiac = zodiac;
  }

  /**
   * @param constellation
   *          the constellation to set
   */
  public void setConstellation(String constellation)
  {
    this.constellation = constellation;
  }

  /**
   * @param children
   *          the children to set
   */
  public void setChildren(String children)
  {
    this.children = children;
  }

  /**
   * @param residence
   *          the residence to set
   */
  public void setResidence(String residence)
  {
    this.residence = residence;
  }

  /**
   * @param bloodStyle
   *          the bloodStyle to set
   */
  public void setBloodStyle(String bloodStyle)
  {
    this.bloodStyle = bloodStyle;
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
   * @param car
   *          the car to set
   */
  public void setCar(String car)
  {
    this.car = car;
  }

  /**
   * @param rgTime
   *          the rgTime to set
   */
  public void setRgTime(String rgTime)
  {
    this.rgTime = rgTime;
  }

  /**
   * @param lgTime
   *          the lgTime to set
   */
  public void setLgTime(String lgTime)
  {
    this.lgTime = lgTime;
  }

  /**
   * @param score
   *          the score to set
   */
  public void setScore(Integer score)
  {
    this.score = score;
  }

  /**
   * @param onlineStage
   *          the onlineStage to set
   */
  public void setOnlineStage(Integer onlineStage)
  {
    this.onlineStage = onlineStage;
  }

  /**
   * @param deleteId
   *          the deleteId to set
   */
  public void setDeleteId(Integer deleteId)
  {
    this.deleteId = deleteId;
  }

  /**
   * @param onStage
   *          the onStage to set
   */
  public void setOnStage(Integer onStage)
  {
    this.onStage = onStage;
  }

  /**
   * @param auditStage
   *          the auditStage to set
   */
  public void setAuditStage(Integer auditStage)
  {
    this.auditStage = auditStage;
  }

  /**
   * @param popular
   *          the popular to set
   */
  public void setPopular(Integer popular)
  {
    this.popular = popular;
  }

  /**
   * @return the strAge
   */
  public String getStrAge()
  {
    return strAge;
  }

  /**
   * @param strAge
   *          the strAge to set
   */
  public void setStrAge(String strAge)
  {
    this.strAge = strAge;
  }

  public String getCityName()
  {
    return cityName;
  }

  public void setCityName(String cityName)
  {
    this.cityName = cityName;
  }

public String getHeadPortrait() {
	return headPortrait;
}

public void setHeadPortrait(String headPortrait) {
	this.headPortrait = headPortrait;
}

  
}
