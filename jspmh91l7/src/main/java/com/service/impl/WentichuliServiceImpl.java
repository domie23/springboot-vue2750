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


import com.dao.WentichuliDao;
import com.entity.WentichuliEntity;
import com.service.WentichuliService;
import com.entity.vo.WentichuliVO;
import com.entity.view.WentichuliView;

@Service("wentichuliService")
public class WentichuliServiceImpl extends ServiceImpl<WentichuliDao, WentichuliEntity> implements WentichuliService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WentichuliEntity> page = this.selectPage(
                new Query<WentichuliEntity>(params).getPage(),
                new EntityWrapper<WentichuliEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WentichuliEntity> wrapper) {
		  Page<WentichuliView> page =new Query<WentichuliView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WentichuliVO> selectListVO(Wrapper<WentichuliEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WentichuliVO selectVO(Wrapper<WentichuliEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WentichuliView> selectListView(Wrapper<WentichuliEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WentichuliView selectView(Wrapper<WentichuliEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
