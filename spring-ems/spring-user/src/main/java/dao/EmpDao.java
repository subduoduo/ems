package dao;


import entity.Emp;

import java.util.List;

/**
 * Author：
 * Date：2022-11-25 14:19
 * Description：<描述>
 */
public interface EmpDao {
    public List<Emp> selectAll();

    public void insert(Emp emp);
}
