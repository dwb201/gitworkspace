package com.weilai.service.impl;

import com.weilai.dao.UserMapper;
import com.weilai.pojo.User;
import com.weilai.service.UserService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl
  implements UserService
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
  
  public User getUserById(String userId)
  {
    return this.userMapper.selectByPrimaryKey(userId);
  }
}
