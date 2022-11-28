package service.impl;

import dao.DeptDao;
import entity.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.DeptService;

import java.util.List;

/**
 * Author：
 * Date：2022-11-26 11:42
 * Description：<描述>
 */
@Service
public class DeptServiceImpl implements DeptService {

    @Autowired
    private DeptDao deptDao;

    @Override
    public List<Dept> findAll() {
        return deptDao.selectAll();
    }

    @Override
    public Dept findById(Integer dept_id) {
        return deptDao.selectById(dept_id);
    }
}
