package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * LabelEntity 实体类 Wed Sep 19 16:40:49 CST 2018 沈杰---标签表
 */

@Component
public class LabelEntity
{
  private Integer labelId;
  private String labelName;

  /**
   * @return the labelId
   */
  public Integer getLabelId()
  {
    return labelId;
  }

  /**
   * @return the labelName
   */
  public String getLabelName()
  {
    return labelName;
  }

  /**
   * @param labelId
   *          the labelId to set
   */
  public void setLabelId(Integer labelId)
  {
    this.labelId = labelId;
  }

  /**
   * @param labelName
   *          the labelName to set
   */
  public void setLabelName(String labelName)
  {
    this.labelName = labelName;
  }

  public LabelEntity(Integer labelId, String labelName)
  {
    super();
    this.labelId = labelId;
    this.labelName = labelName;
  }

  public LabelEntity()
  {
    super();
  }

}
