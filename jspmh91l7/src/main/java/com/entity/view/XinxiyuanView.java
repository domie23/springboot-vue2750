package com.entity.view;

import com.entity.XinxiyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 信息员
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("xinxiyuan")
public class XinxiyuanView  extends XinxiyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XinxiyuanView(){
	}
 
 	public XinxiyuanView(XinxiyuanEntity xinxiyuanEntity){
 	try {
			BeanUtils.copyProperties(this, xinxiyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
