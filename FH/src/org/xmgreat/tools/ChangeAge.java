package org.xmgreat.tools;

import java.util.Calendar;
import java.util.Date;

/**
 * 作者：沈杰 时间：2018-9-23 作用：将生日转换成年龄 版本：第一版
 * 
 **/
public class ChangeAge
{
  public static int getAgeByBirth(Date birthday)
  {
    int age = 0;
    try
    {
      Calendar now = Calendar.getInstance();
      // 当前时间
      now.setTime(new Date());
      Calendar birth = Calendar.getInstance();
      birth.setTime(birthday);
      if (birth.after(now))
      {
        // 如果传入的时间，在当前时间的后面，返回0岁
        age = 0;
      } else
      {
        age = now.get(Calendar.YEAR) - birth.get(Calendar.YEAR);
        if (now.get(Calendar.DAY_OF_YEAR) > birth.get(Calendar.DAY_OF_YEAR))
        {
          age += 1;
        }
      }
      return age;
    } catch (Exception e)
    {// 兼容性更强,异常后返回数据 return 0; }
    }
    return age;
  }

  /*
   * public static void main(String[] args) { SimpleDateFormat format = new
   * SimpleDateFormat("yyyy-MM-dd"); Date bithday; try { bithday =
   * format.parse("1992-10-2");
   * System.out.println(ChangeAge.getAgeByBirth(bithday)); } catch
   * (ParseException e) { // TODO Auto-generated catch block
   * e.printStackTrace(); }
   * 
   * }
   */
}
