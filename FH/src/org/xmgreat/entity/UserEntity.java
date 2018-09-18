package org.xmgreat.entity;

/**
 * UserEntity 实体类 Tue Sep 18 10:21:09 CST 2018 沈杰
 */

public class UserEntity
{
  private Integer userid;
  private String username;
  private String pasw;
  private Integer telenum;
  private String sex;
  private String doctor;
  private String job;
  private String email;
  private Integer stage;
  private String rgtime;
  private Integer score;
  private Integer upfile;
  private Integer loadfile;

  public void setUserid(Integer userid)
  {
    this.userid = userid;
  }

  public Integer getUserid()
  {
    return userid;
  }

  public void setUsername(String username)
  {
    this.username = username;
  }

  public String getUsername()
  {
    return username;
  }

  public void setPasw(String pasw)
  {
    this.pasw = pasw;
  }

  public String getPasw()
  {
    return pasw;
  }

  public void setTelenum(Integer telenum)
  {
    this.telenum = telenum;
  }

  public Integer getTelenum()
  {
    return telenum;
  }

  public void setSex(String sex)
  {
    this.sex = sex;
  }

  public String getSex()
  {
    return sex;
  }

  public void setDoctor(String doctor)
  {
    this.doctor = doctor;
  }

  public String getDoctor()
  {
    return doctor;
  }

  public void setJob(String job)
  {
    this.job = job;
  }

  public String getJob()
  {
    return job;
  }

  public void setEmail(String email)
  {
    this.email = email;
  }

  public String getEmail()
  {
    return email;
  }

  public void setStage(Integer stage)
  {
    this.stage = stage;
  }

  public Integer getStage()
  {
    return stage;
  }

  public void setRgtime(String rgtime)
  {
    this.rgtime = rgtime;
  }

  public String getRgtime()
  {
    return rgtime;
  }

  public void setScore(Integer score)
  {
    this.score = score;
  }

  public Integer getScore()
  {
    return score;
  }

  public void setUpfile(Integer upfile)
  {
    this.upfile = upfile;
  }

  public Integer getUpfile()
  {
    return upfile;
  }

  public void setLoadfile(Integer loadfile)
  {
    this.loadfile = loadfile;
  }

  public Integer getLoadfile()
  {
    return loadfile;
  }

  public UserEntity()
  {
    super();
  }

  public UserEntity(Integer userid, String username, String pasw,
    Integer telenum, String sex, String doctor, String job, String email,
    Integer stage, String rgtime, Integer score, Integer upfile,
    Integer loadfile)
  {
    this.userid = userid;
    this.username = username;
    this.pasw = pasw;
    this.telenum = telenum;
    this.sex = sex;
    this.doctor = doctor;
    this.job = job;
    this.email = email;
    this.stage = stage;
    this.rgtime = rgtime;
    this.score = score;
    this.upfile = upfile;
    this.loadfile = loadfile;
  }
}
