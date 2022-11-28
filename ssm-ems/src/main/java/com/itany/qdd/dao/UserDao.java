package com.itany.qdd.dao;

import com.itany.qdd.entity.User;
import org.apache.ibatis.annotations.Param;

/**
 * Author：
 * Date：2022-11-28 18:26
 * Description：<描述>
 */
public interface UserDao {
    public User selectByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    public void insert(User user);
}
