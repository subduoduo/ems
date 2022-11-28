package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import entity.Dept;
import entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.DeptService;
import service.EmpService;
import vo.Empvo;

import java.util.List;

/**
 * Author：
 * Date：2022-11-26 9:17
 * Description：<描述>
 */
@Controller
@RequestMapping("/emp")
public class EmpController {

    @Autowired
    private EmpService empService;
    @Autowired
    private DeptService deptService;

    @RequestMapping("/findAll")
    public String fingAll(Model model,String pageno){
        System.out.println("EmpController.fingAll");
        System.out.println(pageno);
        int pageNum = 1;
        int pageSize = 10;
        if (pageno != null){
            pageNum = Integer.valueOf(pageno);
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Emp> emps = empService.findAll();
        PageInfo<Emp> pageInfo = new PageInfo<>(emps);

        model.addAttribute("emps",pageInfo.getList());
        model.addAttribute("pages",pageInfo.getPages());
        model.addAttribute("pageNum",pageInfo.getPageNum());
        System.out.println(pageInfo.getPageNum());
        return "list";
    }

    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        System.out.println("EmpController.toAdd");
        List<Dept> depts = deptService.findAll();
        model.addAttribute("depts",depts);
        return "add";
    }

    @RequestMapping("/add")
    public String add(Empvo empvo){
        System.out.println("EmpController.add");
        System.out.println(empvo);
        Emp emp = new Emp();
        emp.setSex(empvo.getSex());
        emp.setName(empvo.getName());
        emp.setHeight(empvo.getHeight());
        emp.setAge(empvo.getAge());
        emp.setBirthday(empvo.getBirthday());
        Dept dept = deptService.findById(empvo.getDept_id());
        emp.setDept(dept);
        empService.add(emp);
        System.out.println(emp);
        System.out.println("添加成功");
        return "redirect:/emp/findAll";
    }
}
