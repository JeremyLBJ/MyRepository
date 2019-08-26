package com.hnit.learning_shop.utils;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.*;
import org.apache.logging.log4j.util.PropertiesUtil;
 
import java.io.*;
import java.util.Properties;
 
public class FtpUtils {
 
    /**
     * 利用JSch包实现SFTP上传文件
     * @param bytes  文件字节流
     * @param fileName  文件名
     * @throws Exception
     */
    public static void sshSftp(byte[] bytes,String fileName) throws Exception{
 
 
        Properties properties = new Properties();
        	
        InputStream in = PropertiesUtil.class.getClassLoader().getResourceAsStream("ftp.properties");
        BufferedReader bf = new BufferedReader(new InputStreamReader(in));
        properties.load(bf);
 
 
        String ip = properties.getProperty("ip");
        String user = properties.getProperty("user");
        String password = properties.getProperty("password");
        int port= Integer.parseInt(properties.getProperty("port"));
 
        Session session = null;
        Channel channel = null;
 
 
        JSch jsch = new JSch();
 
 
        if(port <=0){
            //连接服务器，采用默认端口
            session = jsch.getSession(user, ip);
        }else{
            //采用指定的端口连接服务器
            session = jsch.getSession(user, ip ,port);
        }
 
        //如果服务器连接不上，则抛出异常
        if (session == null) {
            throw new Exception("session is null");
        }
 
        //设置登陆主机的密码
        session.setPassword(password);//设置密码
        //设置第一次登陆的时候提示，可选值：(ask | yes | no)
        session.setConfig("StrictHostKeyChecking", "no");
        //设置登陆超时时间
        session.connect(30000);
 
 
        OutputStream outstream = null;
        try {
            //创建sftp通信通道
            channel = (Channel) session.openChannel("sftp");
            channel.connect(1000);
            ChannelSftp sftp = (ChannelSftp) channel;
 
 
            //进入服务器指定的文件夹
            sftp.cd(properties.getProperty("filePath"));
 
            //列出服务器指定的文件列表
//            Vector v = sftp.ls("*");
//            for(int i=0;i<v.size();i++){
//                System.out.println(v.get(i));
//            }
 
            //以下代码实现从本地上传一个文件到服务器，如果要实现下载，对换以下流就可以了
            outstream = sftp.put(fileName);
            outstream.write(bytes);
    
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //关流操作
            if(outstream != null){
                outstream.flush();       
                outstream.close();
            }
            if(session != null){
                session.disconnect();
            }
            if(channel != null){
                channel.disconnect();
            }
        }
    }
 
}

