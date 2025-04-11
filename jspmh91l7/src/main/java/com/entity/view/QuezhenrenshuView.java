package com.entity.view;

import com.entity.QuezhenrenshuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 确诊人数
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("quezhenrenshu")
public class QuezhenrenshuView  extends QuezhenrenshuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QuezhenrenshuView(){
	}
 
 	public QuezhenrenshuView(QuezhenrenshuEntity quezhenrenshuEntity){
 	try {
			BeanUtils.copyProperties(this, quezhenrenshuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
