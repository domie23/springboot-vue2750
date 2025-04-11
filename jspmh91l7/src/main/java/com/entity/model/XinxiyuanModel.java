package com.entity.model;

import com.entity.XinxiyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 信息员
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public class XinxiyuanModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 信息员姓名
	 */
	
	private String xinxiyuanxingming;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 信息员电话
	 */
	
	private String xinxiyuandianhua;
		
	/**
	 * 头像
	 */
	
	private String touxiang;
				
	
	/**
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
				
	
	/**
	 * 设置：信息员姓名
	 */
	 
	public void setXinxiyuanxingming(String xinxiyuanxingming) {
		this.xinxiyuanxingming = xinxiyuanxingming;
	}
	
	/**
	 * 获取：信息员姓名
	 */
	public String getXinxiyuanxingming() {
		return xinxiyuanxingming;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：信息员电话
	 */
	 
	public void setXinxiyuandianhua(String xinxiyuandianhua) {
		this.xinxiyuandianhua = xinxiyuandianhua;
	}
	
	/**
	 * 获取：信息员电话
	 */
	public String getXinxiyuandianhua() {
		return xinxiyuandianhua;
	}
				
	
	/**
	 * 设置：头像
	 */
	 
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
			
}
