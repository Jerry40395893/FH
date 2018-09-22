package org.xmgreat.tools;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class EncodeFilter implements Filter
{
  private List<String> ig = new ArrayList<String>();

  @Override
  public void doFilter(ServletRequest req, ServletResponse resp,
    FilterChain chain) throws IOException, ServletException
  {
    /** 设置请求和响应的编码格式 */
    req.setCharacterEncoding("utf-8");
    resp.setContentType("utf-8");
    /** 转换成父类在获取session对象 */
    HttpServletResponse response = (HttpServletResponse) resp;
    response.setHeader("Content-type", "text/html;charset=UTF-8");
    chain.doFilter(req, resp);
  }

  @Override
  public void init(FilterConfig filter) throws ServletException
  {

  }

  @Override
  public void destroy()
  {
    /* System.out.println("服务器断开后，销毁filter"); */

  }

  /*
   * private boolean canIgnore(HttpServletRequest request) { String url =
   * request.getRequestURI(); for (String ignore : ig) { System.out.println(
   * url.endsWith(ignore) + " url------>" + url + "------" + ignore); if
   * (url.startsWith(ignore)) { return true; } } return false; }
   */

}
