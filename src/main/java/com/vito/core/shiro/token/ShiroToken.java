package com.vito.core.shiro.token;

import org.apache.shiro.authc.UsernamePasswordToken;
/**
 * 
* @Description:   Shiro token
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:43:21 
* @version V1.0
 */
public class ShiroToken extends UsernamePasswordToken  implements java.io.Serializable{
	
	private static final long serialVersionUID = -6451794657814516274L;

	public ShiroToken(String username, String pswd) {
		super(username,pswd);
		this.pswd = pswd ;
	}
	
	
	/** 登录密码[字符串类型] 因为父类是char[] ] **/
	private String pswd ;

	public String getPswd() {
		return pswd;
	}


	public void setPswd(String pswd) {
		this.pswd = pswd;
	}
	
	
	
	
	
}
