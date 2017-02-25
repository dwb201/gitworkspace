package com.weilai.service;

import com.weilai.pojo.User;

public abstract interface AccountService
{
  public abstract User getUserByEmailId(String emailkey);
  public abstract int insertUser(User user);
}
