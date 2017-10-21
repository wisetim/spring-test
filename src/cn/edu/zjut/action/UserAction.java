package cn.edu.zjut.action;

import cn.edu.zjut.po.Customer;
import cn.edu.zjut.service.IUserService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by Tim on 2017/10/21
 */
public class UserAction extends ActionSupport {
    private Customer loginUser;
    private IUserService userService = null;

    public Customer getLoginUser() {
        return loginUser;
    }

    public void setLoginUser(Customer loginUser) {
        this.loginUser = loginUser;
    }

    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }

    public String register() {
        userService.register(loginUser);
        return SUCCESS;
    }
}
