package com.entity.vo;

import com.entity.WentichuliEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 问题处理
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public class WentichuliVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 上报人数
	 */
	
	private Integer shangbaorenshu;
		
	/**
	 * 症状描述
	 */
	
	private String zhengzhuangmiaoshu;
		
	/**
	 * 处理时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date chulishijian;
		
	/**
	 * 处理详情
	 */
	
	private String chulixiangqing;
		
	/**
	 * 信息员账号
	 */
	
	private String xinxiyuanzhanghao;
		
	/**
	 * 信息员姓名
	 */
	
	private String xinxiyuanxingming;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
				
	
	/**
	 * 设置：上报人数
	 */
	 
	public void setShangbaorenshu(Integer shangbaorenshu) {
		this.shangbaorenshu = shangbaorenshu;
	}
	
	/**
	 * 获取：上报人数
	 */
	public Integer getShangbaorenshu() {
		return shangbaorenshu;
	}
				
	
	/**
	 * 设置：症状描述
	 */
	 
	public void setZhengzhuangmiaoshu(String zhengzhuangmiaoshu) {
		this.zhengzhuangmiaoshu = zhengzhuangmiaoshu;
	}
	
	/**
	 * 获取：症状描述
	 */
	public String getZhengzhuangmiaoshu() {
		return zhengzhuangmiaoshu;
	}
				
	
	/**
	 * 设置：处理时间
	 */
	 
	public void setChulishijian(Date chulishijian) {
		this.chulishijian = chulishijian;
	}
	
	/**
	 * 获取：处理时间
	 */
	public Date getChulishijian() {
		return chulishijian;
	}
				
	
	/**
	 * 设置：处理详情
	 */
	 
	public void setChulixiangqing(String chulixiangqing) {
		this.chulixiangqing = chulixiangqing;
	}
	
	/**
	 * 获取：处理详情
	 */
	public String getChulixiangqing() {
		return chulixiangqing;
	}
				
	
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
			
}
