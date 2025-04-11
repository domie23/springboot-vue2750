package com.dao;

import com.entity.ZhihuidiaoduEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhihuidiaoduVO;
import com.entity.view.ZhihuidiaoduView;


/**
 * 指挥调度
 * 
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface ZhihuidiaoduDao extends BaseMapper<ZhihuidiaoduEntity> {
	
	List<ZhihuidiaoduVO> selectListVO(@Param("ew") Wrapper<ZhihuidiaoduEntity> wrapper);
	
	ZhihuidiaoduVO selectVO(@Param("ew") Wrapper<ZhihuidiaoduEntity> wrapper);
	
	List<ZhihuidiaoduView> selectListView(@Param("ew") Wrapper<ZhihuidiaoduEntity> wrapper);

	List<ZhihuidiaoduView> selectListView(Pagination page,@Param("ew") Wrapper<ZhihuidiaoduEntity> wrapper);
	
	ZhihuidiaoduView selectView(@Param("ew") Wrapper<ZhihuidiaoduEntity> wrapper);
	

}
