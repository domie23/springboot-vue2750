package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QuezhenrenshuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QuezhenrenshuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QuezhenrenshuView;


/**
 * 确诊人数
 *
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface QuezhenrenshuService extends IService<QuezhenrenshuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QuezhenrenshuVO> selectListVO(Wrapper<QuezhenrenshuEntity> wrapper);
   	
   	QuezhenrenshuVO selectVO(@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
   	
   	List<QuezhenrenshuView> selectListView(Wrapper<QuezhenrenshuEntity> wrapper);
   	
   	QuezhenrenshuView selectView(@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QuezhenrenshuEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<QuezhenrenshuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<QuezhenrenshuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<QuezhenrenshuEntity> wrapper);
}

