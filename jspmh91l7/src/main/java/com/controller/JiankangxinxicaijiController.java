package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.JiankangxinxicaijiEntity;
import com.entity.view.JiankangxinxicaijiView;

import com.service.JiankangxinxicaijiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 健康信息采集
 * 后端接口
 * @author 
 * @email 
 * @date 2022-04-08 23:57:11
 */
@RestController
@RequestMapping("/jiankangxinxicaiji")
public class JiankangxinxicaijiController {
    @Autowired
    private JiankangxinxicaijiService jiankangxinxicaijiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JiankangxinxicaijiEntity jiankangxinxicaiji, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			jiankangxinxicaiji.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xinxiyuan")) {
			jiankangxinxicaiji.setXinxiyuanzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<JiankangxinxicaijiEntity> ew = new EntityWrapper<JiankangxinxicaijiEntity>();
    	PageUtils page = jiankangxinxicaijiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiankangxinxicaiji), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JiankangxinxicaijiEntity jiankangxinxicaiji, 
		HttpServletRequest request){
        EntityWrapper<JiankangxinxicaijiEntity> ew = new EntityWrapper<JiankangxinxicaijiEntity>();
    	PageUtils page = jiankangxinxicaijiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiankangxinxicaiji), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JiankangxinxicaijiEntity jiankangxinxicaiji){
       	EntityWrapper<JiankangxinxicaijiEntity> ew = new EntityWrapper<JiankangxinxicaijiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jiankangxinxicaiji, "jiankangxinxicaiji")); 
        return R.ok().put("data", jiankangxinxicaijiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JiankangxinxicaijiEntity jiankangxinxicaiji){
        EntityWrapper< JiankangxinxicaijiEntity> ew = new EntityWrapper< JiankangxinxicaijiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jiankangxinxicaiji, "jiankangxinxicaiji")); 
		JiankangxinxicaijiView jiankangxinxicaijiView =  jiankangxinxicaijiService.selectView(ew);
		return R.ok("查询健康信息采集成功").put("data", jiankangxinxicaijiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JiankangxinxicaijiEntity jiankangxinxicaiji = jiankangxinxicaijiService.selectById(id);
        return R.ok().put("data", jiankangxinxicaiji);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JiankangxinxicaijiEntity jiankangxinxicaiji = jiankangxinxicaijiService.selectById(id);
        return R.ok().put("data", jiankangxinxicaiji);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JiankangxinxicaijiEntity jiankangxinxicaiji, HttpServletRequest request){
    	jiankangxinxicaiji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiankangxinxicaiji);

        jiankangxinxicaijiService.insert(jiankangxinxicaiji);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JiankangxinxicaijiEntity jiankangxinxicaiji, HttpServletRequest request){
    	jiankangxinxicaiji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiankangxinxicaiji);

        jiankangxinxicaijiService.insert(jiankangxinxicaiji);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody JiankangxinxicaijiEntity jiankangxinxicaiji, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jiankangxinxicaiji);
        jiankangxinxicaijiService.updateById(jiankangxinxicaiji);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jiankangxinxicaijiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<JiankangxinxicaijiEntity> wrapper = new EntityWrapper<JiankangxinxicaijiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuzhanghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xinxiyuan")) {
			wrapper.eq("xinxiyuanzhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = jiankangxinxicaijiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	





}
