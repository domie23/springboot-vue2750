package com.dao;

import com.entity.JiankangxinxicaijiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiankangxinxicaijiVO;
import com.entity.view.JiankangxinxicaijiView;


/**
 * 健康信息采集
 * 
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface JiankangxinxicaijiDao extends BaseMapper<JiankangxinxicaijiEntity> {
	
	List<JiankangxinxicaijiVO> selectListVO(@Param("ew") Wrapper<JiankangxinxicaijiEntity> wrapper);
	
	JiankangxinxicaijiVO selectVO(@Param("ew") Wrapper<JiankangxinxicaijiEntity> wrapper);
	
	List<JiankangxinxicaijiView> selectListView(@Param("ew") Wrapper<JiankangxinxicaijiEntity> wrapper);

	List<JiankangxinxicaijiView> selectListView(Pagination page,@Param("ew") Wrapper<JiankangxinxicaijiEntity> wrapper);
	
	JiankangxinxicaijiView selectView(@Param("ew") Wrapper<JiankangxinxicaijiEntity> wrapper);
	

}
