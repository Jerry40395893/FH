package org.xmgreat.biz;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.xmgreat.entity.EmailEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.entity.VisitEntity;

public interface UserLxdBiz
{ // 获取用户信息
  public UserEntity getUserInfo(VisitEntity visitEntity,
    HttpServletRequest request);

  // 获取少量用户信息
  public UserEntity getUser(VisitEntity visitEntity,
    HttpServletRequest request);

  // 写信
  public int addEmail(EmailEntity emailEntity);

  // 单页信件数据
  public List<EmailEntity> selectPageEmail(HttpServletRequest request,
    EmailEntity emailEntity, int page);
}
