package org.xmgreat.test;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil
{ // 连接oracle数据库的应用
  private static final String jdbcName = "oracle.jdbc.OracleDriver";
  private static final String url = "jdbc:oracle:thin:@localhost:1521:orcl";
  private static final String user = "jx180311";
  private static final String password = "123456";
  private static Connection connection = null;

  public static Connection getConn() throws Exception
  {
    Class.forName(jdbcName);
    connection = DriverManager.getConnection(url, user, password);
    return connection;
  }

  public void closeConn(Connection conn) throws Exception
  {
    if (conn != null)
    {
      conn.close();
    }
  }

  public static void main(String[] args) throws Exception
  {
    DbUtil dbUtil = new DbUtil();
    Connection conn = DbUtil.getConn();
    if (conn != null)
    {
      System.out.println("Oracle数据库连接成功");
    } else
    {
      System.out.println("Oracle数据库连接失败");
    }
    dbUtil.closeConn(conn);
  }
}