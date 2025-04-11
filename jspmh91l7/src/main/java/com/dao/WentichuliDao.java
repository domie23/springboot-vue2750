package com.dao;

import com.entity.WentichuliEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WentichuliVO;
import com.entity.view.WentichuliView;


/**
 * 问题处理
 * 
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface WentichuliDao extends BaseMapper<WentichuliEntity> {
	
	List<WentichuliVO> selectListVO(@Param("ew") Wrapper<WentichuliEntity> wrapper);
	
	WentichuliVO selectVO(@Param("ew") Wrapper<WentichuliEntity> wrapper);
	
	List<WentichuliView> selectListView(@Param("ew") Wrapper<WentichuliEntity> wrapper);

	List<WentichuliView> selectListView(Pagination page,@Param("ew") Wrapper<WentichuliEntity> wrapper);
	
	WentichuliView selectView(@Param("ew") Wrapper<WentichuliEntity> wrapper);
	

}
