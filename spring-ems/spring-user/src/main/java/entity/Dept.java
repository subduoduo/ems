package entity;

import lombok.Data;

import java.io.Serializable;

/**
 * Author：
 * Date：2022-11-26 9:12
 * Description：<描述>
 */
@Data
public class Dept implements Serializable {
    private Integer id;
    private String name;
    private String loc;

}
