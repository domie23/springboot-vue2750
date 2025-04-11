package com.entity.view;

import com.entity.ZhihuidiaoduEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 指挥调度
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("zhihuidiaodu")
public class ZhihuidiaoduView  extends ZhihuidiaoduEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhihuidiaoduView(){
	}
 
 	public ZhihuidiaoduView(ZhihuidiaoduEntity zhihuidiaoduEntity){
 	try {
			BeanUtils.copyProperties(this, zhihuidiaoduEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
