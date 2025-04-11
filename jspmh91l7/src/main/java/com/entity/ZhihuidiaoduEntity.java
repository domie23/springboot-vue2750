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
 * 指挥调度
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("zhihuidiaodu")
public class ZhihuidiaoduEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZhihuidiaoduEntity() {
		
	}
	
	public ZhihuidiaoduEntity(T t) {
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
	 * 调度编号
	 */
					
	private String diaodubianhao;
	
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
	 * 设置：调度编号
	 */
	public void setDiaodubianhao(String diaodubianhao) {
		this.diaodubianhao = diaodubianhao;
	}
	/**
	 * 获取：调度编号
	 */
	public String getDiaodubianhao() {
		return diaodubianhao;
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
