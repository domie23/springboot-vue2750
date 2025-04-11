package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WentichuliEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WentichuliVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WentichuliView;


/**
 * 问题处理
 *
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface WentichuliService extends IService<WentichuliEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WentichuliVO> selectListVO(Wrapper<WentichuliEntity> wrapper);
   	
   	WentichuliVO selectVO(@Param("ew") Wrapper<WentichuliEntity> wrapper);
   	
   	List<WentichuliView> selectListView(Wrapper<WentichuliEntity> wrapper);
   	
   	WentichuliView selectView(@Param("ew") Wrapper<WentichuliEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WentichuliEntity> wrapper);
   	

}

