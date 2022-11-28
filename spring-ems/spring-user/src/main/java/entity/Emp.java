package entity;

import lombok.Data;

import java.io.Serializable;

/**
 * Author：
 * Date：2022-11-26 9:10
 * Description：<描述>
 */
@Data
public class Emp implements Serializable {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
    private Double height;
    private String birthday;
    // @DateTimeFormat(pattern = "yyyy-MM-dd")
    // @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    // private Date birthday;
    private Dept dept;

}