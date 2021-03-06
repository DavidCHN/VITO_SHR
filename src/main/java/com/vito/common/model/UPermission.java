package com.vito.common.model;

import java.io.Serializable;

import net.sf.json.JSONObject;

/**
 * 
* @Description:  权限实体
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:29:25 
* @version V1.0
 */
public class UPermission implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	/** 操作的url */
	private String url;
	/** 操作的名称 */
	private String name;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String toString() {
		return JSONObject.fromObject(this).toString();
	}
}