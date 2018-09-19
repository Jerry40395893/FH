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

}
