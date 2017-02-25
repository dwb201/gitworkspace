package com.weilai.pojo;

import java.util.Date;

public class User
{
  private String sId;
  private String sUserName;
  private Integer sUserLevel;
  private String sUserMail;
  private String sUserPassword;
  private String sUserWechatId;
  private String sUserQqId;
  private String sUserPhonenumber;
  private Date sUserJoinDate;
  private String sUserDiv;
  private String registtime;
  private String updatetime;
  private String register;
  private String updater;
  
  public String getsId()
  {
    return this.sId;
  }
  
  public void setsId(String sId)
  {
    this.sId = (sId == null ? null : sId.trim());
  }
  
  public String getsUserName()
  {
    return this.sUserName;
  }
  
  public void setsUserName(String sUserName)
  {
    this.sUserName = (sUserName == null ? null : sUserName.trim());
  }
  
  public Integer getsUserLevel()
  {
    return this.sUserLevel;
  }
  
  public void setsUserLevel(Integer sUserLevel)
  {
    this.sUserLevel = sUserLevel;
  }
  
  public String getsUserMail()
  {
    return this.sUserMail;
  }
  
  public void setsUserMail(String sUserMail)
  {
    this.sUserMail = (sUserMail == null ? null : sUserMail.trim());
  }
  
  public String getsUserPassword()
  {
    return this.sUserPassword;
  }
  
  public void setsUserPassword(String sUserPassword)
  {
    this.sUserPassword = (sUserPassword == null ? null : sUserPassword.trim());
  }
  
  public String getsUserWechatId()
  {
    return this.sUserWechatId;
  }
  
  public void setsUserWechatId(String sUserWechatId)
  {
    this.sUserWechatId = (sUserWechatId == null ? null : sUserWechatId.trim());
  }
  
  public String getsUserQqId()
  {
    return this.sUserQqId;
  }
  
  public void setsUserQqId(String sUserQqId)
  {
    this.sUserQqId = (sUserQqId == null ? null : sUserQqId.trim());
  }
  
  public String getsUserPhonenumber()
  {
    return this.sUserPhonenumber;
  }
  
  public void setsUserPhonenumber(String sUserPhonenumber)
  {
    this.sUserPhonenumber = (sUserPhonenumber == null ? null : sUserPhonenumber.trim());
  }
  
  public Date getsUserJoinDate()
  {
    return this.sUserJoinDate;
  }
  
  public void setsUserJoinDate(Date sUserJoinDate)
  {
    this.sUserJoinDate = sUserJoinDate;
  }
  
  public String getsUserDiv()
  {
    return this.sUserDiv;
  }
  
  public void setsUserDiv(String sUserDiv)
  {
    this.sUserDiv = (sUserDiv == null ? null : sUserDiv.trim());
  }
  
  public String getRegisttime()
  {
    return this.registtime;
  }
  
  public void setRegisttime(String registtime)
  {
    this.registtime = (registtime == null ? null : registtime.trim());
  }
  
  public String getUpdatetime()
  {
    return this.updatetime;
  }
  
  public void setUpdatetime(String updatetime)
  {
    this.updatetime = (updatetime == null ? null : updatetime.trim());
  }
  
  public String getRegister()
  {
    return this.register;
  }
  
  public void setRegister(String register)
  {
    this.register = (register == null ? null : register.trim());
  }
  
  public String getUpdater()
  {
    return this.updater;
  }
  
  public void setUpdater(String updater)
  {
    this.updater = (updater == null ? null : updater.trim());
  }
}
