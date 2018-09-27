package org.xmgreat.tools;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

/**
 * @project cb-console-service
 * @author suruozhong
 * @description (日期工具类)
 * @date 2017年9月5日
 */
public class DateUtils
{

  public static final String[] zodiacArr = { "猴", "鸡", "狗", "猪", "鼠", "牛", "虎",
    "兔", "龙", "蛇", "马", "羊" };

  public static final String[] constellationArr = { "水瓶座", "双鱼座", "白羊座", "金牛座",
    "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "魔羯座" };

  public static final int[] constellationEdgeDay = { 20, 19, 21, 21, 21, 22, 23,
    23, 23, 23, 22, 22 };

  /**
   * 根据日期获取生肖
   * 
   * @return
   */
  public static String getZodica(Date date)
  {
    Calendar cal = Calendar.getInstance();
    cal.setTime(date);
    return zodiacArr[cal.get(Calendar.YEAR) % 12];
  }

  /**
   * 根据日期获取星座
   * 
   * @return
   */
  public static String getConstellation(Date date)
  {
    if (date == null)
    {
      return "";
    }
    Calendar cal = Calendar.getInstance();
    cal.setTime(date);
    int month = cal.get(Calendar.MONTH);
    int day = cal.get(Calendar.DAY_OF_MONTH);
    if (day < constellationEdgeDay[month])
    {
      month = month - 1;
    }
    if (month >= 0)
    {
      return constellationArr[month];
    }
    // default to return 魔羯
    return constellationArr[11];
  }

  /**
   * 获取当天的开始时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static java.util.Date getDayBegin()
  {
    /*
     * Calendar cal = new GregorianCalendar(); cal.set(Calendar.HOUR_OF_DAY, 0);
     * cal.set(Calendar.MINUTE, 0); cal.set(Calendar.SECOND, 0);
     * cal.set(Calendar.MILLISECOND, 0); return cal.getTime();
     */
    Date date = new Date();
    return getDayStartTime(date);
  }

  /**
   * 获取当天的结束时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static java.util.Date getDayEnd()
  {
    /*
     * Calendar cal = new GregorianCalendar(); cal.set(Calendar.HOUR_OF_DAY,
     * 23); cal.set(Calendar.MINUTE, 59); cal.set(Calendar.SECOND, 59); return
     * cal.getTime();
     */
    Date date = new Date();
    return getDayEndTime(date);
  }

  /**
   * 获取昨天的开始时间
   * 
   * @return 默认格式 Wed May 31 14:47:18 CST 2017
   */
  public static Date getBeginDayOfYesterday()
  {
    Calendar cal = new GregorianCalendar();
    cal.setTime(getDayBegin());
    cal.add(Calendar.DAY_OF_MONTH, -1);
    return cal.getTime();
  }

  /**
   * 获取昨天的结束时间
   * 
   * @return 默认格式 Wed May 31 14:47:18 CST 2017
   */
  public static Date getEndDayOfYesterDay()
  {
    Calendar cal = new GregorianCalendar();
    cal.setTime(getDayEnd());
    cal.add(Calendar.DAY_OF_MONTH, -1);
    return cal.getTime();
  }

  /**
   * 获取明天的开始时间
   * 
   * @return 默认格式 Wed May 31 14:47:18 CST 2017
   */
  public static Date getBeginDayOfTomorrow()
  {
    Calendar cal = new GregorianCalendar();
    cal.setTime(getDayBegin());
    cal.add(Calendar.DAY_OF_MONTH, 1);

    return cal.getTime();
  }

  /**
   * 获取明天的结束时间
   * 
   * @return 默认格式 Wed May 31 14:47:18 CST 2017
   */
  public static Date getEndDayOfTomorrow()
  {
    Calendar cal = new GregorianCalendar();
    cal.setTime(getDayEnd());
    cal.add(Calendar.DAY_OF_MONTH, 1);
    return cal.getTime();
  }

  /**
   * 获取本周的开始时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static Date getBeginDayOfWeek()
  {
    Date date = new Date();
    Calendar cal = Calendar.getInstance();
    cal.setTime(date);
    int dayofweek = cal.get(Calendar.DAY_OF_WEEK);
    if (dayofweek == 1)
    {
      dayofweek += 7;
    }
    cal.add(Calendar.DATE, 2 - dayofweek);
    return getDayStartTime(cal.getTime());
  }

  /**
   * 获取本周的结束时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static Date getEndDayOfWeek()
  {
    Calendar cal = Calendar.getInstance();
    cal.setTime(getBeginDayOfWeek());
    cal.add(Calendar.DAY_OF_WEEK, 6);
    Date weekEndSta = cal.getTime();
    return getDayEndTime(weekEndSta);
  }

  /**
   * 获取本月的开始时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static Date getBeginDayOfMonth()
  {
    Calendar calendar = Calendar.getInstance();
    calendar.set(getNowYear(), getNowMonth() - 1, 1);
    return getDayStartTime(calendar.getTime());
  }

  /**
   * 获取本月的结束时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static Date getEndDayOfMonth()
  {
    Calendar calendar = Calendar.getInstance();
    calendar.set(getNowYear(), getNowMonth() - 1, 1);
    int day = calendar.getActualMaximum(5);
    calendar.set(getNowYear(), getNowMonth() - 1, day);
    return getDayEndTime(calendar.getTime());
  }

  /**
   * 获取本年的开始时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static java.util.Date getBeginDayOfYear()
  {
    Calendar cal = Calendar.getInstance();
    cal.set(Calendar.YEAR, getNowYear());
    // cal.set
    cal.set(Calendar.MONTH, Calendar.JANUARY);
    cal.set(Calendar.DATE, 1);

    return getDayStartTime(cal.getTime());
  }

  /**
   * 获取本年的结束时间
   * 
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static java.util.Date getEndDayOfYear()
  {
    Calendar cal = Calendar.getInstance();
    cal.set(Calendar.YEAR, getNowYear());
    cal.set(Calendar.MONTH, Calendar.DECEMBER);
    cal.set(Calendar.DATE, 31);
    return getDayEndTime(cal.getTime());
  }

  /**
   * 获取某个日期的开始时间
   * 
   * @param d
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static Timestamp getDayStartTime(Date d)
  {
    Calendar calendar = Calendar.getInstance();
    if (null != d)
      calendar.setTime(d);
    calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH),
      calendar.get(Calendar.DAY_OF_MONTH), 0, 0, 0);
    calendar.set(Calendar.MILLISECOND, 0);
    return new Timestamp(calendar.getTimeInMillis());
  }

  /**
   * 获取某个日期的结束时间
   * 
   * @param d
   * @return yyyy-MM-dd HH:mm:ss 格式
   */
  public static Timestamp getDayEndTime(Date d)
  {
    Calendar calendar = Calendar.getInstance();
    if (null != d)
      calendar.setTime(d);
    calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH),
      calendar.get(Calendar.DAY_OF_MONTH), 23, 59, 59);
    calendar.set(Calendar.MILLISECOND, 999);
    return new Timestamp(calendar.getTimeInMillis());
  }

  /**
   * 获取某年某月的第一天
   * 
   * @param year
   * @param month
   * @return
   */
  public static Date getStartMonthDate(int year, int month)
  {
    Calendar calendar = Calendar.getInstance();
    calendar.set(year, month - 1, 1);
    return calendar.getTime();
  }

  /**
   * 获取某年某月的最后一天
   * 
   * @param year
   * @param month
   * @return
   */
  public static Date getEndMonthDate(int year, int month)
  {
    Calendar calendar = Calendar.getInstance();
    calendar.set(year, month - 1, 1);
    int day = calendar.getActualMaximum(5);
    calendar.set(year, month - 1, day);
    return calendar.getTime();
  }

  /**
   * 获取今年是哪一年
   * 
   * @return
   */
  public static Integer getNowYear()
  {
    Date date = new Date();
    GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
    gc.setTime(date);
    return Integer.valueOf(gc.get(1));
  }

  /**
   * 获取本月是哪一月
   * 
   * @return
   */
  public static int getNowMonth()
  {
    Date date = new Date();
    GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
    gc.setTime(date);
    return gc.get(2) + 1;
  }

  /**
   * 两个日期相减得到的天数
   * 
   * @param beginDate
   * @param endDate
   * @return
   */
  public static int getDiffDays(Date beginDate, Date endDate)
  {

    if (beginDate == null || endDate == null)
    {
      throw new IllegalArgumentException("getDiffDays param is null!");
    }

    long diff = (endDate.getTime() - beginDate.getTime())
      / (1000 * 60 * 60 * 24);

    int days = new Long(diff).intValue();

    return days;
  }

  /**
   * 两个日期相减得到的毫秒数
   * 
   * @param beginDate
   * @param endDate
   * @return
   */
  public static long dateDiff(Date beginDate, Date endDate)
  {
    long date1ms = beginDate.getTime();
    long date2ms = endDate.getTime();
    return date2ms - date1ms;
  }

  /**
   * 获取两个日期中的最大日期
   * 
   * @param beginDate
   * @param endDate
   * @return
   */
  public static Date max(Date beginDate, Date endDate)
  {
    if (beginDate == null)
    {
      return endDate;
    }
    if (endDate == null)
    {
      return beginDate;
    }
    if (beginDate.after(endDate))
    {
      return beginDate;
    }
    return endDate;
  }

  /**
   * 获取两个日期中的最小日期
   * 
   * @param beginDate
   * @param endDate
   * @return
   */
  public static Date min(Date beginDate, Date endDate)
  {
    if (beginDate == null)
    {
      return endDate;
    }
    if (endDate == null)
    {
      return beginDate;
    }
    if (beginDate.after(endDate))
    {
      return endDate;
    }
    return beginDate;
  }

  /**
   * 返回某月该季度的第一个月
   * 
   * @param date
   * @return
   */
  public static Date getFirstSeasonDate(Date date)
  {
    final int[] SEASON = { 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4 };
    Calendar cal = Calendar.getInstance();
    cal.setTime(date);
    int sean = SEASON[cal.get(Calendar.MONTH)];
    cal.set(Calendar.MONTH, sean * 3 - 3);
    return cal.getTime();
  }

  /**
   * 返回某个日期下几天的日期
   * 
   * @param date
   * @param i
   * @return
   */
  public static String getNextDay(Date date, int i)
  {
    Calendar cal = new GregorianCalendar();
    cal.setTime(date);
    cal.set(Calendar.DATE, cal.get(Calendar.DATE) + i);

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");// 小写的mm表示的是分钟

    String str = sdf.format(cal.getTime());
    return str;
  }

  /**
   * 返回某个日期前几天的日期
   * 
   * @param date
   * @param i
   * @return
   */
  public static Date getFrontDay(Date date, int i)
  {
    Calendar cal = new GregorianCalendar();
    cal.setTime(date);
    cal.set(Calendar.DATE, cal.get(Calendar.DATE) - i);
    return cal.getTime();
  }

  /**
   * 获取某年某月到某年某月按天的切片日期集合（间隔天数的日期集合）
   * 
   * @param beginYear
   * @param beginMonth
   * @param endYear
   * @param endMonth
   * @param k
   * @return
   */
  public static List<List<Date>> getTimeList(int beginYear, int beginMonth,
    int endYear, int endMonth, int k)
  {
    List<List<Date>> list = new ArrayList<List<Date>>();
    if (beginYear == endYear)
    {
      for (int j = beginMonth; j <= endMonth; j++)
      {
        list.add(getTimeList(beginYear, j, k));

      }
    } else
    {
      {
        for (int j = beginMonth; j < 12; j++)
        {
          list.add(getTimeList(beginYear, j, k));
        }

        for (int i = beginYear + 1; i < endYear; i++)
        {
          for (int j = 0; j < 12; j++)
          {
            list.add(getTimeList(i, j, k));
          }
        }
        for (int j = 0; j <= endMonth; j++)
        {
          list.add(getTimeList(endYear, j, k));
        }
      }
    }
    return list;
  }

  /**
   * 获取某年某月按天切片日期集合（某个月间隔多少天的日期集合）
   * 
   * @param beginYear
   * @param beginMonth
   * @param k
   * @return
   */

  public static List<Date> getTimeList(int beginYear, int beginMonth, int k)
  {
    List<Date> list = new ArrayList<Date>();
    Calendar begincal = new GregorianCalendar(beginYear, beginMonth, 1);
    int max = begincal.getActualMaximum(Calendar.DATE);
    for (int i = 1; i < max; i = i + k)
    {
      list.add(begincal.getTime());
      begincal.add(Calendar.DATE, k);
    }
    begincal = new GregorianCalendar(beginYear, beginMonth, max);
    list.add(begincal.getTime());
    return list;
  }

  public static List<String> getTimeList2(int beginYear, int beginMonth, int k)
  {
    List<String> list = new ArrayList<String>();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Calendar begincal = new GregorianCalendar(beginYear, beginMonth, 1);
    int max = begincal.getActualMaximum(Calendar.DATE);
    for (int i = 1; i < max; i = i + k)
    {
      list.add(sdf.format(begincal.getTime()));
      begincal.add(Calendar.DATE, k);
    }
    begincal = new GregorianCalendar(beginYear, beginMonth, max);

    list.add(sdf.format(begincal.getTime()));

    // ---------------
    // SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    // System.out.println(sdf.format(date));

    return list;
  }

  /**
   * 格式化日期 yyyy-MM-dd HH:mm:ss
   * 
   * @Description:
   * @param @param
   *          date
   * @param @return
   *
   */
  private static Date format(Date date)
  {
    SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    try
    {
      date = sd.parse(sd.format(date));
    } catch (ParseException e)
    {
      e.printStackTrace();
    }
    return date;
  }

  // 根据当前日期获得所在周的日期区间（周一和周日日期）
  public static List getTimeInterval(Date date)
  {
    Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat(" yyyy-MM-dd "); // HH:mm:ss");
    cal.setTime(date);
    // 判断要计算的日期是否是周日，如果是则减一天计算周六的，否则会出问题，计算到下一周去了
    int dayWeek = cal.get(Calendar.DAY_OF_WEEK);// 获得当前日期是一个星期的第几天
    if (1 == dayWeek)
    {
      cal.add(Calendar.DAY_OF_MONTH, -1);
    }
    // System.out.println("要计算日期为:" + sdf.format(cal.getTime())); // 输出要计算日期
    // 设置一个星期的第一天，按中国的习惯一个星期的第一天是星期一
    cal.setFirstDayOfWeek(Calendar.MONDAY);
    // 获得当前日期是一个星期的第几天
    int day = cal.get(Calendar.DAY_OF_WEEK);
    // 根据日历的规则，给当前日期减去星期几与一个星期第一天的差值
    cal.add(Calendar.DATE, cal.getFirstDayOfWeek() - day);
    String imptimeBegin = sdf.format(cal.getTime());
    // System.out.println("所在周星期一的日期：" + imptimeBegin);
    cal.add(Calendar.DATE, 6);
    String imptimeEnd = sdf.format(cal.getTime());
    // System.out.println("所在周星期日的日期：" + imptimeEnd);
    // return imptimeBegin + "," + imptimeEnd;
    // -------------------------------
    String time1 = imptimeBegin;
    String time2 = imptimeEnd;
    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");// yyyy-mm-dd,
                                                               // 会出现时间不对,
                                                               // 因为小写的mm是代表: 秒
    Date utilDate1 = null;
    Date utilDate2 = null;
    try
    {
      utilDate1 = sdf2.parse(time1);
      utilDate2 = sdf2.parse(time2);
    } catch (ParseException e)
    {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    // ------------------------------------------------------------
    List lDate = new ArrayList();
    lDate.add(time1);
    Calendar calBegin = Calendar.getInstance();
    // 使用给定的 Date 设置此 Calendar 的时间
    calBegin.setTime(utilDate1);
    Calendar calEnd = Calendar.getInstance();
    // 使用给定的 Date 设置此 Calendar 的时间
    calEnd.setTime(utilDate2);
    // 测试此日期是否在指定日期之后
    while (utilDate2.after(calBegin.getTime()))
    {
      // 根据日历的规则，为给定的日历字段添加或减去指定的时间量
      calBegin.add(Calendar.DAY_OF_MONTH, 1);
      lDate.add(sdf.format(calBegin.getTime()));

    }
    return lDate;

  }

  // x代表距离本月多少个月 前一个月-1 本月为0
  public static List getMouthStartAndEnd(int x)
  {
    List lDate = new ArrayList();

    Calendar c = Calendar.getInstance();
    c.add(Calendar.MONTH, x);
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  ");
    String gtimelast = sdf.format(c.getTime()); // 上月
    int lastMonthMaxDay = c.getActualMaximum(Calendar.DAY_OF_MONTH);
    c.set(c.get(Calendar.YEAR), c.get(Calendar.MONTH), lastMonthMaxDay, 23, 59,
      59);

    // 按格式输出
    String gtime = sdf.format(c.getTime()); // 上月最后一天
    // System.out.println(gtime);
    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-01  ");
    String gtime2 = sdf2.format(c.getTime()); // 上月第一天
    // System.out.println(gtime2);

    lDate.add(gtime2);
    lDate.add(gtime);
    return lDate;
  }

  public static void main(String args[])
  {
    /* Date date = new Date(); */
    /*
     * System.out.println(getBeginDayOfWeek());
     *//** 获取当月第一天 */
    /*
     * System.out.println(getBeginDayOfMonth());
     *//** 获取当年一月一号 **//*
                       * System.out.println(getBeginDayOfYear());
                       * 
                       * System.out.println(getTimeList2(2018, 7, 1));
                       * 
                       * System.out.println(getTimeInterval(new Date()));
                       * 
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 0));
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 6));
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 7));
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 13));
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 14));
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 20));
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 21));
                       * System.out.println(getNextDay(getBeginDayOfMonth(),
                       * 27));
                       */

    // -----------获取近三月--------------------
    List lDate = new ArrayList();
    lDate = getMouthStartAndEnd(-2);
    for (int i = 0; i < lDate.size(); i++)
    {
      String time = (String) lDate.get(i);
      System.out.println(time);
    }
    /* System.out.println(getMouthStartAndEnd(-2)); */
    /*
     * System.out.println(getMouthStartAndEnd(-1));
     * System.out.println(getMouthStartAndEnd(0));
     */

  }

}
