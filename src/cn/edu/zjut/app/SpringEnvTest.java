package cn.edu.zjut.app;

import cn.edu.zjut.dao.ICustomerDAO;
import cn.edu.zjut.po.Customer;
import cn.edu.zjut.service.IUserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Tim on 2017/10/20
 */
public class SpringEnvTest {
    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        IUserService userService = (IUserService) ctx.getBean("userService");
        Customer customer = new Customer();
        customer.setCustomerId(1);
        customer.setAccount("SPRING");
        customer.setPassword("SPRING");
        userService.register(customer);
    }
}
