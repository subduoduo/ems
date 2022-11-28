package controller;

import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.UserService;

/**
 * Author：
 * Date：2022-11-25 14:19
 * Description：<描述>
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/test")
    public String test() {
        System.out.println("UserController.test");
        return "login";
    }


    //跳转登录界面
    @RequestMapping("/toLogin")
    public String toLogin() {
        System.out.println("UserController.toLogin");
        return "login";
    }

    //登录
    @RequestMapping("/login")
    public String login(String username, String password, Model model) {
        User user = userService.login(username, password);
        if (user != null) {
            model.addAttribute("username", username);
            return "manager";

            // return "redirect:/emp/findAll";
            // return "forward:/emp/findAll";
        } else {
            model.addAttribute("msg", "用户名或密码错误");
            return "login";
        }
    }

    //跳转注册界面
    @RequestMapping("/toRegister")
    public String toRegister() {
        System.out.println("UserController.toRegister");
        return "register";
    }

    //注册
    @RequestMapping("/register")
    public String register(User user) {
        System.out.println("UserController.register");
        user.setStatus(1);
        userService.register(user);
        System.out.println("注册成功");
        return "forward:toLogin";
    }
}
