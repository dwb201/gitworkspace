package com.weilai.commons.readproperties;

import java.io.IOException;
import java.util.Properties;

public class PropretiesTools extends com.weilai.commons.readproperties.PropertyPlaceholderConfigurer{

	private Properties props;
	
	public PropretiesTools() throws IOException{
		this.props = super.mergeProperties();
	}
	
	public String getProperty(String key){
		return props.getProperty(key);
	}
	
	public String getProperty(String key, String defaultValue) {
		  return props.getProperty(key, defaultValue);

	} 
}
