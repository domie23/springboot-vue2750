package com.dao;

import com.entity.QuezhenrenshuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QuezhenrenshuVO;
import com.entity.view.QuezhenrenshuView;


/**
 * 确诊人数
 * 
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface QuezhenrenshuDao extends BaseMapper<QuezhenrenshuEntity> {
	
	List<QuezhenrenshuVO> selectListVO(@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
	
	QuezhenrenshuVO selectVO(@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
	
	List<QuezhenrenshuView> selectListView(@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);

	List<QuezhenrenshuView> selectListView(Pagination page,@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
	
	QuezhenrenshuView selectView(@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<QuezhenrenshuEntity> wrapper);
}
