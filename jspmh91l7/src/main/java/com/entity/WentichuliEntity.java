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
 * 问题处理
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("wentichuli")
public class WentichuliEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public WentichuliEntity() {
		
	}
	
	public WentichuliEntity(T t) {
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
	 * 处理编号
	 */
					
	private String chulibianhao;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	 * 设置：处理编号
	 */
	public void setChulibianhao(String chulibianhao) {
		this.chulibianhao = chulibianhao;
	}
	/**
	 * 获取：处理编号
	 */
	public String getChulibianhao() {
		return chulibianhao;
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
