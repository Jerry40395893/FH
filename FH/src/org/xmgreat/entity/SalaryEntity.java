package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * SalaryEntity 实体类 Wed Sep 19 18:35:20 CST 2018 沈杰---经济能力表
 */

@Component
public class SalaryEntity
{
  private Integer salaryId;
  private Integer userId;
  private String finance;
  private String debt;
  private String salaryPoint;

  public void setFinance(String finance)
  {
    this.finance = finance;
  }

  public String getFinance()
  {
    return finance;
  }

  public void setDebt(String debt)
  {
    this.debt = debt;
  }

  public String getDebt()
  {
    return debt;
  }

  public SalaryEntity()
  {
    super();
  }

  public SalaryEntity(Integer salaryId, Integer userId, String finance,
    String debt, String salaryPoint)
  {
    super();
    this.salaryId = salaryId;
    this.userId = userId;
    this.finance = finance;
    this.debt = debt;
    this.salaryPoint = salaryPoint;
  }

  /**
   * @return the salaryId
   */
  public Integer getSalaryId()
  {
    return salaryId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the salaryPoint
   */
  public String getSalaryPoint()
  {
    return salaryPoint;
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
   * @param userId
   *          the userId to set
   */
  public void setUserId(Integer userId)
  {
    this.userId = userId;
  }

  /**
   * @param salaryPoint
   *          the salaryPoint to set
   */
  public void setSalaryPoint(String salaryPoint)
  {
    this.salaryPoint = salaryPoint;
  }

}
