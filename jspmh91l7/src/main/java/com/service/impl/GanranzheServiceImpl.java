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


import com.dao.GanranzheDao;
import com.entity.GanranzheEntity;
import com.service.GanranzheService;
import com.entity.vo.GanranzheVO;
import com.entity.view.GanranzheView;

@Service("ganranzheService")
public class GanranzheServiceImpl extends ServiceImpl<GanranzheDao, GanranzheEntity> implements GanranzheService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GanranzheEntity> page = this.selectPage(
                new Query<GanranzheEntity>(params).getPage(),
                new EntityWrapper<GanranzheEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GanranzheEntity> wrapper) {
		  Page<GanranzheView> page =new Query<GanranzheView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GanranzheVO> selectListVO(Wrapper<GanranzheEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GanranzheVO selectVO(Wrapper<GanranzheEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GanranzheView> selectListView(Wrapper<GanranzheEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GanranzheView selectView(Wrapper<GanranzheEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<GanranzheEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<GanranzheEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<GanranzheEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
