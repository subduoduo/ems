package com.itany.qdd.controller;

import com.itany.qdd.entity.User;
import com.itany.qdd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Author：
 * Date：2022-11-28 18:56
 * Description：<描述>
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(String username, String password, HttpServletRequest req,HttpSession session, Model model){
        User login = userService.login(username, password);

        if (login != null){
            session.setAttribute("username",username);
            return req.getContextPath()+"/main";
        }
        model.addAttribute("msg","用户名或密码错误");
        return "index";
    }



}
