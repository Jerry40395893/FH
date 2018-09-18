package org.xmgreat.test;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class GenEntityOracle
{

  private String packageOutPath = "org.xmgreat.entity";// 指定实体生成所在包的路径
  private String javaName = "UserEntity"; // .java文件名
  private String authorName = "沈杰";// 作者名字
  private String tablename = "userTable";// 表名
  private String[] colnames; // 列名数组
  private String[] colTypes; // 列名类型数组
  private int[] colSizes; // 列名大小数组
  private boolean f_util = false; // 是否需要导入包java.util.*
  private boolean f_sql = false; // 是否需要导入包java.sql.*

  // 数据库连接
  private static final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
  private static final String NAME = "jx180311";
  private static final String PASS = "123456";
  private static final String DRIVER = "oracle.jdbc.OracleDriver";

  /*
   * 构造函数
   */
  public GenEntityOracle()
  {
    // 创建连接
    Connection con = null;
    // 查要生成实体类的表
    String sql = "select * from " + tablename;
    Statement pStemt = null;
    try
    {
      try
      {
        // 加载驱动
        Class.forName(DRIVER);
      } catch (ClassNotFoundException e1)
      {
        e1.printStackTrace();
      }
      // 链接数据库
      con = DriverManager.getConnection(URL, NAME, PASS);
      pStemt = (Statement) con.createStatement();
      ResultSet rs = pStemt.executeQuery(sql);
      ResultSetMetaData rsmd = rs.getMetaData();
      int size = rsmd.getColumnCount(); // 统计列
      colnames = new String[size];
      colTypes = new String[size];
      colSizes = new int[size];
      for (int i = 0; i < size; i++)
      {
        colnames[i] = rsmd.getColumnName(i + 1);
        colTypes[i] = rsmd.getColumnTypeName(i + 1);

        if (colTypes[i].equalsIgnoreCase("date")
          || colTypes[i].equalsIgnoreCase("timestamp"))
        {
          f_util = true;
        }
        if (colTypes[i].equalsIgnoreCase("blob")
          || colTypes[i].equalsIgnoreCase("char"))
        {
          f_sql = true;
        }
        colSizes[i] = rsmd.getColumnDisplaySize(i + 1);
      }

      String content = parse(colnames, colTypes, colSizes);

      try
      {
        File directory = new File("");
        String outputPath = directory.getAbsolutePath() + "/src/"
          + this.packageOutPath.replace(".", "/") + "/" + javaName + ".java";
        FileWriter fw = new FileWriter(outputPath);
        PrintWriter pw = new PrintWriter(fw);
        pw.println(content);
        pw.flush();
        pw.close();
      } catch (IOException e)
      {
        e.printStackTrace();
      }

    } catch (SQLException e)
    {
      e.printStackTrace();
    } finally
    {
      try
      {
        con.close();
      } catch (SQLException e)
      {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
  }

  /**
   * 功能：生成实体类主体代码
   * 
   * @param colnames
   * @param colTypes
   * @param colSizes
   * @return
   */
  private String parse(String[] colnames, String[] colTypes, int[] colSizes)
  {
    StringBuffer sb = new StringBuffer();
    // 导入包名
    sb.append("package " + this.packageOutPath + ";\r\n");
    // 判断是否导入工具包
    if (f_util)
    {
      sb.append("import java.util.Date;\r\n");
    }
    if (f_sql)
    {
      sb.append("import java.sql.*;\r\n");
    }

    sb.append("\r\n");
    // 注释部分
    sb.append("   /**\r\n");
    sb.append("    * " + javaName + " 实体类\r\n");
    sb.append("    * " + new Date() + " " + this.authorName + "\r\n");
    sb.append("    */ \r\n");
    // 实体部分
    sb.append("\r\n\r\npublic class " + javaName + "{\r\n");
    processAllAttrs(sb);// 属性
    processAllMethod(sb);// get set方法
    processAllConstructor(sb); // 生成有参和无参构造方法
    sb.append("}\r\n");

    return sb.toString();
  }

  /**
   * 功能：生成所有属性
   * 
   * @param sb
   */
  private void processAllAttrs(StringBuffer sb)
  {

    for (int i = 0; i < colnames.length; i++)
    {
      sb.append("\tprivate " + sqlType2JavaType(colTypes[i]) + " "
        + colnames[i].toLowerCase() + ";\r\n");
    }
    // 换行
    sb.append("\r\n");
  }

  /**
   * 功能：生成所有方法
   * 
   * @param sb
   */
  private void processAllMethod(StringBuffer sb)
  {

    for (int i = 0; i < colnames.length; i++)
    {
      // 生成set方法
      sb.append("\tpublic void set" + initcap(colnames[i].toLowerCase()) + "("
        + sqlType2JavaType(colTypes[i]) + " " + colnames[i].toLowerCase()
        + "){\r\n");
      sb.append("\t\tthis." + colnames[i].toLowerCase() + "="
        + colnames[i].toLowerCase() + ";\r\n");
      sb.append("\t}\r\n\r\n");
      // 生成get方法
      sb.append("\tpublic " + sqlType2JavaType(colTypes[i]) + " get"
        + initcap(colnames[i].toLowerCase()) + "(){\r\n");
      sb.append("\t\treturn " + colnames[i].toLowerCase() + ";\r\n");
      sb.append("\t}\r\n\r\n");
    }
  }

  /**
   * 功能：生成无参和有参构造方法
   * 
   * @param sb
   */
  private void processAllConstructor(StringBuffer sb)
  {
    // 生成无参构造方法
    sb.append("\tpublic " + javaName + "(){\r\n");
    sb.append("\t\tsuper();\r\n");
    sb.append("\t}\r\n\r\n");
    // 生成有参构造函数
    sb.append("\tpublic " + javaName + "(");
    for (int i = 0; i < colnames.length; i++)
    {
      if (i == colnames.length - 1)
      {
        sb.append(sqlType2JavaType(colTypes[i].toLowerCase()) + " "
          + colnames[i].toLowerCase() + "){\r\n");
      } else
      {
        sb.append(sqlType2JavaType(colTypes[i].toLowerCase()) + " "
          + colnames[i].toLowerCase() + ", ");
      }
    }
    // 函数内容
    for (int i = 0; i < colnames.length; i++)
    {
      sb.append("\t\tthis." + colnames[i].toLowerCase() + " = "
        + colnames[i].toLowerCase() + ";\r\n");
    }
    sb.append("\t}");
    // 换行
    sb.append("\r\n");
  }

  /**
   * 功能：将输入字符串的首字母改成大写
   * 
   * @param str
   * @return
   */
  private String initcap(String str)
  {

    char[] ch = str.toCharArray();
    if (ch[0] >= 'a' && ch[0] <= 'z')
    {
      ch[0] = (char) (ch[0] - 32);
    }

    return new String(ch);
  }

  /**
   * 功能：获得列的数据类型 ,转化为java中的类型
   * 
   * @param sqlType
   * @return
   */
  private String sqlType2JavaType(String sqlType)
  {

    if (sqlType.equalsIgnoreCase("binary_double"))
    {
      return "Double";
    } else if (sqlType.equalsIgnoreCase("binary_float"))
    {
      return "Float";
    } else if (sqlType.equalsIgnoreCase("blob"))
    {
      return "byte[]";
    } else if (sqlType.equalsIgnoreCase("blob"))
    {
      return "byte[]";
    } else if (sqlType.equalsIgnoreCase("char")
      || sqlType.equalsIgnoreCase("nvarchar2")
      || sqlType.equalsIgnoreCase("varchar2"))
    {
      return "String";
    } else if (sqlType.equalsIgnoreCase("date")
      || sqlType.equalsIgnoreCase("timestamp")
      || sqlType.equalsIgnoreCase("timestamp with local time zone")
      || sqlType.equalsIgnoreCase("timestamp with time zone"))
    {
      return "Date";
    } else if (sqlType.equalsIgnoreCase("number"))
    {
      return "Integer";
    }

    return "String";
  }

  /**
   * 出口 TODO
   * 
   * @param args
   */
  public static void main(String[] args)
  {

    new GenEntityOracle();
    System.out.println("OK");
  }

}
