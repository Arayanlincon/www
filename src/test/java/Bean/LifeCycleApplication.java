package Bean;

import org.springframework.beans.BeansException;
import org.springframework.beans.PropertyValues;
import org.springframework.beans.factory.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.InstantiationAwareBeanPostProcessor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import java.beans.PropertyDescriptor;

public class LifeCycleApplication {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("Bean/lifecycle.xml");
        System.out.println("[Application] before get bean");
        MyBean bean = (MyBean) context.getBean("myBean");
        System.out.println("[Application] after get bean");
        System.out.println(bean);
        ((ClassPathXmlApplicationContext) context).registerShutdownHook();
    }
}


