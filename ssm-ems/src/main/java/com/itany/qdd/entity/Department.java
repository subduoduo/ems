package com.itany.qdd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * Author：
 * Date：2022-11-28 18:43
 * Description：<描述>
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Department implements Serializable {
    private Integer id;
    private String name;
    private String loc;
}
