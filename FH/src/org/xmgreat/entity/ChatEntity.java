package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * ChatEntity 实体类 Wed Sep 19 15:50:47 CST 2018 沈杰---聊天记录表
 */

@Component
public class ChatEntity
{
  private Integer chatId;
  private Integer userId;
  private Integer toUserId;
  private String msg;
  private String msgTime;
  private Integer stage;

  public void setMsg(String msg)
  {
    this.msg = msg;
  }

  public String getMsg()
  {
    return msg;
  }

  public void setStage(Integer stage)
  {
    this.stage = stage;
  }

  public Integer getStage()
  {
    return stage;
  }

  public ChatEntity()
  {
    super();
  }

  public ChatEntity(Integer chatId, Integer userId, Integer toUserId,
    String msg, String msgTime, Integer stage)
  {
    super();
    this.chatId = chatId;
    this.userId = userId;
    this.toUserId = toUserId;
    this.msg = msg;
    this.msgTime = msgTime;
    this.stage = stage;
  }

  /**
   * @return the chatId
   */
  public Integer getChatId()
  {
    return chatId;
  }

  /**
   * @return the userId
   */
  public Integer getUserId()
  {
    return userId;
  }

  /**
   * @return the toUserId
   */
  public Integer getToUserId()
  {
    return toUserId;
  }

  /**
   * @return the msgTime
   */
  public String getMsgTime()
  {
    return msgTime;
  }

  /**
   * @param chatId
   *          the chatId to set
   */
  public void setChatId(Integer chatId)
  {
    this.chatId = chatId;
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
   * @param toUserId
   *          the toUserId to set
   */
  public void setToUserId(Integer toUserId)
  {
    this.toUserId = toUserId;
  }

  /**
   * @param msgTime
   *          the msgTime to set
   */
  public void setMsgTime(String msgTime)
  {
    this.msgTime = msgTime;
  }

}
