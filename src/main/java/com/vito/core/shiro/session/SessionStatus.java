package com.vito.core.shiro.session;

import java.io.Serializable;

/**
 * 
* @Description:  Session 状态 VO
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:42:39 
* @version V1.0
 */
public class SessionStatus implements Serializable {
	private static final long serialVersionUID = 1L;

	//是否踢出 true:有效，false：踢出。
	private Boolean onlineStatus = Boolean.TRUE;

	
	public Boolean isOnlineStatus(){
		return onlineStatus;
	}

	public Boolean getOnlineStatus() {
		return onlineStatus;
	}
	public void setOnlineStatus(Boolean onlineStatus) {
		this.onlineStatus = onlineStatus;
	}
	
	
}
