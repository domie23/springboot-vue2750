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


import com.dao.XinxiyuanDao;
import com.entity.XinxiyuanEntity;
import com.service.XinxiyuanService;
import com.entity.vo.XinxiyuanVO;
import com.entity.view.XinxiyuanView;

@Service("xinxiyuanService")
public class XinxiyuanServiceImpl extends ServiceImpl<XinxiyuanDao, XinxiyuanEntity> implements XinxiyuanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XinxiyuanEntity> page = this.selectPage(
                new Query<XinxiyuanEntity>(params).getPage(),
                new EntityWrapper<XinxiyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XinxiyuanEntity> wrapper) {
		  Page<XinxiyuanView> page =new Query<XinxiyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XinxiyuanVO> selectListVO(Wrapper<XinxiyuanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XinxiyuanVO selectVO(Wrapper<XinxiyuanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XinxiyuanView> selectListView(Wrapper<XinxiyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XinxiyuanView selectView(Wrapper<XinxiyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
