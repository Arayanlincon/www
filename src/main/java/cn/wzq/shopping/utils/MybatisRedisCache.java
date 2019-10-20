package cn.wzq.shopping.utils;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import org.apache.ibatis.cache.Cache;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class MybatisRedisCache implements Cache {
    @Autowired
    private  RedisConfig redisConfig;

    private static Logger logger = LoggerFactory.getLogger(MybatisRedisCache.class);
    /** The ReadWriteLock. */
    private final ReadWriteLock readWriteLock = new ReentrantReadWriteLock();

    private String id;

    public MybatisRedisCache(final String id) {
        if (id == null) {
            throw new IllegalArgumentException("Cache instances require an ID");
        }
        logger.debug(">>>>>>>>>>>>>>>>>>>>>>>>MybatisRedisCache:id="+id);
        this.id = id;
    }

    public String getId() {
        return this.id;
    }

    public void putObject(Object key, Object value) {
        logger.debug(">>>>>>>>>>>>>>>>>>>>>>>>putObject:"+key+"="+value);
        redisConfig.redisPoolFactory().getResource().set(SerializeUtil.serialize(key.toString()), SerializeUtil.serialize(value));
    }

    public Object getObject(Object key) {
        Object value = SerializeUtil.unserialize( redisConfig.redisPoolFactory().getResource().get(SerializeUtil.serialize(key.toString())));
        logger.debug(">>>>>>>>>>>>>>>>>>>>>>>>getObject:"+key+"="+value);
        return value;
    }

    public Object removeObject(Object key) {
        return  redisConfig.redisPoolFactory().getResource().expire(SerializeUtil.serialize(key.toString()),0);
    }

    public void clear() {
        redisConfig.redisPoolFactory().getResource().flushDB();
    }

    public int getSize() {
        return Integer.valueOf(redisConfig.redisPoolFactory().getResource().dbSize().toString());
    }

    public ReadWriteLock getReadWriteLock() {
        return readWriteLock;
    }

}