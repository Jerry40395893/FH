package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * MarriedEntity 实体类 Wed Sep 19 16:53:04 CST 2018 沈杰---婚姻观念
 */

@Component
public class MarriedEntity
{
  private Integer marriedId;
  private Integer userId;
  private String nation;
  private String character;
  private String humor;
  private String temper;
  private String feeling;
  private String chriden;
  private String marryTime;
  private String relationship;
  private String marryMsg;
  private String liveParent;
  private String ranking;
  private String brother;
  private String parentMsg;
  private String parentWork;
  private String parentSalary;
  private String parentInsurance;
  private String motherWork;//母亲工作

  
  
  public String getMotherWork() {
	return motherWork;
}

public void setMotherWork(String motherWork) {
	this.motherWork = motherWork;
}

public void setNation(String nation)
  {
    this.nation = nation;
  }

  public String getNation()
  {
    return nation;
  }

  public void setCharacter(String character)
  {
    this.character = character;
  }

  public String getCharacter()
  {
    return character;
  }

  public void setHumor(String humor)
  {
    this.humor = humor;
  }

  public String getHumor()
  {
    return humor;
  }

  public void setTemper(String temper)
  {
    this.temper = temper;
  }

  public String getTemper()
  {
    return temper;
  }

  public void setFeeling(String feeling)
  {
    this.feeling = feeling;
  }

  public String getFeeling()
  {
    return feeling;
  }

  public void setChriden(String chriden)
  {
    this.chriden = chriden;
  }

  public String getChriden()
  {
    return chriden;
  }

  public void setRelationship(String relationship)
  {
    this.relationship = relationship;
  }

  public String getRelationship()
  {
    return relationship;
  }

  public void setRanking(String ranking)
  {
    this.ranking = ranking;
  }

  public String getRanking()
  {
    return ranking;
  }

  public void setBrother(String brother)
  {
    this.brother = brother;
  }

  public String getBrother()
  {
    return brother;
  }

  public MarriedEntity()
  {
    super();
  }

  /**
   * @return the marriedId
   */
  public Integer getMarriedId()
  {
    return marriedId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the marryTime
   */
  public String getMarryTime()
  {
    return marryTime;
  }

  /**
   * @return the marryMsg
   */
  public String getMarryMsg()
  {
    return marryMsg;
  }

  /**
   * @return the liveParent
   */
  public String getLiveParent()
  {
    return liveParent;
  }

  /**
   * @return the parentMsg
   */
  public String getParentMsg()
  {
    return parentMsg;
  }

  /**
   * @return the parentWork
   */
  public String getParentWork()
  {
    return parentWork;
  }

  /**
   * @return the parentSalary
   */
  public String getParentSalary()
  {
    return parentSalary;
  }

  /**
   * @return the parentInsurance
   */
  public String getParentInsurance()
  {
    return parentInsurance;
  }

  /**
   * @param marriedId
   *          the marriedId to set
   */
  public void setMarriedId(Integer marriedId)
  {
    this.marriedId = marriedId;
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
   * @param marryTime
   *          the marryTime to set
   */
  public void setMarryTime(String marryTime)
  {
    this.marryTime = marryTime;
  }

  /**
   * @param marryMsg
   *          the marryMsg to set
   */
  public void setMarryMsg(String marryMsg)
  {
    this.marryMsg = marryMsg;
  }

  /**
   * @param liveParent
   *          the liveParent to set
   */
  public void setLiveParent(String liveParent)
  {
    this.liveParent = liveParent;
  }

  /**
   * @param parentMsg
   *          the parentMsg to set
   */
  public void setParentMsg(String parentMsg)
  {
    this.parentMsg = parentMsg;
  }

  /**
   * @param parentWork
   *          the parentWork to set
   */
  public void setParentWork(String parentWork)
  {
    this.parentWork = parentWork;
  }

  /**
   * @param parentSalary
   *          the parentSalary to set
   */
  public void setParentSalary(String parentSalary)
  {
    this.parentSalary = parentSalary;
  }

  /**
   * @param parentInsurance
   *          the parentInsurance to set
   */
  public void setParentInsurance(String parentInsurance)
  {
    this.parentInsurance = parentInsurance;
  }

  public MarriedEntity(Integer marriedId, Integer userId, String nation,
    String character, String humor, String temper, String feeling,
    String chriden, String marryTime, String relationship, String marryMsg,
    String liveParent, String ranking, String brother, String parentMsg,
    String parentWork, String parentSalary, String parentInsurance)
  {
    super();
    this.marriedId = marriedId;
    this.userId = userId;
    this.nation = nation;
    this.character = character;
    this.humor = humor;
    this.temper = temper;
    this.feeling = feeling;
    this.chriden = chriden;
    this.marryTime = marryTime;
    this.relationship = relationship;
    this.marryMsg = marryMsg;
    this.liveParent = liveParent;
    this.ranking = ranking;
    this.brother = brother;
    this.parentMsg = parentMsg;
    this.parentWork = parentWork;
    this.parentSalary = parentSalary;
    this.parentInsurance = parentInsurance;
  }

  
}
