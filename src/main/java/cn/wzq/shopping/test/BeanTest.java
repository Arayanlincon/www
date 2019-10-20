package cn.wzq.shopping.test;

import cn.wzq.shopping.utils.RedisUtil;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BeanTest {
    public static void main(String args[]) {
        ApplicationContext context;
        context = new ClassPathXmlApplicationContext("classpath:spring/*.xml");
        RedisUtil user= (RedisUtil) context.getBean("redisUtil");

        String[] str=context.getBeanDefinitionNames();
        for (String string : str) {
            System.out.println("..."+string);
        }
  //      user.set("s","b",0);

       System.out.println("----"+user);
      System.out.println(user.get("s",0));
    }


}
