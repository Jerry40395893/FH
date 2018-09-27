package org.xmgreat.handle;

import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractXmlApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xmgreat.biz.impl.hwyBizImpl;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.tools.PhoneCode;

import com.aliyuncs.exceptions.ClientException;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin/hwy")
public class hwyAdminHandle {

	@Resource
	hwyBizImpl hwyBizImpl;
	
	// to ../web/parameterManage.jsp
	@RequestMapping("/parameterManage.action")
	public ModelAndView toParameterManage() {
		return new ModelAndView("web/ParameterManage");
	}

	// Ajax请求任意参数-ByID
	@RequestMapping("/getAnyParameter.action")
	public @ResponseBody List<ParameterEntity> getAnyParameter(Integer parameterPID) {
		return hwyBizImpl.getParameterByPIds(parameterPID);
	}
	
	// Ajax请求带分页任意参数-ByID
	@RequestMapping("/getAnyParameterWithPaging.action")
	public @ResponseBody List<ParameterEntity> getAnyParameterWithPaging(Integer parameterPID,String value,Integer pageNow) {
		String pageNum = hwyBizImpl.getParameterById(111003).get(0).getValue();
		return hwyBizImpl.getAnyParameterWithPaging(pageNow,pageNum,value,parameterPID);
	}
	
	// Ajax请求带分页的分页总数-ByID
	@RequestMapping("/getAnyParameterWithPageTotal.action")
	public @ResponseBody String getAnyParameterWithPageTotal(Integer parameterPID,String value) {
		String valueNum = hwyBizImpl.getParameterById(111003).get(0).getValue();
		//每页记录数
		Integer pageNum = null;
		if(valueNum!=null) {
			pageNum = Integer.parseInt(valueNum);
		}else {
			if(pageNum < 1) {
				return "false";
			}
		}
		List<ParameterEntity> parameterList = hwyBizImpl.getAnyParameterWithPageTotal(value,parameterPID);
		//总记录数
		Integer totalNum = parameterList.size();
		//计算总页数
		Integer totalPage = null;
		if (pageNum == 1) {
			totalPage = totalNum;
		} else {
			totalPage = (totalNum-1) / pageNum + 1;
		}
		return totalPage+"";
	}
	
	// Ajax请求任意参数删除-ByID
	@RequestMapping("/delAnyParameter.action")
	public @ResponseBody String delAnyParameter(Integer parameterID) {
		return hwyBizImpl.delAnyParameter(parameterID)+"";
	}
	
	// Ajax请求任意参数更新值-ByID
	@RequestMapping("/updateAnyParameter.action")
	public @ResponseBody Boolean updateAnyParameter(Integer parameterID,String value,Integer trNum) {
		Integer result = null;
		switch (trNum) {
		case 3:
			result = hwyBizImpl.updateAnyParameter_TrNum3(parameterID, value);
			break;
		case 4:
			result = hwyBizImpl.updateAnyParameter_TrNum4(parameterID, value);
			break;
		}
		if(result == 1) {
			return true;
		}
		return false;
	}
	
	// Ajax请求任意参数增加-ByID
	@RequestMapping("/addAnyParameter.action")
	public @ResponseBody Boolean addAnyParameter(String value,Integer parameterPID) {
		Integer result = hwyBizImpl.insertAnyParameter(value,parameterPID);
		if(result == 1) {
			return true;
		}
		return false;
	}

}
