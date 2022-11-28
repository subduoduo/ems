package com.itany.qdd.service;


import com.itany.qdd.entity.User;

/**
 * Author：
 * Date：2022-11-25 14:21
 * Description：<描述>
 */
public interface UserService {

    public User login(String username, String password);

    public void register(User user);


}
