package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * WebCountEntity 实体类 Wed Sep 19 18:52:44 CST 2018 沈杰---网站访问量
 */

@Component
public class WebCountEntity
{
  private Integer webId;
  private Integer count;
  private String time;

  /**
   * @return the webId
   */
  public Integer getWebId()
  {
    return webId;
  }

  /**
   * @param webId
   *          the webId to set
   */
  public void setWebId(Integer webId)
  {
    this.webId = webId;
  }

  public void setCount(Integer count)
  {
    this.count = count;
  }

  public Integer getCount()
  {
    return count;
  }

  public void setTime(String time)
  {
    this.time = time;
  }

  public String getTime()
  {
    return time;
  }

  public WebCountEntity()
  {
    super();
  }

  public WebCountEntity(Integer webId, Integer count, String time)
  {
    super();
    this.webId = webId;
    this.count = count;
    this.time = time;
  }

}
