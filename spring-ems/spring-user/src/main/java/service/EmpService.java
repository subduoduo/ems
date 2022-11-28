package service;

import entity.Emp;

import java.util.List;

/**
 * Author：
 * Date：2022-11-25 14:19
 * Description：<描述>
 */
public interface EmpService {
    public List<Emp> findAll();

    public void add(Emp emp);
}
