package com.weilai.dao;

import com.weilai.pojo.User;

public abstract interface UserMapper
{
  public abstract int deleteByPrimaryKey(String paramString);
  
  public abstract int insert(User paramUser);
  
  public abstract int insertSelective(User paramUser);
  
  public abstract User selectByPrimaryKey(String paramString);
  
  public abstract int updateByPrimaryKeySelective(User paramUser);
  
  public abstract int updateByPrimaryKey(User paramUser);
  
  public abstract User selectByEmailKey(String paramString);
}
