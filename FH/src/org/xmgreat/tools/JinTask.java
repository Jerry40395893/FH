package org.xmgreat.tools;

import java.util.TimerTask;
import org.xmgreat.biz.impl.ComSjBizImpl;

/**
 * 作者：沈杰 功能：实际操作类 用途：男神榜女神榜动态更新 创建：2018.9.23 版本：第一版
 * 
 * @param <ClassPathApplicationContext>
 * 
 **/
public class JinTask extends TimerTask
{
  private ComSjBizImpl comSjBizImpl = new ComSjBizImpl();

  public JinTask()
  {
    super();
  }

  /** web监听实际操作类，根据需求定时的启动这个定时器进行评分刷新 */
  @Override
  public void run()
  {
    /** 每天24点定时刷新排行榜 */
    /* comSjBizImpl.updateBanking(); */
  }

}
