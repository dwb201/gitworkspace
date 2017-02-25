package com.weilai.service.impl;

import com.weilai.dao.UserMapper;
import com.weilai.pojo.User;
import com.weilai.service.AccountService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("accountService")
public class AccountServiceImpl
  implements AccountService
{
  @Resource
  private UserMapper userMapper;
  
  public UserMapper getUserMapper()
  {
    return this.userMapper;
  }
  
  public void setUserMapper(UserMapper userMapper)
  {
    this.userMapper = userMapper;
  }
  
  public User getUserByEmailId(String emailKey)
  {
    return this.userMapper.selectByEmailKey(emailKey);
  }
  
  public int insertUser(User user)
  {
	  return this.userMapper.insert(user);
  }
}
