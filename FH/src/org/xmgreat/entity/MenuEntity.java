package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * MenuEntity 实体类 Wed Sep 19 16:55:28 CST 2018 沈杰---菜单表
 */

@Component
public class MenuEntity
{
  private Integer menuId;
  private String menuname;
  private Integer pId;
  private String URL;

  public void setMenuname(String menuname)
  {
    this.menuname = menuname;
  }

  public String getMenuname()
  {
    return menuname;
  }

  public MenuEntity()
  {
    super();
  }

  /**
   * @return the menuId
   */
  public Integer getMenuId()
  {
    return menuId;
  }

  /**
   * @return the pId
   */
  public Integer getpId()
  {
    return pId;
  }

  /**
   * @return the uRL
   */
  public String getURL()
  {
    return URL;
  }

  /**
   * @param menuId
   *          the menuId to set
   */
  public void setMenuId(Integer menuId)
  {
    this.menuId = menuId;
  }

  /**
   * @param pId
   *          the pId to set
   */
  public void setpId(Integer pId)
  {
    this.pId = pId;
  }

  /**
   * @param uRL
   *          the uRL to set
   */
  public void setURL(String uRL)
  {
    URL = uRL;
  }

  public MenuEntity(Integer menuId, String menuname, Integer pId, String uRL)
  {
    super();
    this.menuId = menuId;
    this.menuname = menuname;
    this.pId = pId;
    URL = uRL;
  }

}
