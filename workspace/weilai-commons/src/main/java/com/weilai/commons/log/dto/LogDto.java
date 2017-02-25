package com.weilai.commons.log.dto;

public class LogDto {
	
    private String className;
    
    private String messageId;
    
    private String messageContext;
    
    private String logInfo;
	
    /**
	 * @return the className
	 */
	public String getClassName() {
		return className;
	}
	/**
	 * @param className the className to set
	 */
	public void setClassName(String className) {
		this.className = className;
	}
	/**
	 * @return the messageId
	 */
	public String getMessageId() {
		return messageId;
	}
	/**
	 * @param messageId the messageId to set
	 */
	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}
	/**
	 * @return the messageContext
	 */
	public String getMessageContext() {
		return messageContext;
	}
	/**
	 * @param messageContext the messageContext to set
	 */
	public void setMessageContext(String messageContext) {
		this.messageContext = messageContext;
	}
	/**
	 * @return the logInfo
	 */
	public String getLogInfo() {
		return logInfo;
	}
	/**
	 * @param logInfo the logInfo to set
	 */
	public void setLogInfo(String logInfo) {
		this.logInfo = logInfo;
	}
}
