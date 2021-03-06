package org.xmgreat.handle;

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
import org.xmgreat.biz.impl.ComSjBizImpl;
import org.xmgreat.biz.impl.hwyBizImpl;
import org.xmgreat.entity.ComboEntity;
import org.xmgreat.entity.ConditionEntity;
import org.xmgreat.entity.ParameterEntity;
import org.xmgreat.entity.UserEntity;
import org.xmgreat.tools.MD5Utils;
import org.xmgreat.tools.PhoneCode;

import com.aliyuncs.exceptions.ClientException;

@Controller // 此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/user/hwy")
public class hwyUserHandle {
	
	@Resource
	hwyBizImpl hwyBizImpl;
	
	 @Resource
	 ComSjBizImpl comSjBizImpl;
	
	private String checkNullToString(String str) {
		return str == null ? "" : str;
	}

	// to ../bw/index.jsp
	@RequestMapping("/index.action")
	public ModelAndView showWelcom() {
		return new ModelAndView("bw/index");
	}
	
	// to ../bw/Register.jsp
	@RequestMapping("/toRegister.action")
	public ModelAndView toRegister() {
		return new ModelAndView("bw/Register");
	}
	
	// to ../bw/ResetPasw.jsp
	@RequestMapping("/toResetPasw.action")
	public ModelAndView toResetPasw() {
		return new ModelAndView("bw/ResetPasw");
	}
	
	// to ../bw/MyCombo.jsp
	@RequestMapping("/toCombo.action")
	public ModelAndView toCombo(HttpServletRequest request,ConditionEntity con) {
	    con.setRequest(request);
	    comSjBizImpl.geComboEntity(con);
	    return new ModelAndView("bw/MyCombo");
	}
	
	// to ../bw/Alipay.jsp
	@RequestMapping("/toAlipay.action")
	public ModelAndView toAlipay(HttpServletRequest request,Integer comboId) {
	    ComboEntity comboEntity = comSjBizImpl.getCom(comboId);
	    request.setAttribute("com", comboEntity);
		return new ModelAndView("alipay/index");
	}

	// 前台模态框ajax登录
		@RequestMapping("/ajaxLogin.action")
		public @ResponseBody String ajaxLogin(HttpServletRequest request, HttpServletResponse response,String userAccount,String pasw) {
			String result = "false";
			List<UserEntity> userList = new ArrayList<UserEntity>();
			
			userAccount = checkNullToString(userAccount);
			pasw = checkNullToString(pasw);
			pasw = MD5Utils.MD5(pasw);
			
			HttpSession session = request.getSession();
			if(userAccount.contains("@")){
				userList = hwyBizImpl.select_LoginByEmail(userAccount, pasw);
			}else {
				userList = hwyBizImpl.select_LoginByTeleNum(userAccount, pasw);
			}

			if (!userList.isEmpty()) {
				result = "true";
				Integer userId = userList.get(0).getUserId();
				hwyBizImpl.update_LoginTime(userId);
				session.setAttribute("user", userList.get(0));
			}
			return result;
		}
		
		//Ajax注册
		@RequestMapping("/register.action")
		public @ResponseBody Boolean register(String birthday,String address,String height,String doctor,String salary,Long teleNum,String pasw,String userName,Integer cityId) {
			pasw = MD5Utils.MD5(pasw);
			System.out.println(cityId);
			UserEntity user = new UserEntity.Builder().setCityId(cityId).setAddress(address).setBrithday(birthday).setHeight(height).setDoctor(doctor).setSalary(salary).setTeleNum(teleNum).setPasw(pasw).setUserName(userName).build();
			int result = hwyBizImpl.insert_register(user);
			if(result == 1) {
				return true;
			}
			return false;
		}
		
		//Ajax修改密码
		@RequestMapping("/resetPasw.action")
		public @ResponseBody Boolean resetPasw(Long teleNum,String pasw) {
			pasw = MD5Utils.MD5(pasw);
			int result = hwyBizImpl.update_ResetPasw(teleNum,pasw);
			if(result == 1) {
				return true;
			}
			return false;
		}
		
		//Ajax注销
		@RequestMapping("/logOFF.action")
		public @ResponseBody Boolean logOFF(HttpServletRequest request) {
			request.getSession().invalidate();
			return true;
		}
		
		//Ajax请求注册用参数
		@RequestMapping("/getRegParameter.action")
		public @ResponseBody List<ParameterEntity> getRegParameter() {
			return hwyBizImpl.getParameterByPIds(101,102,103,104,105,106,107,108,109,110);
		}
		
		//Ajax请求任意参数-ByPIDs
		@RequestMapping("/getAnyParameter.action")
		public @ResponseBody List<ParameterEntity> getAnyParameter(Integer parameterPID) {
			return hwyBizImpl.getParameterByPIds(parameterPID);
		}
		
		//Ajax请求手机短信验证码--注册
		@RequestMapping("/getRegPhoneVCode.action")
		public @ResponseBody Boolean getRegPhoneVCode(String teleNum,HttpServletRequest request) throws ClientException {
			Integer phoneVCode = new PhoneCode().sendCodeByArray("注册", teleNum);
			if(phoneVCode != null) {
				request.getSession().setAttribute("phoneVCode", phoneVCode);
				return true;
			}
			return false;
		}
		
		//Ajax确认手机短信验证码--注册
		@RequestMapping("/checkRegPhoneVCode.action")
		public @ResponseBody Boolean checkRegPhoneVCode(String phoneVCode,HttpServletRequest request) throws ClientException {
		Integer sessionPhoneVCode =	(Integer) request.getSession().getAttribute("phoneVCode");
			if(phoneVCode.equals(sessionPhoneVCode+"")) {
				return true;
			}
			return false;
		}
		
		//Ajax请求手机短信验证码--修改密码
		@RequestMapping("/getResetPaswPhoneVCode.action")
		public @ResponseBody Boolean getResetPaswPhoneVCode(String teleNum,HttpServletRequest request) throws ClientException {
			Integer phoneVCode = new PhoneCode().sendCodeByArray("修改密码", teleNum);
			if(phoneVCode != null) {
				request.getSession().setAttribute("phoneVCode", phoneVCode);
				return true;
			}
			return false;
		}
		
		//Ajax确认手机短信验证码--修改密码
		@RequestMapping("/checkResetPaswPhoneVCode.action")
		public @ResponseBody Boolean checkResetPaswPhoneVCode(String phoneVCode,HttpServletRequest request) throws ClientException {
		Integer sessionPhoneVCode =	(Integer) request.getSession().getAttribute("phoneVCode");
			if(phoneVCode.equals(sessionPhoneVCode+"")) {
				return true;
			}
			return false;
		}
}
