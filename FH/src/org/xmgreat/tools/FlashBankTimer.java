package org.xmgreat.tools;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Timer;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 作者：沈杰 功能：监听类 用途：男神榜女神榜动态更新 创建：2018.9.23 版本：第一版
 * 
 **/
public class FlashBankTimer implements ServletContextListener
{
  private static Timer timer;
  private static JinTask task = new JinTask();

  @Override
  public void contextDestroyed(ServletContextEvent arg0)
  {
    // 监听消毁
    System.out.println("排行榜监听消毁");

  }

  /** web监听类，根据设定的时间每天定时调用操作类刷新用户排行榜评分 */
  @Override
  public void contextInitialized(ServletContextEvent arg0)
  {
    try
    {

      timer = new Timer(true);
      GregorianCalendar now = new GregorianCalendar();
      // 每天9:22执行 Calendar.DAY_OF_YEAR(一年中第一天的值为 1)
      // HOUR_OF_DAY( 用于 24 小时制时钟)
      // WEEK_OF_YEAR(第一个星期为1)
      now.set(Calendar.HOUR_OF_DAY, 9);
      now.set(Calendar.MINUTE, 58);
      now.set(Calendar.SECOND, 0);
      timer.schedule(task, now.getTime());

    } catch (Exception e)
    {
      e.printStackTrace();
    }

  }

}
