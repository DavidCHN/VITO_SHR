package com.vito.common.model;

import java.io.Serializable;

import net.sf.json.JSONObject;
/**
 * 
* @Description:角色{@link URole}和 权限{@link UPermission}中间表  
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:30:14 
* @version V1.0
 */

public class URolePermission  implements Serializable{
	private static final long serialVersionUID = 1L;
	/**{@link URole.id}*/
    private Long rid;
    /**{@link UPermission.id}*/
    private Long pid;

    public URolePermission() {
	}
    public URolePermission(Long rid,Long pid) {
    	this.rid = rid;
    	this.pid = pid;
    }
    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }
    public String toString(){
    	return JSONObject.fromObject(this).toString();
    }
}