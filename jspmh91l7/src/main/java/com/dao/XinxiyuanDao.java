package com.dao;

import com.entity.XinxiyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XinxiyuanVO;
import com.entity.view.XinxiyuanView;


/**
 * 信息员
 * 
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface XinxiyuanDao extends BaseMapper<XinxiyuanEntity> {
	
	List<XinxiyuanVO> selectListVO(@Param("ew") Wrapper<XinxiyuanEntity> wrapper);
	
	XinxiyuanVO selectVO(@Param("ew") Wrapper<XinxiyuanEntity> wrapper);
	
	List<XinxiyuanView> selectListView(@Param("ew") Wrapper<XinxiyuanEntity> wrapper);

	List<XinxiyuanView> selectListView(Pagination page,@Param("ew") Wrapper<XinxiyuanEntity> wrapper);
	
	XinxiyuanView selectView(@Param("ew") Wrapper<XinxiyuanEntity> wrapper);
	

}
