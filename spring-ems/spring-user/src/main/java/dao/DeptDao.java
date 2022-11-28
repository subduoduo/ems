package dao;

import entity.Dept;

import java.util.List;

/**
 * Author：
 * Date：2022-11-26 11:38
 * Description：<描述>
 */
public interface DeptDao {
    public List<Dept> selectAll();

    Dept selectById(Integer dept_id);
}
