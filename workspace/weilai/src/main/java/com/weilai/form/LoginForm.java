package com.weilai.form;

public class LoginForm
{
  private String login_email;
  private String login_pass;
  
 
  
  /**
 * @return the login_email
 */
public String getLogin_email() {
	return login_email;
}

/**
 * @param login_email the login_email to set
 */
public void setLogin_email(String login_email) {
	this.login_email = login_email;
}

public String getLogin_pass()
  {
    return this.login_pass;
  }
  
  public void setLogin_pass(String login_pass)
  {
    this.login_pass = login_pass;
  }
}
