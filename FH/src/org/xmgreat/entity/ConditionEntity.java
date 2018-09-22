package org.xmgreat.entity;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Component;

/*
 * 作者：沈杰
 * 用途：条件类，里面装有request，套餐搜索条件。后续有需要的参数可以自行增加
 * 版本：第一版
 * 更改时间：2018-9-21
 */
@Component
public class ConditionEntity
{
  /** 为了biz层能够将数据展示在前端jsp页面 */
  private HttpServletRequest request;
  /** 搜索条件，套餐名称 */
  private String comName;
  /** 搜索时间，套餐持续时间 */
  private Integer time;
  /** 搜索价格，套餐价格 */
  private Integer price;
  /** 条件分页参数，大于当前页数 */
  private Integer forNum;
  /** 条件分页参数，小于当前页数 */
  private Integer toNum;
  /** 最大记录数 */
  private Integer sumCount;
  /** 当前页数 */
  private Integer currentPage;
  /** 数据库中当前后台每页的条数 */
  private Integer baseNum;
  /** 跳页类型 */
  private Integer turnPage;

  public ConditionEntity()
  {
    super();
  }

  /**
   * @return the request
   */
  public HttpServletRequest getRequest()
  {
    return request;
  }

  /**
   * @return the time
   */
  public Integer getTime()
  {
    return time;
  }

  /**
   * @return the price
   */
  public Integer getPrice()
  {
    return price;
  }

  /**
   * @param request
   *          the request to set
   */
  public void setRequest(HttpServletRequest request)
  {
    this.request = request;
  }

  /**
   * @return the comName
   */
  public String getComName()
  {
    return comName;
  }

  /**
   * @param comName
   *          the comName to set
   */
  public void setComName(String comName)
  {
    this.comName = comName;
  }

  /**
   * @param time
   *          the time to set
   */
  public void setTime(Integer time)
  {
    this.time = time;
  }

  /**
   * @param price
   *          the price to set
   */
  public void setPrice(Integer price)
  {
    this.price = price;
  }

  public Integer getForNum()
  {
    return forNum;
  }

  public void setForNum(Integer forNum)
  {
    this.forNum = forNum;
  }

  public Integer getToNum()
  {
    return toNum;
  }

  public void setToNum(Integer toNum)
  {
    this.toNum = toNum;
  }

  public Integer getSumCount()
  {
    return sumCount;
  }

  public void setSumCount(Integer sumCount)
  {
    this.sumCount = sumCount;
  }

  public Integer getCurrentPage()
  {
    return currentPage;
  }

  public void setCurrentPage(Integer currentPage)
  {
    this.currentPage = currentPage;
  }

  public Integer getBaseNum()
  {
    return baseNum;
  }

  public void setBaseNum(Integer baseNum)
  {
    this.baseNum = baseNum;
  }

  public Integer getTurnPage()
  {
    return turnPage;
  }

  public void setTurnPage(Integer turnPage)
  {
    this.turnPage = turnPage;
  }

}
