package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * AnnounEntity 实体类,公告推送表 Wed Sep 19 15:47:04 CST 2018 沈杰
 */
@Component
public class AnnounEntity
{
  private Integer announId;
  private Integer adminId;
  private String msg;
  private String time;
  private Integer style;

  public void setMsg(String msg)
  {
    this.msg = msg;
  }

  public String getMsg()
  {
    return msg;
  }

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public void setStyle(Integer style)
  {
    this.style = style;
  }

  public Integer getStyle()
  {
    return style;
  }

  public AnnounEntity()
  {
    super();
  }

  public AnnounEntity(Integer announId, Integer adminId, String msg,
    String time, Integer style)
  {
    super();
    this.announId = announId;
    this.adminId = adminId;
    this.msg = msg;
    this.time = time;
    this.style = style;
  }

  /**
   * @return the announId
   */
  public Integer getAnnounId()
  {
    return announId;
  }

  /**
   * @return the adminId
   */
  public Integer getAdminId()
  {
    return adminId;
  }

  /**
   * @param announId
   *          the announId to set
   */
  public void setAnnounId(Integer announId)
  {
    this.announId = announId;
  }

  /**
   * @param adminId
   *          the adminId to set
   */
  public void setAdminId(Integer adminId)
  {
    this.adminId = adminId;
  }

}
