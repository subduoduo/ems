package com.itany.qdd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * Author：
 * Date：2022-11-28 18:44
 * Description：<描述>
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee implements Serializable {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
    private Double height;
    private String birthday;
    private Department department;
}
