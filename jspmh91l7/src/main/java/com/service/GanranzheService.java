package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GanranzheEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GanranzheVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GanranzheView;


/**
 * 感染者
 *
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface GanranzheService extends IService<GanranzheEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GanranzheVO> selectListVO(Wrapper<GanranzheEntity> wrapper);
   	
   	GanranzheVO selectVO(@Param("ew") Wrapper<GanranzheEntity> wrapper);
   	
   	List<GanranzheView> selectListView(Wrapper<GanranzheEntity> wrapper);
   	
   	GanranzheView selectView(@Param("ew") Wrapper<GanranzheEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GanranzheEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<GanranzheEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<GanranzheEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<GanranzheEntity> wrapper);
}

