package com.weilai.commons.readproperties;

import java.io.IOException;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;

//@Configuration
//@PropertySource({"classpath:message.properties"})
public class PropertyPlaceholderConfigurer extends org.springframework.beans.factory.config.PropertyPlaceholderConfigurer {

	//private static Map<String, Object> ctxPropertiesMap;
	 private static Properties props;

	 public Properties mergeProperties() throws IOException {
	  props = super.mergeProperties();
	 
	  return props;
	 } 
//    @SuppressWarnings("unchecked")
//	@Override
//    protected void processProperties(ConfigurableListableBeanFactory beanFactory, Properties props) throws BeansException {
//
//        super.processProperties(beanFactory, props);
//        // load properties to ctxPropertiesMap
//        ctxPropertiesMap = (Map<String, Object>) new HashMap<String, Object>();
//        for (Object key : props.keySet()) {
//            String keyStr = key.toString();
//            String value = props.getProperty(keyStr);
//            ((Hashtable<Object, Object>) ctxPropertiesMap).put(keyStr, value);
//        }
//    }
//
//    // static method for accessing context properties
//    @SuppressWarnings("unchecked")
//	public static Object getContextProperty(String name) {
//        return ((Hashtable<Object, Object>) ctxPropertiesMap).get(name);
//    }
    
	@Autowired
	Environment env;
	
	
}
