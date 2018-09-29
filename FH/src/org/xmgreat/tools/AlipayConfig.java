package org.xmgreat.tools;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092100560423";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC28ke/SW9UYOIgtGN0p8J++Dkik6rL0bV+n3W73PymOdtlKeStOE/L59M0AgUvx/fGKHrWoi93YRG8HQayBYHZ3NGHOjEqsYMDspNKlVgzKPovKvgyqqB0n4QvF2cS+xCzXwnY7M2dVNuNabeBOgoCForNU7Hh4swd3lsBHXHrrFRx72pktB44Ymk36c+mt4dXMSYA0rWHfsTxpHUZmnI0NsWGI3srHMCCL7g+cvsUraMrs+WIPQte70HTGv2IfyfoiGLzy4zhUjR1vuZy8l/Qu2ttkxFvSPUxA1PqY8DyNrQgfeEumB5IW/9GyYj/+eEqFJ3qF3ppVfqYgJRb6zSRAgMBAAECggEAbeu6witMUgV4OLBKBaB6kzFvmt/gwl/5TeBfrAXGY9Xlha4bMRzhjSF4XApOtXvP2ucdj3KZVIAlWMKT8Eiw0YcE+dw0CHPpxUH5j9mVyf93+vk1cbPlfs0NbgIAs33Ydf3He+gkTsDavefkEygdNU34DhCYk6FihRvB0DSx6yh0XKtC4HUMupodvnz/4dpMzCfYs9ySRZquIdGWVyPom8S1W54VCdK6nXOGQ3paXiTp8eORCn8CHquc56wU7Y7sesHXnkpe13+lPNzY9a/zcgudtS4Z7hefCRqFeKkCxkFMMNVYohnNgKklxA9kfNnlJGUCign8i/tXxOGt0L2ZQQKBgQD5HcBui2IX2ZrokC5tmViavx5jnLrQCyDLIMEeo3OsF/ULOpgVhUAvzPq0WaGeq08Wq1w/pMgVQpEwgeALUxeJt66qGvG9m5hYePlxWub8JLMtTXhcZjhLwd00Qtx7aFd02iUfiihb3P8PF/50AMWXkWt6EmdCrldIlZyD4xqX2QKBgQC8AHF7SdM8dNoiBoWfKJPOxRIfhf024wxascgGYX0lCzitWVZbBNpbxf+57CkEuCtTKVorwxE6Y5wmohElSOp+lxz394fDT5d9KCCtfSVoER6uHGMIbqnEAAabus7Y/5OsdL/Ks8HXJHMZJVbk/XJIlItfBe2p7Nw6MRD/GraHeQKBgEN5aoDGogghuZKaUuj+qwAnGf0TG4p0KSq7sXMyBIetaYLkGQNjNzJ7S8CDsoH+lopmWbMnV8ZiZF8GHoASvoJfzSBn8ehQd6AnDDFG1N+gtSNlI1+rlD34wYiBP6TxaxbMa1eynSHcpv0Ym6Qh/WMDUWAcEfn+rMeNNnqGjdJpAoGALVgyBtmMkHVis3g9PGEuHV4c++t2Yomqzik5JIjZBVlKh00X7gYioKYGAxL55cCB+qHrtMhs3FdwL0VBu2t126iY/Rn/7dTBphdKom2f2xTeAIKqRDtkyPh0n5UUFPS36o2SQNLQexK4jCUca0jSCr2BTB8C7sxJZeO1xMHtqokCgYBOZuMA6Hw8/8oE0VG94NHBLZNdsbI/abiTplIa44gYHStkhF8fel+bL5+QwVjWXzJHZqePmQCs3AzvlbXKMO6v8zljyya/APsrjzSLSKamgwiviX1eXiI+jIRPjl0CYO4fMx13sTTW2LG/KmNFqLfFbE0t+35ORrS/T/7XAG2bgQ==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyVDjLDsH22/nYhKT9YOZgWzlsIZcHHz7ne+zElFVmlw60yfIs62kHY6LfC2+Z9BKSp1ZhoWYeQFls/tiYvrVoKbI7v1SxXzDHd67GXrSNTmSG0VyX5cxmLQK0Za0hwNT1+8DjmQZ5kLpWS850Qbq9nUlcDzHDLahGi6q9Hc7+Q9SChyfRJ9K8OAZemtFmYVdOIUCKu887CeED48Py/koYfXOHHqmlBpysElQiySMZd89sn2+DGih6mzJISnYVA2ocGDiTFXSqIrKoVId7FuwYwKnh5QSbTfjUmpQQv9dM4fxSU8ccfijV92lisIXz5E5Nzw/7YWcWZhNxoA1GXsKdQIDAQAB+V9JilLqSa7N7sVqwpvv8zWChgXhX/A96hEg97Oxe6GKUmzaZRNh0cZZ88vpkn5tlgL4mH/dhSr3Ip00kvM4rHq9PwuT4k7z1DpZAf1eghK8Q5BgxL88d0X07m9X96Ijd0yMkXArzD7jg+noqfbztEKoH3kPMRJC2w4ByVdweWUT2PwrlATpZZtYLmtDvUKG/sOkNAIKEMg3Rut1oKWpjyYanzDgS7Cg3awr1KPTl9rHCazk15aNYowmYtVabKwbGVToCAGK+qQ1gT3ELhkGnf3+h53fukNqRH+wIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/alipay.trade.wap.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/alipay.trade.wap.pay-JAVA-UTF-8/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "/log";
	
	// 返回格式
	public static String FORMAT = "json";
	
    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
