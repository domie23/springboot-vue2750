package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiankangxinxicaijiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiankangxinxicaijiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiankangxinxicaijiView;


/**
 * 健康信息采集
 *
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface JiankangxinxicaijiService extends IService<JiankangxinxicaijiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiankangxinxicaijiVO> selectListVO(Wrapper<JiankangxinxicaijiEntity> wrapper);
   	
   	JiankangxinxicaijiVO selectVO(@Param("ew") Wrapper<JiankangxinxicaijiEntity> wrapper);
   	
   	List<JiankangxinxicaijiView> selectListView(Wrapper<JiankangxinxicaijiEntity> wrapper);
   	
   	JiankangxinxicaijiView selectView(@Param("ew") Wrapper<JiankangxinxicaijiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiankangxinxicaijiEntity> wrapper);
   	

}

