package com.itany.qdd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * Author：
 * Date：2022-11-28 18:41
 * Description：<描述>
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements Serializable {
    private String username;
    private String password;
    private String name;
    private Integer age;
    private Integer status;
    private String regist_date;
    private String avatar;
}
