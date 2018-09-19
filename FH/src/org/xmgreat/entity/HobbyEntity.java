package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * HobbyEntity 实体类 Wed Sep 19 16:39:31 CST 2018 沈杰---兴趣爱好表
 */

@Component
public class HobbyEntity
{
  private Integer hobbyId;
  private Integer userId;
  private String sport;
  private String food;
  private String book;
  private String movie;
  private String chanel;
  private String joke;
  private String hobby;
  private String travle;

  public void setSport(String sport)
  {
    this.sport = sport;
  }

  public String getSport()
  {
    return sport;
  }

  public void setFood(String food)
  {
    this.food = food;
  }

  public String getFood()
  {
    return food;
  }

  public void setBook(String book)
  {
    this.book = book;
  }

  public String getBook()
  {
    return book;
  }

  public void setMovie(String movie)
  {
    this.movie = movie;
  }

  public String getMovie()
  {
    return movie;
  }

  public void setChanel(String chanel)
  {
    this.chanel = chanel;
  }

  public String getChanel()
  {
    return chanel;
  }

  public void setJoke(String joke)
  {
    this.joke = joke;
  }

  public String getJoke()
  {
    return joke;
  }

  public void setHobby(String hobby)
  {
    this.hobby = hobby;
  }

  public String getHobby()
  {
    return hobby;
  }

  public void setTravle(String travle)
  {
    this.travle = travle;
  }

  public String getTravle()
  {
    return travle;
  }

  public HobbyEntity()
  {
    super();
  }

  /**
   * @return the hobbyId
   */
  public Integer getHobbyId()
  {
    return hobbyId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @param hobbyId
   *          the hobbyId to set
   */
  public void setHobbyId(Integer hobbyId)
  {
    this.hobbyId = hobbyId;
  }

  /**
   * @param userId
   *          the userId to set
   */
  public void setUserId(Integer userId)
  {
    this.userId = userId;
  }

  public HobbyEntity(Integer hobbyId, Integer userId, String sport, String food,
    String book, String movie, String chanel, String joke, String hobby,
    String travle)
  {
    super();
    this.hobbyId = hobbyId;
    this.userId = userId;
    this.sport = sport;
    this.food = food;
    this.book = book;
    this.movie = movie;
    this.chanel = chanel;
    this.joke = joke;
    this.hobby = hobby;
    this.travle = travle;
  }

}
