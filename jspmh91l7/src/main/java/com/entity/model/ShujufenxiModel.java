package com.entity.model;

import com.entity.ShujufenxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 数据分析
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public class ShujufenxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
	
	private String jiezhongshijian;
		
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
	
	private String jianceshijian;
		
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
	
	private String dengjiriqi;
		
	/**
	 * 分析时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fenxishijian;
		
	/**
	 * 分析信息
	 */
	
	private String fenxixinxi;
		
	/**
	 * 分析内容
	 */
	
	private String fenxineirong;
				
	
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
	 
	public void setJiezhongshijian(String jiezhongshijian) {
		this.jiezhongshijian = jiezhongshijian;
	}
	
	/**
	 * 获取：接种时间
	 */
	public String getJiezhongshijian() {
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
	 
	public void setJianceshijian(String jianceshijian) {
		this.jianceshijian = jianceshijian;
	}
	
	/**
	 * 获取：检测时间
	 */
	public String getJianceshijian() {
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
	 
	public void setDengjiriqi(String dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	
	/**
	 * 获取：登记日期
	 */
	public String getDengjiriqi() {
		return dengjiriqi;
	}
				
	
	/**
	 * 设置：分析时间
	 */
	 
	public void setFenxishijian(Date fenxishijian) {
		this.fenxishijian = fenxishijian;
	}
	
	/**
	 * 获取：分析时间
	 */
	public Date getFenxishijian() {
		return fenxishijian;
	}
				
	
	/**
	 * 设置：分析信息
	 */
	 
	public void setFenxixinxi(String fenxixinxi) {
		this.fenxixinxi = fenxixinxi;
	}
	
	/**
	 * 获取：分析信息
	 */
	public String getFenxixinxi() {
		return fenxixinxi;
	}
				
	
	/**
	 * 设置：分析内容
	 */
	 
	public void setFenxineirong(String fenxineirong) {
		this.fenxineirong = fenxineirong;
	}
	
	/**
	 * 获取：分析内容
	 */
	public String getFenxineirong() {
		return fenxineirong;
	}
			
}
