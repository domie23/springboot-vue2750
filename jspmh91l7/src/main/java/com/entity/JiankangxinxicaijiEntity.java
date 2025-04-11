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
 * 健康信息采集
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("jiankangxinxicaiji")
public class JiankangxinxicaijiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiankangxinxicaijiEntity() {
		
	}
	
	public JiankangxinxicaijiEntity(T t) {
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
	 * 用户账号
	 */
					
	private String yonghuzhanghao;
	
	/**
	 * 用户姓名
	 */
					
	private String yonghuxingming;
	
	/**
	 * 性别
	 */
					
	private String xingbie;
	
	/**
	 * 体温
	 */
					
	private String tiwen;
	
	/**
	 * 所在地
	 */
					
	private String suozaidi;
	
	/**
	 * 健康码
	 */
					
	private String jiankangma;
	
	/**
	 * 接种疫苗
	 */
					
	private String jiezhongyimiao;
	
	/**
	 * 疫苗种类
	 */
					
	private String yimiaozhonglei;
	
	/**
	 * 接种时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jiezhongshijian;
	
	/**
	 * 接种针数
	 */
					
	private String jiezhongzhenshu;
	
	/**
	 * 核酸检测
	 */
					
	private String hesuanjiance;
	
	/**
	 * 检测时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jianceshijian;
	
	/**
	 * 检测结果
	 */
					
	private String jiancejieguo;
	
	/**
	 * 风险地区
	 */
					
	private String fengxiandiqu;
	
	/**
	 * 身体状态
	 */
					
	private String shentizhuangtai;
	
	/**
	 * 登记日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date dengjiriqi;
	
	/**
	 * 补充说明
	 */
					
	private String buchongshuoming;
	
	/**
	 * 信息员账号
	 */
					
	private String xinxiyuanzhanghao;
	
	/**
	 * 信息员姓名
	 */
					
	private String xinxiyuanxingming;
	
	
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
	 * 设置：用户账号
	 */
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
	/**
	 * 设置：用户姓名
	 */
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
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
	 * 设置：体温
	 */
	public void setTiwen(String tiwen) {
		this.tiwen = tiwen;
	}
	/**
	 * 获取：体温
	 */
	public String getTiwen() {
		return tiwen;
	}
	/**
	 * 设置：所在地
	 */
	public void setSuozaidi(String suozaidi) {
		this.suozaidi = suozaidi;
	}
	/**
	 * 获取：所在地
	 */
	public String getSuozaidi() {
		return suozaidi;
	}
	/**
	 * 设置：健康码
	 */
	public void setJiankangma(String jiankangma) {
		this.jiankangma = jiankangma;
	}
	/**
	 * 获取：健康码
	 */
	public String getJiankangma() {
		return jiankangma;
	}
	/**
	 * 设置：接种疫苗
	 */
	public void setJiezhongyimiao(String jiezhongyimiao) {
		this.jiezhongyimiao = jiezhongyimiao;
	}
	/**
	 * 获取：接种疫苗
	 */
	public String getJiezhongyimiao() {
		return jiezhongyimiao;
	}
	/**
	 * 设置：疫苗种类
	 */
	public void setYimiaozhonglei(String yimiaozhonglei) {
		this.yimiaozhonglei = yimiaozhonglei;
	}
	/**
	 * 获取：疫苗种类
	 */
	public String getYimiaozhonglei() {
		return yimiaozhonglei;
	}
	/**
	 * 设置：接种时间
	 */
	public void setJiezhongshijian(Date jiezhongshijian) {
		this.jiezhongshijian = jiezhongshijian;
	}
	/**
	 * 获取：接种时间
	 */
	public Date getJiezhongshijian() {
		return jiezhongshijian;
	}
	/**
	 * 设置：接种针数
	 */
	public void setJiezhongzhenshu(String jiezhongzhenshu) {
		this.jiezhongzhenshu = jiezhongzhenshu;
	}
	/**
	 * 获取：接种针数
	 */
	public String getJiezhongzhenshu() {
		return jiezhongzhenshu;
	}
	/**
	 * 设置：核酸检测
	 */
	public void setHesuanjiance(String hesuanjiance) {
		this.hesuanjiance = hesuanjiance;
	}
	/**
	 * 获取：核酸检测
	 */
	public String getHesuanjiance() {
		return hesuanjiance;
	}
	/**
	 * 设置：检测时间
	 */
	public void setJianceshijian(Date jianceshijian) {
		this.jianceshijian = jianceshijian;
	}
	/**
	 * 获取：检测时间
	 */
	public Date getJianceshijian() {
		return jianceshijian;
	}
	/**
	 * 设置：检测结果
	 */
	public void setJiancejieguo(String jiancejieguo) {
		this.jiancejieguo = jiancejieguo;
	}
	/**
	 * 获取：检测结果
	 */
	public String getJiancejieguo() {
		return jiancejieguo;
	}
	/**
	 * 设置：风险地区
	 */
	public void setFengxiandiqu(String fengxiandiqu) {
		this.fengxiandiqu = fengxiandiqu;
	}
	/**
	 * 获取：风险地区
	 */
	public String getFengxiandiqu() {
		return fengxiandiqu;
	}
	/**
	 * 设置：身体状态
	 */
	public void setShentizhuangtai(String shentizhuangtai) {
		this.shentizhuangtai = shentizhuangtai;
	}
	/**
	 * 获取：身体状态
	 */
	public String getShentizhuangtai() {
		return shentizhuangtai;
	}
	/**
	 * 设置：登记日期
	 */
	public void setDengjiriqi(Date dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	/**
	 * 获取：登记日期
	 */
	public Date getDengjiriqi() {
		return dengjiriqi;
	}
	/**
	 * 设置：补充说明
	 */
	public void setBuchongshuoming(String buchongshuoming) {
		this.buchongshuoming = buchongshuoming;
	}
	/**
	 * 获取：补充说明
	 */
	public String getBuchongshuoming() {
		return buchongshuoming;
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

}
