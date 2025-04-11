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


import com.dao.JiankangxinxicaijiDao;
import com.entity.JiankangxinxicaijiEntity;
import com.service.JiankangxinxicaijiService;
import com.entity.vo.JiankangxinxicaijiVO;
import com.entity.view.JiankangxinxicaijiView;

@Service("jiankangxinxicaijiService")
public class JiankangxinxicaijiServiceImpl extends ServiceImpl<JiankangxinxicaijiDao, JiankangxinxicaijiEntity> implements JiankangxinxicaijiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiankangxinxicaijiEntity> page = this.selectPage(
                new Query<JiankangxinxicaijiEntity>(params).getPage(),
                new EntityWrapper<JiankangxinxicaijiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiankangxinxicaijiEntity> wrapper) {
		  Page<JiankangxinxicaijiView> page =new Query<JiankangxinxicaijiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiankangxinxicaijiVO> selectListVO(Wrapper<JiankangxinxicaijiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiankangxinxicaijiVO selectVO(Wrapper<JiankangxinxicaijiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiankangxinxicaijiView> selectListView(Wrapper<JiankangxinxicaijiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiankangxinxicaijiView selectView(Wrapper<JiankangxinxicaijiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
