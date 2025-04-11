package com.entity.view;

import com.entity.JiankangxinxicaijiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 健康信息采集
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@TableName("jiankangxinxicaiji")
public class JiankangxinxicaijiView  extends JiankangxinxicaijiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiankangxinxicaijiView(){
	}
 
 	public JiankangxinxicaijiView(JiankangxinxicaijiEntity jiankangxinxicaijiEntity){
 	try {
			BeanUtils.copyProperties(this, jiankangxinxicaijiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
