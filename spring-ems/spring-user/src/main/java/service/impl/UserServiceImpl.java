package service.impl;

import dao.UserDao;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import service.UserService;

/**
 * Author：
 * Date：2022-11-25 14:23
 * Description：<描述>
 */
@Component
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User login( String username, String password) {
        System.out.println("UserServiceImpl.login");
        return userDao.selectByUsernameAndPassword(username,password);
    }

    @Override
    public void register(User user) {
        System.out.println("UserServiceImpl.register");
        userDao.insert(user);
    }
}
