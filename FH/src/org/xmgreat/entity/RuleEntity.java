package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * RuleEntity 实体类 Wed Sep 19 18:30:50 CST 2018 沈杰---规则表
 */

@Component
public class RuleEntity
{
  private Integer ruleId;
  private String ruleName;
  private String sqlStr;
  private Integer figureId;
  private Integer lifeId;
  private Integer workId;
  private Integer marriedId;
  private Integer salaryId;
  private Integer hobbyId;

  public RuleEntity()
  {
    super();
  }

  public RuleEntity(Integer ruleId, String ruleName, String sqlStr)
  {
    super();
    this.ruleId = ruleId;
    this.ruleName = ruleName;
    this.sqlStr = sqlStr;
  }

  /**
   * @return the ruleId
   */
  public Integer getRuleId()
  {
    return ruleId;
  }

  /**
   * @return the ruleName
   */
  public String getRuleName()
  {
    return ruleName;
  }

  /**
   * @return the sqlStr
   */
  public String getSqlStr()
  {
    return sqlStr;
  }

  /**
   * @param ruleId
   *          the ruleId to set
   */
  public void setRuleId(Integer ruleId)
  {
    this.ruleId = ruleId;
  }

  /**
   * @param ruleName
   *          the ruleName to set
   */
  public void setRuleName(String ruleName)
  {
    this.ruleName = ruleName;
  }

  /**
   * @param sqlStr
   *          the sqlStr to set
   */
  public void setSqlStr(String sqlStr)
  {
    this.sqlStr = sqlStr;
  }

  /**
   * @return the figureId
   */
  public Integer getFigureId()
  {
    return figureId;
  }

  /**
   * @return the lifeId
   */
  public Integer getLifeId()
  {
    return lifeId;
  }

  /**
   * @return the workId
   */
  public Integer getWorkId()
  {
    return workId;
  }

  /**
   * @return the marriedId
   */
  public Integer getMarriedId()
  {
    return marriedId;
  }

  /**
   * @return the salaryId
   */
  public Integer getSalaryId()
  {
    return salaryId;
  }

  /**
   * @return the hobbyId
   */
  public Integer getHobbyId()
  {
    return hobbyId;
  }

  /**
   * @param figureId
   *          the figureId to set
   */
  public void setFigureId(Integer figureId)
  {
    this.figureId = figureId;
  }

  /**
   * @param lifeId
   *          the lifeId to set
   */
  public void setLifeId(Integer lifeId)
  {
    this.lifeId = lifeId;
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
   * @param marriedId
   *          the marriedId to set
   */
  public void setMarriedId(Integer marriedId)
  {
    this.marriedId = marriedId;
  }

  /**
   * @param salaryId
   *          the salaryId to set
   */
  public void setSalaryId(Integer salaryId)
  {
    this.salaryId = salaryId;
  }

  /**
   * @param hobbyId
   *          the hobbyId to set
   */
  public void setHobbyId(Integer hobbyId)
  {
    this.hobbyId = hobbyId;
  }

}
