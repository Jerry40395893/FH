package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * 作者：沈杰 作用：智能匹配的时候一次性把所有条件查询出来 创建时间：2018-9-26 版本：第一版
 **/
@Component
public class RmCdEntity
{
  private FigureEntity figureEntity;
  private LifeEntity lifeEntity;
  private WorkEntity workEntity;
  private MarriedEntity marriedEntity;
  private SalaryEntity salaryEntity;
  private HobbyEntity hobbyEntity;
  private MateEntity mateEntity;
  private RuleEntity ruleEntity;

  public RmCdEntity(FigureEntity figureEntity, LifeEntity lifeEntity,
    WorkEntity workEntity, MarriedEntity marriedEntity,
    SalaryEntity salaryEntity, HobbyEntity hobbyEntity, MateEntity mateEntity)
  {
    super();
    this.figureEntity = figureEntity;
    this.lifeEntity = lifeEntity;
    this.workEntity = workEntity;
    this.marriedEntity = marriedEntity;
    this.salaryEntity = salaryEntity;
    this.hobbyEntity = hobbyEntity;
    this.mateEntity = mateEntity;
  }

  public RmCdEntity()
  {
    super();
  }

  /**
   * @return the figureEntity
   */
  public FigureEntity getFigureEntity()
  {
    return figureEntity;
  }

  /**
   * @return the lifeEntity
   */
  public LifeEntity getLifeEntity()
  {
    return lifeEntity;
  }

  /**
   * @return the workEntity
   */
  public WorkEntity getWorkEntity()
  {
    return workEntity;
  }

  /**
   * @return the marriedEntity
   */
  public MarriedEntity getMarriedEntity()
  {
    return marriedEntity;
  }

  /**
   * @return the salaryEntity
   */
  public SalaryEntity getSalaryEntity()
  {
    return salaryEntity;
  }

  /**
   * @return the hobbyEntity
   */
  public HobbyEntity getHobbyEntity()
  {
    return hobbyEntity;
  }

  /**
   * @return the mateEntity
   */
  public MateEntity getMateEntity()
  {
    return mateEntity;
  }

  /**
   * @param figureEntity
   *          the figureEntity to set
   */
  public void setFigureEntity(FigureEntity figureEntity)
  {
    this.figureEntity = figureEntity;
  }

  /**
   * @param lifeEntity
   *          the lifeEntity to set
   */
  public void setLifeEntity(LifeEntity lifeEntity)
  {
    this.lifeEntity = lifeEntity;
  }

  /**
   * @param workEntity
   *          the workEntity to set
   */
  public void setWorkEntity(WorkEntity workEntity)
  {
    this.workEntity = workEntity;
  }

  /**
   * @param marriedEntity
   *          the marriedEntity to set
   */
  public void setMarriedEntity(MarriedEntity marriedEntity)
  {
    this.marriedEntity = marriedEntity;
  }

  /**
   * @param salaryEntity
   *          the salaryEntity to set
   */
  public void setSalaryEntity(SalaryEntity salaryEntity)
  {
    this.salaryEntity = salaryEntity;
  }

  /**
   * @param hobbyEntity
   *          the hobbyEntity to set
   */
  public void setHobbyEntity(HobbyEntity hobbyEntity)
  {
    this.hobbyEntity = hobbyEntity;
  }

  /**
   * @param mateEntity
   *          the mateEntity to set
   */
  public void setMateEntity(MateEntity mateEntity)
  {
    this.mateEntity = mateEntity;
  }

  public RuleEntity getRuleEntity()
  {
    return ruleEntity;
  }

  public void setRuleEntity(RuleEntity ruleEntity)
  {
    this.ruleEntity = ruleEntity;
  }

}
