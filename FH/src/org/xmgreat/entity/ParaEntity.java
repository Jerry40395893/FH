package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * ParaEntity 实体类 Wed Sep 19 16:59:09 CST 2018 沈杰---分页数据展示表,参数配置
 */

@Component
public class ParaEntity
{
  private Integer numId;
  private Integer pageNum;
  private String position;

  public void setPosition(String position)
  {
    this.position = position;
  }

  public String getPosition()
  {
    return position;
  }

  public ParaEntity()
  {
    super();
  }

  /**
   * @return the numId
   */
  public Integer getNumId()
  {
    return numId;
  }

  /**
   * @return the pageNum
   */
  public Integer getPageNum()
  {
    return pageNum;
  }

  /**
   * @param numId
   *          the numId to set
   */
  public void setNumId(Integer numId)
  {
    this.numId = numId;
  }

  /**
   * @param pageNum
   *          the pageNum to set
   */
  public void setPageNum(Integer pageNum)
  {
    this.pageNum = pageNum;
  }

  public ParaEntity(Integer numId, Integer pageNum, String position)
  {
    super();
    this.numId = numId;
    this.pageNum = pageNum;
    this.position = position;
  }

}
