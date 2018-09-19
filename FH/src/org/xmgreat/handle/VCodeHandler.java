package org.xmgreat.handle;

import java.awt.image.BufferedImage;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.xmgreat.tools.VCodeUtil;

/**
 * 	类名：	VCodeHandler 18-9-19
 * 	建立者：	何卧岩
 * 	用途：	所有页面通用验证码Handler
 */

@Controller
@RequestMapping("/global")//global应用于全局
public class VCodeHandler {

	//验证码
	@RequestMapping("/vCode.action")
	public void verificationCode(HttpServletRequest request,HttpServletResponse response) throws Exception {

		Map<String, BufferedImage> imageMap = VCodeUtil.createImage();

		/** 直接获取到key，得到验证码上面的数字信息 */
		String code = imageMap.keySet().iterator().next();
		/** 1.得到图片 */
		BufferedImage image = imageMap.get(code);
		// 验证码存在session
		System.out.println(code);
		request.getSession().setAttribute("vCode", code);
		/** 通过io流发送到前端2.输出图片 */
		ServletOutputStream sos = response.getOutputStream();
		/** 直接通过图片io流输出,3.图片，后缀，输出流 */
		ImageIO.write(image, "jpg", sos);
		
	}
	
}
