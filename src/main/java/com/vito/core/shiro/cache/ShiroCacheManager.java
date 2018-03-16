package com.vito.core.shiro.cache;

import org.apache.shiro.cache.Cache;

/**
 * 
* @Description:shiro cache manager 接口  
* @author 魏海龙  
* @email weihailong@bkvito.com 
* @date 2018年3月16日 上午11:39:24 
* @version V1.0
 */
public interface ShiroCacheManager {

    <K, V> Cache<K, V> getCache(String name);

    void destroy();

}
