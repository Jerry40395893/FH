package org.xmgreat.biz.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.xmgreat.biz.AdminZzhBiz;
import org.xmgreat.entity.AdminEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.MenuEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.mapper.AdminZzhMapper;

@Service
public class AdminZzhBizImpl implements AdminZzhBiz
{
  @Resource
  private AdminZzhMapper adminMapper;
  /** 动态菜单list **/
  private List<MenuEntity> menuList;
  /** 会员管理获取分页list **/
  private List<UserEntity> userList;
  /** 会员管理获取总的list **/
  private List<UserEntity> userCountList;
  /** 记录总页数 **/
  private List<Integer> list = new ArrayList<Integer>();
  /** 为了biz层能够将数据展示在前端jsp页面 */
  private HttpServletRequest request;
  /** 分页选择里面的页数 */
  private Integer listSize;
  /** 最大记录数 */
  private Integer sumCount;
  /** 当前页数 */
  private Integer currentPage;
  /** 管理员列表 */
  private List<AdminEntity> adminList;


  /*
   * 管理员登录
   */
  @Override
  public AdminEntity login(AdminEntity adminEntity)
  {
    AdminEntity adminB = adminMapper.login(adminEntity);
    return adminB;
  }

  /*
   * 查询管理员
   */
  @Override
  public List<AdminEntity> selecAdmin(AdminEntity adminEntity)
  {
    List<AdminEntity> adminList = adminMapper.selecAdmin(adminEntity);
    return adminList;
  }

  /*
   * 查询管理员-页数
   */
  @Override
  public List<AdminEntity> selecAdminP(int page)
  {
    List<AdminEntity> adminList = adminMapper.selecAdminP(page);
    return adminList;
  }

  /*
   * 删除管理员
   */
  @Override
  public void delAdmin(AdminEntity adminEntity)
  {

    adminMapper.delAdmin(adminEntity);
  }

  /*
   * 添加管理员
   */
  @Override
  public void addAdmin(AdminEntity adminEntity)
  {

    adminMapper.addAdmin(adminEntity);
  }

  /*
   * 重置密码
   */
  @Override
  public void upPsw(AdminEntity adminEntity)
  {
    adminMapper.upAdminPsw(adminEntity);

  }

  /*
   * 后台动态菜单展示
   */
  @Override
  public List<MenuEntity> selecMenu(AdminEntity adminEntity)
  {

    menuList = adminMapper.selecMenu(adminEntity);

    return menuList;
  }

  /*
   * 会员管理列表展示 2018/09/22 12：57 作者： 张增辉
   */
  @Override
  public List<UserEntity> selecUserL(ConditionEntity conditionEntity)
  {
    request = ((ServletRequestAttributes) RequestContextHolder
      .getRequestAttributes()).getRequest();

    userList = adminMapper.selecUser(conditionEntity);
    userCountList = adminMapper.getUserCount(conditionEntity);
    /** 判断并计算总页数 */
    listSize = userCountList.size() / 5
      + ((userCountList.size() % 5) > 0 ? 1 : 0);
    /** 清除之前遗留的数据 */
    list.clear();
    for (int i = 0; i < listSize; i++)
    {
      list.add(i);
    }

    currentPage = conditionEntity.getCurrentPage();
    if (currentPage <= 0)
    {
      System.out.println("打印" + currentPage);
      currentPage = 1;
      conditionEntity.setCurrentPage(currentPage);
    } else
    {
      userList = adminMapper.selecUser(conditionEntity);
      if (userList.size() == 0)
      {
        currentPage = currentPage - 1;
        conditionEntity.setCurrentPage(currentPage);
      }
    }
    userList = adminMapper.selecUser(conditionEntity);

    sumCount = userCountList.size();
    request.setAttribute("currentPage", currentPage);
    request.setAttribute("sumCount", sumCount);
    request.setAttribute("userList", userList);
    request.setAttribute("list", list);
    /** 每次过去带模糊搜索的条件回去，分页的时候在带回来 */
    request.setAttribute("userName", conditionEntity.getUserName());
    request.setAttribute("sex", conditionEntity.getSex());
    request.setAttribute("onStage", conditionEntity.getOnStage());
    request.setAttribute("teleNum", conditionEntity.getTeleNum());
    return userList;
  }

  /*
   * 启用会员
   */
  @Override
  public void startUser(ConditionEntity conditionEntityint)
  {
    adminMapper.startUser(conditionEntityint);
  }

  /*
   * 禁用会员
   */
  @Override
  public void forbidUser(ConditionEntity conditionEntity)
  {
    adminMapper.forbidUser(conditionEntity);

  }

  /*
   * 删除会员
   */
  @Override
  public void delUser(ConditionEntity conditionEntity)
  {
    adminMapper.delUser(conditionEntity);
  }

  /*
   * 审核会员不通过
   */
  @Override
  public void audNUser(ConditionEntity conditionEntityint)
  {
    adminMapper.audNoUser(conditionEntityint);
  }

  /*
   * 审核会员通过
   */
  @Override
  public void audYUser(ConditionEntity conditionEntityint)
  {
    adminMapper.audYUser(conditionEntityint);

  }

  /*
   * 查重新增管理员名称
   */
  @Override
  public String checkAdmin(AdminEntity adminEntity)
  {
    System.out.println("yuel" + adminEntity.getAdmin().toString());
    adminList = adminMapper.nSAdmin(adminEntity);

    String msg1 = "已存在";
    // String adminA = request.getParameter("admin");// 账号

    if (adminList.size() != 0)
    {
      msg1 = "已存在";
    } else
    {
      msg1 = "未注册，可用";
    }

    return msg1;
  }

  @Override
  public List<UserEntity> userInfo(ConditionEntity conditionEntity)
  {
    request = ((ServletRequestAttributes) RequestContextHolder
      .getRequestAttributes()).getRequest();
    userList = adminMapper.infoUser(conditionEntity);
    request.setAttribute("userList", userList);
    return userList;
  }

  @Override
  public void addRoleId(AdminEntity adminEntity)
  {
    adminMapper.addRoleId(adminEntity);

  }

}
