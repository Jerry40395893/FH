package org.xmgreat.tools;

import java.util.TimerTask;
import javax.annotation.Resource;
import org.springframework.stereotype.Repository;
import org.xmgreat.biz.impl.ComSjBizImpl;

/**
 * 作者：沈杰 功能：实际操作类 用途：男神榜女神榜动态更新 创建：2018.9.23 版本：第一版
 * 
 **/
@Repository
public class JinTask extends TimerTask
{
  @Resource
  private ComSjBizImpl comSjBizImpl;

  @Resource(name = "ComSjBizImpl")
  public void setXmdaoimp(ComSjBizImpl xmdaoimp)
  {
    this.comSjBizImpl = xmdaoimp;
  }

  /** web监听实际操作类，根据需求定时的启动这个定时器进行评分刷新 */
  @Override
  public void run()
  {
    comSjBizImpl = new ComSjBizImpl();
    /*
     * ComSjBiz comSjBizImpl = (ComSjBiz)
     * ApplicationContextUtil.getBean("comBiz");
     */
    comSjBizImpl.updateBanking();
  }

}
