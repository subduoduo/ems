package entity;

import lombok.Data;

/**
 * Author：
 * Date：2022-11-25 14:19
 * Description：<描述>
 */
@Data
public class User {
    private Integer id;
    private String username;
    private String password;
    private String name;
    private Integer age;
    private Integer status;
}
