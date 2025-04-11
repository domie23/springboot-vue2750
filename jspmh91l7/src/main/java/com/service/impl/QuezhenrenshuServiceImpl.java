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


import com.dao.QuezhenrenshuDao;
import com.entity.QuezhenrenshuEntity;
import com.service.QuezhenrenshuService;
import com.entity.vo.QuezhenrenshuVO;
import com.entity.view.QuezhenrenshuView;

@Service("quezhenrenshuService")
public class QuezhenrenshuServiceImpl extends ServiceImpl<QuezhenrenshuDao, QuezhenrenshuEntity> implements QuezhenrenshuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QuezhenrenshuEntity> page = this.selectPage(
                new Query<QuezhenrenshuEntity>(params).getPage(),
                new EntityWrapper<QuezhenrenshuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QuezhenrenshuEntity> wrapper) {
		  Page<QuezhenrenshuView> page =new Query<QuezhenrenshuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QuezhenrenshuVO> selectListVO(Wrapper<QuezhenrenshuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QuezhenrenshuVO selectVO(Wrapper<QuezhenrenshuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QuezhenrenshuView> selectListView(Wrapper<QuezhenrenshuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QuezhenrenshuView selectView(Wrapper<QuezhenrenshuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<QuezhenrenshuEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<QuezhenrenshuEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<QuezhenrenshuEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
