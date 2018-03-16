package com.vito.core.shiro.cache.impl;

import org.apache.shiro.cache.Cache;

import com.vito.core.shiro.cache.JedisManager;
import com.vito.core.shiro.cache.JedisShiroCache;
import com.vito.core.shiro.cache.ShiroCacheManager;

/**
 * 
* @Description:JRedis管理  
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:40:06 
* @version V1.0
 */
public class JedisShiroCacheManager implements ShiroCacheManager {

    private JedisManager jedisManager;

    @Override
    public <K, V> Cache<K, V> getCache(String name) {
        return new JedisShiroCache<K, V>(name, getJedisManager());
    }

    @Override
    public void destroy() {
    	//如果和其他系统，或者应用在一起就不能关闭
    	//getJedisManager().getJedis().shutdown();
    }

    public JedisManager getJedisManager() {
        return jedisManager;
    }

    public void setJedisManager(JedisManager jedisManager) {
        this.jedisManager = jedisManager;
    }
}
