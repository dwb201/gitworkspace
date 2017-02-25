package com.weilai.controller;

import com.weilai.commons.constant.ConstantInfo;
import com.weilai.commons.log.LogOutput;
import com.weilai.commons.log.dto.LogDto;
import com.weilai.commons.secrtpass.SHAUtil;
import com.weilai.commons.uuid.UUIDGenerator;
import com.weilai.commons.dateTools.DateFormater;
import com.weilai.form.LoginForm;
import com.weilai.form.RegistForm;
import com.weilai.pojo.User;
import com.weilai.service.AccountService;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes
public class Account
{
  @Autowired
  private LogOutput logOutput;
  @Autowired
  private AccountService accountService;
  
  @RequestMapping({"/registUser"})
  public String registUser(RegistForm registForm,HttpServletRequest request) throws Exception
  {
    LogDto ld = new LogDto();
    ld.setClassName(getClass().getName());
    ld.setMessageId("R000001");
    ld.setMessageContext("UserName:" + registForm.getUserName() + ",UserPassword:" + registForm.getPass());
    ld.setLogInfo("[regist]");
    this.logOutput.printLog(ld);
    User user = new User();
    user.setsId(UUIDGenerator.generate(registForm.getEmail()));
    user.setsUserName(registForm.getUserName());
    user.setsUserPassword(SHAUtil.shaEncode(registForm.getPass()));
    user.setsUserMail(registForm.getEmail());
    user.setsUserWechatId(registForm.getWeChatId());
    user.setsUserPhonenumber(registForm.getPhoneNumber());
    user.setsUserQqId(registForm.getQqId());
    user.setRegister(ConstantInfo.SELF_REGISTER);
    user.setRegisttime(DateFormater.getStringDate());
    user.setUpdater(ConstantInfo.SELF_REGISTER);
    user.setUpdatetime(DateFormater.getStringDate());
    user.setsUserLevel(ConstantInfo.USER_LEVEL_TEMP);
 
    
    accountService.insertUser(user);
    HttpSession session = request.getSession(true);
    session.setAttribute("USER", user);
    session.setAttribute("loginFlag", true);
    return "index";
  }
  
  @RequestMapping({"/checkUser"})
  public void checkUser(RegistForm registForm, HttpServletResponse response) throws IOException
  {
    LogDto ld = new LogDto();
    ld.setClassName(getClass().getName());
    ld.setMessageId("R000001");
    ld.setMessageContext("Email:" + registForm.getEmail());
    ld.setLogInfo("[checkMail]");
    this.logOutput.printLog(ld);
    User user = this.accountService.getUserByEmailId(registForm.getEmail());
   
    if (user != null) {
    	response.getWriter().write("{\"result\":\""+ 1 +"\"}");
    }else{
        response.getWriter().write("{\"result\":\""+ 0 +"\"}");
    }
  }
  
  @RequestMapping({"/loginUser"})
  public void loginUser(LoginForm loginForm, HttpServletResponse response) throws IOException
  {
    LogDto ld = new LogDto();
    ld.setClassName(getClass().getName());
    ld.setMessageId("R000001");
    ld.setMessageContext("Email:" + loginForm.getLogin_email());
    ld.setLogInfo("[login]");
    this.logOutput.printLog(ld);
    User user = this.accountService.getUserByEmailId(loginForm.getLogin_email());
   
    if(user !=null){
	   try {	
		   if(user.getsUserPassword().equals(SHAUtil.shaEncode(loginForm.getLogin_pass()))){
			   response.getWriter().write("{\"result\":\""+ 1 +"\"}");
		   }
		
	   } catch (Exception e) {	
		e.printStackTrace();
	   }
    }else{
        response.getWriter().write("{\"result\":\""+ 0 +"\"}");
    }
  }
}
