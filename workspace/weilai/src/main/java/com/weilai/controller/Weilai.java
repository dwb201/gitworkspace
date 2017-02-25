package com.weilai.controller;

import com.weilai.commons.log.LogOutput;
import com.weilai.commons.log.dto.LogDto;
import com.weilai.pojo.User;
import com.weilai.service.UserService;
import java.io.PrintStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Weilai
{
  @Autowired
  private LogOutput logOutput;
  @Autowired
  private UserService userService;
  
  @RequestMapping({"/welcome"})
  public String hello(HttpServletRequest request, HttpServletResponse response)
  {
    String userID = request.getParameter("name");
    LogDto ld = new LogDto();
    ld.setClassName(getClass().getName());
    ld.setMessageId("B000001");
    ld.setMessageContext("UserName:" + userID);
    ld.setLogInfo("[Check UserName ]");
    this.logOutput.printLog(ld);
    User user = this.userService.getUserById(userID);
    if (user != null) {
      return "OK";
    }
    return "NG";
  }
  
  @RequestMapping({"/judgeUser"})
  public String judgeUser(HttpServletRequest request, HttpServletResponse response)
  {
    String userID = request.getParameter("userID");
    String userPassword = request.getParameter("password");
    LogDto ld = new LogDto();
    ld.setClassName(getClass().getName());
    ld.setMessageId("B000001");
    ld.setMessageContext("UserName:" + userID + ",UserPassword:" + userPassword);
    ld.setLogInfo("[login ]");
    this.logOutput.printLog(ld);
    User user = this.userService.getUserById(userID);
    if (user != null) {
      return "afterLogin";
    }
    return "login";
  }
  
  @RequestMapping({"/index"})
  public ModelAndView index(HttpServletRequest request, HttpServletResponse response)
  {
    return new ModelAndView("index");
  }
  
  @RequestMapping({"/afterLogin"})
  public String afterLogin()
  {
    System.out.println("Hello world");
    return "judgeUser";
  }
}
