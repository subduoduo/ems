package com.itany.qdd.service.impl;

import com.itany.qdd.dao.UserDao;
import com.itany.qdd.entity.User;
import com.itany.qdd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author：
 * Date：2022-11-28 18:54
 * Description：<描述>
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User login(String username, String password) {
        return userDao.selectByUsernameAndPassword(username,password);
    }

    @Override
    public void register(User user) {
        userDao.insert(user);

    }
}
