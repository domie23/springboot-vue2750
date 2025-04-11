package com.dao;

import com.entity.GanranzheEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GanranzheVO;
import com.entity.view.GanranzheView;


/**
 * 感染者
 * 
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface GanranzheDao extends BaseMapper<GanranzheEntity> {
	
	List<GanranzheVO> selectListVO(@Param("ew") Wrapper<GanranzheEntity> wrapper);
	
	GanranzheVO selectVO(@Param("ew") Wrapper<GanranzheEntity> wrapper);
	
	List<GanranzheView> selectListView(@Param("ew") Wrapper<GanranzheEntity> wrapper);

	List<GanranzheView> selectListView(Pagination page,@Param("ew") Wrapper<GanranzheEntity> wrapper);
	
	GanranzheView selectView(@Param("ew") Wrapper<GanranzheEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<GanranzheEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<GanranzheEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<GanranzheEntity> wrapper);
}
