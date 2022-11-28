package dao;

import entity.User;
import org.apache.ibatis.annotations.Param;

/**
 * Author：
 * Date：2022-11-25 14:19
 * Description：<描述>
 */
public interface UserDao {
    public User selectByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    public void insert(User user);
}
