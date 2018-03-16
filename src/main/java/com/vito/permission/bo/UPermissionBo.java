package com.vito.permission.bo;

import java.io.Serializable;

import com.vito.common.model.UPermission;
import com.vito.common.utils.StringUtils;

/**
 * 
* @Description:  权限选择
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:45:20 
* @version V1.0
 */
public class UPermissionBo extends UPermission implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 是否勾选
	 */
	private String marker;
	/**
	 * role Id
	 */
	private String roleId;

	public boolean isCheck(){
		return StringUtils.equals(roleId,marker);
	}
	public String getMarker() {
		return marker;
	}

	public void setMarker(String marker) {
		this.marker = marker;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
}
