package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XinxiyuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XinxiyuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XinxiyuanView;


/**
 * 信息员
 *
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface XinxiyuanService extends IService<XinxiyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XinxiyuanVO> selectListVO(Wrapper<XinxiyuanEntity> wrapper);
   	
   	XinxiyuanVO selectVO(@Param("ew") Wrapper<XinxiyuanEntity> wrapper);
   	
   	List<XinxiyuanView> selectListView(Wrapper<XinxiyuanEntity> wrapper);
   	
   	XinxiyuanView selectView(@Param("ew") Wrapper<XinxiyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XinxiyuanEntity> wrapper);
   	

}

