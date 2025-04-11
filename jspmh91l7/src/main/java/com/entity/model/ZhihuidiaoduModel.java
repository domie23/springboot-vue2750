package com.entity.model;

import com.entity.ZhihuidiaoduEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 指挥调度
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public class ZhihuidiaoduModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 信息员账号
	 */
	
	private String xinxiyuanzhanghao;
		
	/**
	 * 信息员姓名
	 */
	
	private String xinxiyuanxingming;
		
	/**
	 * 信息员电话
	 */
	
	private String xinxiyuandianhua;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
		
	/**
	 * 任务标题
	 */
	
	private String renwubiaoti;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 任务内容
	 */
	
	private String renwuneirong;
				
	
	/**
	 * 设置：信息员账号
	 */
	 
	public void setXinxiyuanzhanghao(String xinxiyuanzhanghao) {
		this.xinxiyuanzhanghao = xinxiyuanzhanghao;
	}
	
	/**
	 * 获取：信息员账号
	 */
	public String getXinxiyuanzhanghao() {
		return xinxiyuanzhanghao;
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
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
				
	
	/**
	 * 设置：任务标题
	 */
	 
	public void setRenwubiaoti(String renwubiaoti) {
		this.renwubiaoti = renwubiaoti;
	}
	
	/**
	 * 获取：任务标题
	 */
	public String getRenwubiaoti() {
		return renwubiaoti;
	}
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：任务内容
	 */
	 
	public void setRenwuneirong(String renwuneirong) {
		this.renwuneirong = renwuneirong;
	}
	
	/**
	 * 获取：任务内容
	 */
	public String getRenwuneirong() {
		return renwuneirong;
	}
			
}
