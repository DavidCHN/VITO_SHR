package com.vito.common.timer;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.vito.permission.service.RoleService;

/**
 * 
* @Description:定时任务恢复数据  
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:31:11 
* @version V1.0
 */
@Component
public class ToTimer{
	
	@Resource
	RoleService roleService;
	@Scheduled(cron = "0/20 * * * * ? ")
	public void run() {
		/**
		 * 调用存储过程，重新创建表，插入初始化数据。
		 */
		roleService.initData();
		System.out.println(new Date().getTime());
	}

	
	
	
	
	
	
}
