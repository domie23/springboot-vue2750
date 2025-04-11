package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZhihuidiaoduDao;
import com.entity.ZhihuidiaoduEntity;
import com.service.ZhihuidiaoduService;
import com.entity.vo.ZhihuidiaoduVO;
import com.entity.view.ZhihuidiaoduView;

@Service("zhihuidiaoduService")
public class ZhihuidiaoduServiceImpl extends ServiceImpl<ZhihuidiaoduDao, ZhihuidiaoduEntity> implements ZhihuidiaoduService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhihuidiaoduEntity> page = this.selectPage(
                new Query<ZhihuidiaoduEntity>(params).getPage(),
                new EntityWrapper<ZhihuidiaoduEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhihuidiaoduEntity> wrapper) {
		  Page<ZhihuidiaoduView> page =new Query<ZhihuidiaoduView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhihuidiaoduVO> selectListVO(Wrapper<ZhihuidiaoduEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhihuidiaoduVO selectVO(Wrapper<ZhihuidiaoduEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhihuidiaoduView> selectListView(Wrapper<ZhihuidiaoduEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhihuidiaoduView selectView(Wrapper<ZhihuidiaoduEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
