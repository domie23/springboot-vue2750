package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WentishangbaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WentishangbaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WentishangbaoView;


/**
 * 问题上报
 *
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface WentishangbaoService extends IService<WentishangbaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WentishangbaoVO> selectListVO(Wrapper<WentishangbaoEntity> wrapper);
   	
   	WentishangbaoVO selectVO(@Param("ew") Wrapper<WentishangbaoEntity> wrapper);
   	
   	List<WentishangbaoView> selectListView(Wrapper<WentishangbaoEntity> wrapper);
   	
   	WentishangbaoView selectView(@Param("ew") Wrapper<WentishangbaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WentishangbaoEntity> wrapper);
   	

}

