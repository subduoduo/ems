package service.impl;

import dao.EmpDao;
import entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import service.EmpService;

import java.util.List;

/**
 * Author：
 * Date：2022-11-26 9:16
 * Description：<描述>
 */
@Component
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpDao empDao;


    @Override
    public List<Emp> findAll() {
        return empDao.selectAll();
    }

    @Override
    public void add(Emp emp) {
        empDao.insert(emp);
    }
}
