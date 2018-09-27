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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.xmgreat.entity.AdminEntity;

public class AdminFilter implements Filter
{
  private List<String> ig = new ArrayList<String>();

  @Override
  public void destroy()
  {
    // TODO Auto-generated method stub

  }

  @Override
  public void doFilter(ServletRequest req, ServletResponse resp,
    FilterChain chain) throws IOException, ServletException
  {
    /** 设置请求和响应的编码格式 */
    req.setCharacterEncoding("utf-8");
    resp.setContentType("utf-8");
    /** 转换成父类在获取session对象 */
    HttpServletRequest request = (HttpServletRequest) req;
    HttpServletResponse response = (HttpServletResponse) resp;
    HttpSession session = request.getSession();
    // 获得用户请求的uri
    if (canIgnore(request))
    {
      chain.doFilter(req, resp);
      return;
    } else
    {
      AdminEntity admin = (AdminEntity) session.getAttribute("adminB");
      /** 核心，跳出框架的方法 */
      if (null == admin)
      {
        /** 嵌在框架内部 */
        response.sendRedirect(request.getContextPath() + "/targetAdmin.jsp");
        return;

      } else
      {
        chain.doFilter(req, resp);
      }
    }

  }

  @Override
  /** 不需要过滤的 */
  public void init(FilterConfig filter) throws ServletException
  {
    // ** 通过映射获取xml文件中的忽略过滤的文件，过滤都为文件后缀 *//*
    String ignore = filter.getInitParameter("ignores");
    if (ignore != null)
    {
      String[] ignoreArray = ignore.split(",");
      for (String s : ignoreArray)
      {
        ig.add(s);
      }
    }

  }

  private boolean canIgnore(HttpServletRequest request)
  {
    String url = request.getRequestURI();

    if ((url.contains("user")) || (url.endsWith("/FH/")))
    {
      return true;
    }
    for (String ignore : ig)
    {
      if (url.endsWith(ignore))
      {
        return true;
      }
    }

    return false;
  }

}
