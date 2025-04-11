package com.dao;

import com.entity.WentishangbaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WentishangbaoVO;
import com.entity.view.WentishangbaoView;


/**
 * 问题上报
 * 
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface WentishangbaoDao extends BaseMapper<WentishangbaoEntity> {
	
	List<WentishangbaoVO> selectListVO(@Param("ew") Wrapper<WentishangbaoEntity> wrapper);
	
	WentishangbaoVO selectVO(@Param("ew") Wrapper<WentishangbaoEntity> wrapper);
	
	List<WentishangbaoView> selectListView(@Param("ew") Wrapper<WentishangbaoEntity> wrapper);

	List<WentishangbaoView> selectListView(Pagination page,@Param("ew") Wrapper<WentishangbaoEntity> wrapper);
	
	WentishangbaoView selectView(@Param("ew") Wrapper<WentishangbaoEntity> wrapper);
	

}
