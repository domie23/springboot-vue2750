package com.entity.view;

import com.entity.WentichuliEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 问题处理
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("wentichuli")
public class WentichuliView  extends WentichuliEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WentichuliView(){
	}
 
 	public WentichuliView(WentichuliEntity wentichuliEntity){
 	try {
			BeanUtils.copyProperties(this, wentichuliEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
