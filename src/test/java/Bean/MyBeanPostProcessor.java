package Bean;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;

class MyBeanPostProcessor implements BeanPostProcessor {
    public MyBeanPostProcessor() {
        super();
        System.out.println("[MyBeanPostProcessor] constructor.");
    }
    @Override
    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
        System.out.println("[MyBeanPostProcessor] postProcessBeforeInitialization: " + bean.getClass() + ": " + beanName);
        return bean;
    }
    @Override
    public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
        System.out.println("[MyBeanPostProcessor] postProcessAfterInitialization: " + bean.getClass() + ": " + beanName);
        return bean;
    }
}
