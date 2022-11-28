package service;

import entity.Dept;

import java.util.List;

/**
 * Author：
 * Date：2022-11-26 11:38
 * Description：<描述>
 */
public interface DeptService {
    public List<Dept> findAll();

    Dept findById(Integer dept_id);
}
