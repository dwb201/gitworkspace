package com.weilai.commons.log;

import org.slf4j.Logger;  
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.weilai.commons.constant.ConstantInfo;
import com.weilai.commons.log.dto.LogDto;
import com.weilai.commons.readproperties.PropretiesTools;


public class LogOutput {
	
	static final String STRING_COMMA = ",";
	static final String STRING_END =".";
	Logger log=null;
	Logger errorLog=null;
	
	@Autowired
	PropretiesTools propertiesTool;
	
	public LogOutput(){
	    log=LoggerFactory.getLogger("log");
	    errorLog=LoggerFactory.getLogger("errorLog");
	}
	
	public void printLog(LogDto logbean){
		
		if (null != logbean){
			String logcontext = createLogContext(logbean);
		    log.info(logcontext);
		}else{
			String errorLogContext = createErrorLogContext();
			log.error(errorLogContext);
		}
	}
	
	private String createLogContext(LogDto logbean){
		
		StringBuffer sb= new StringBuffer();
		
		sb.append(logbean.getClassName());
		sb.append(STRING_COMMA);
		sb.append(logbean.getMessageId());
		sb.append(STRING_COMMA);
		sb.append(propertiesTool.getProperty(logbean.getMessageId()));
		sb.append(STRING_COMMA);
		sb.append(logbean.getLogInfo());
		sb.append(STRING_COMMA);
		sb.append(logbean.getMessageContext());
		
		sb.append(STRING_END);
		
		return sb.toString();
	}

	private String createErrorLogContext(){
		
		StringBuffer sb= new StringBuffer();

		sb.append(ConstantInfo.E900001);
		sb.append(STRING_COMMA);
		sb.append(propertiesTool.getProperty(ConstantInfo.E900001));
		sb.append(STRING_END);
		
		return sb.toString();
	}
}
