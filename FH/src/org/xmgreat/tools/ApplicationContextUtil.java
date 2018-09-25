package org.xmgreat.tools;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * 作者：沈杰 作用：解决time中@server无法注入的问题 时间：2018-9-25 版本：第一版
 **/

public class ApplicationContextUtil implements ApplicationContextAware
{
  private static ApplicationContext context;

  @Override
  public void setApplicationContext(ApplicationContext applicationContext)
    throws BeansException
  {
    context = applicationContext;

  }

  public static ApplicationContext getApplicationContext()
  {
    return context;
  }

  public static Object getBean(String beanName)
  {
    return context.getBean(beanName);
  }
}
