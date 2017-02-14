package com.weilai.commons.filter;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.weilai.commons.log.LogOutput;
import com.weilai.commons.log.dto.LogDto;
import com.weilai.commons.constant.ConstantInfo;

public class AuditHandler {
	
	@Autowired
	LogOutput logOutput;
	
	LogDto logDto = new LogDto();
	
	public void auditRequest(String appName,ServletRequest request) {

		logDto.setClassName(appName);
		logDto.setMessageId(ConstantInfo.I000001);
		logDto.setLogInfo("[start log]");
		logOutput.printLog(logDto);
 
    }
}
