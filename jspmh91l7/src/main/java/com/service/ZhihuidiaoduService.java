package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhihuidiaoduEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhihuidiaoduVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhihuidiaoduView;


/**
 * 指挥调度
 *
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
public interface ZhihuidiaoduService extends IService<ZhihuidiaoduEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhihuidiaoduVO> selectListVO(Wrapper<ZhihuidiaoduEntity> wrapper);
   	
   	ZhihuidiaoduVO selectVO(@Param("ew") Wrapper<ZhihuidiaoduEntity> wrapper);
   	
   	List<ZhihuidiaoduView> selectListView(Wrapper<ZhihuidiaoduEntity> wrapper);
   	
   	ZhihuidiaoduView selectView(@Param("ew") Wrapper<ZhihuidiaoduEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhihuidiaoduEntity> wrapper);
   	

}

