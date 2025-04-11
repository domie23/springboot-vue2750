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


import com.dao.WentishangbaoDao;
import com.entity.WentishangbaoEntity;
import com.service.WentishangbaoService;
import com.entity.vo.WentishangbaoVO;
import com.entity.view.WentishangbaoView;

@Service("wentishangbaoService")
public class WentishangbaoServiceImpl extends ServiceImpl<WentishangbaoDao, WentishangbaoEntity> implements WentishangbaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WentishangbaoEntity> page = this.selectPage(
                new Query<WentishangbaoEntity>(params).getPage(),
                new EntityWrapper<WentishangbaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WentishangbaoEntity> wrapper) {
		  Page<WentishangbaoView> page =new Query<WentishangbaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WentishangbaoVO> selectListVO(Wrapper<WentishangbaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WentishangbaoVO selectVO(Wrapper<WentishangbaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WentishangbaoView> selectListView(Wrapper<WentishangbaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WentishangbaoView selectView(Wrapper<WentishangbaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
