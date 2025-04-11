package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 问题上报
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("wentishangbao")
public class WentishangbaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public WentishangbaoEntity() {
		
	}
	
	public WentishangbaoEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 上报编号
	 */
					
	private String shangbaobianhao;
	
	/**
	 * 上报人数
	 */
					
	private Integer shangbaorenshu;
	
	/**
	 * 症状描述
	 */
					
	private String zhengzhuangmiaoshu;
	
	/**
	 * 上报时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date shangbaoshijian;
	
	/**
	 * 详情
	 */
					
	private String xiangqing;
	
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
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：上报编号
	 */
	public void setShangbaobianhao(String shangbaobianhao) {
		this.shangbaobianhao = shangbaobianhao;
	}
	/**
	 * 获取：上报编号
	 */
	public String getShangbaobianhao() {
		return shangbaobianhao;
	}
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
	 * 设置：上报时间
	 */
	public void setShangbaoshijian(Date shangbaoshijian) {
		this.shangbaoshijian = shangbaoshijian;
	}
	/**
	 * 获取：上报时间
	 */
	public Date getShangbaoshijian() {
		return shangbaoshijian;
	}
	/**
	 * 设置：详情
	 */
	public void setXiangqing(String xiangqing) {
		this.xiangqing = xiangqing;
	}
	/**
	 * 获取：详情
	 */
	public String getXiangqing() {
		return xiangqing;
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
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}

}
