/**
 *
 */
package cn.wzq.shopping.utils;

/**
 * @author Administrator
 */
public interface JedisClient {

    String set(String key, String value);

    Boolean exists(String key);

    String get(String key);

    Long expire(String key, int seconds);

    Long ttl(String key);

    Long incr(String key);

    Long hset(String key, String field, String value);

    Long hdel(String key, String[] field);


    String hget(String key, String field);

}
