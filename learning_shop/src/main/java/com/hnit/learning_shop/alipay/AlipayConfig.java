package com.hnit.learning_shop.alipay;

import java.io.FileWriter;
import java.io.IOException;


public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092900622864";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCRNLsJQauC75gT3FOaeE7D9ouLRg7eLdmn6aStUnTXhU+uGJrj2nMU0ECa+imQbs6k0+QDVmx8Y0bZLDsyt0g5zWEuZNid5TCJPpdK15Bmy/XIkql89yimzShUsnD9qA099zC0QKObqXudk+h54ACGi0zyAeu8abFARvfQcIvEHdm5lC3ZLfH6jdvlaNn14qTfHPFH+1YzJqYzTeBfqQvGBx6NcKigcdmE9L4boE4w6HIH+PKozoseNEb1PCVEeIfc/bw/CxT2a9tTiJumCRzfEXqfQOMCQt9M/cMSml20MCLe8HDPX1psm/80mREBHl6/8X4VixtWcvZCpLgD3D0nAgMBAAECggEAPoDGKbvcyeW8PoBOdGVo8i1D79VePQDbec22luyxYrv9imEI+x9i/giOZqdcENHBnW2f7lfbJsfNDVpeuPvv2QGw3TmHjJ/E/q60jQCxJa6Rw55t2l7BXttciuisfmNCH/QxQMW6Jx0TGsc6AIwNbdy0aE+vW1DbfWGO9mgboXTWwYS58AeU1gJ2MJ4rUUd23y+s0ACelgrKeol7kzcPnw3J14RnzXSkyAFIqUAAhWyhH4ov80sBlyxii+6M5IYu9wsCcoAFRmABuSZOXp5p5h14MV5MH9LJ0tZXuT6Cnij0pEZdAnmHcIRWDJyxCI4RdpQUW77yyMhmgxKEPgwAkQKBgQDqeSX8OZVCPU4izgDFWT6s2UvDFerw3hNWC0JiYuZVtvcfn7nWViPQR8CAnbub7n25pmLGQVWTNXoln9fX3qGU80IpIrgPoHQZ8fsBibTfoGTy7yQSuuEvqsf+URyBlPm+jTNTBwxJDPu6ZB12Z/J01PIReBPZG4XsFwhQHACqawKBgQCeiYYHeSRNrkODtCSnxhZKsC6v6eNlzFeRqhZKRdfdsk4maQUt7cYvKnR3LzocQh204HVhu38YTfKT9qi8qcguA95MqIs2yjRNMe2nbI+xToGRMNM0FRSuOKssVtxUaU2PxsIYh5kgRiC+oDdh/yA+TsUsedzWUK0yI/qSesIfNQKBgQDTzvCzckkU91BYPIORwtbNSdYYuvnq8JHDDpS/T9wG3itLE/zKVDIx+j85cEODzuMgC9/6fBaTzqEyz7wps2F/rme7xTNEWovGzEMU1pLf2IKYudJ6YPr/FmVnpVn87NjWe7M7c4hzjRjw/XNn/OqXA65QfYpge251ITFPPJyVVQKBgEU04ZZnkqp6dSyMOignN9n42Rif8E2jC2MiLcLUhGxaBvWLiOBI2OgED31r12E4l4E7LuKwF8ZDWK6w0W4ya5lyxNsQBF2xnW1Ja2ZX5M5Q6Ay6lKg6v6FiSY78iAgtQ9eMu3Q71WOaWXb9t8+GsMuiVT6aIAZKh6DIxfylrBI1AoGAQJ52Tvpf2sxktmHRzCPalNk5ZUR5W5vVsKbYpBuo9O//TxHQvSM4vSv/s/uWN/3we0Equ305jAssPnnD66Eh7EZCDgR8rhrMFEXayJEK9t7crjEVAeP1GaalcAJQgbffPFoyKA94FT6+6yyvVJsUL0HTMH+0oIfDKNiP8MxUM9k=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgsc/iWSg9oPmt7Gbt2B4vmBMUywSzBofMUibs515pCMx+orERZhMtdzQR4F0LRaq14ygdsKL92UJCJFKdaGD4UjdZbC9fGWZbRtyf+yZl+5GNcFTxBaclLJWpnRjzv9xbehJ5gPv2u070gyUPcVdPRfUfz7cL64MeJk3g396Fzx0hVZiEckBWl061n0bGauuI+lDqIJKcRxJ7ApiLGisCJyf5sLN0wcSBGnERg1luCeHPZelO3sx9bvHmzPhI2N2B/7MZXUWiT5DyGkF2TERePachgmhieZcCJu2rVEJXUB0yz+Sm124STAhgx7U7SoiDg/0o5fTmOcuN4bVEXh+EwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://127.0.0.1/notify";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://127.0.0.1/restaurant_web/success.html";
	
	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = " https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

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

