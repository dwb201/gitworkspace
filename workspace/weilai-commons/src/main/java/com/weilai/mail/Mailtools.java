/**
 * 
 */
package com.weilai.mail;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;


import com.weilai.commons.constant.ConstantInfo;
import com.weilai.commons.log.LogOutput;
import com.weilai.commons.readproperties.PropretiesTools;
import com.weilai.commons.log.dto.LogDto;

/**
 * @author wenbod
 *
 */
public class Mailtools {

	@Autowired
	PropretiesTools propretiesTools;
	
	@Autowired
	LogOutput logOutput;

	public void sendMail() throws MessagingException{
		
		String protocolDivsion=propretiesTools.getProperty("protocolDivision");
		String mailsmtpauth=propretiesTools.getProperty("mail.smtp.auth");
		String mailsprotocol=propretiesTools.getProperty("mail.transport.protocol");
		String connectserver=propretiesTools.getProperty("connectserver");
		String mailuserid=propretiesTools.getProperty("mailuserid");
		String userpassword=propretiesTools.getProperty("userpassword");
		String mailaddress=propretiesTools.getProperty("mailaddress");
		
		Properties props = new Properties();  
		
		if (ConstantInfo.MAIL_PROTOCOL_SMTP.equals(protocolDivsion)) {
		    props.setProperty("mail.smtp.auth", mailsmtpauth);  
		    props.setProperty("mail.transport.protocol", mailsprotocol); 
		}
		
		Session session = Session.getInstance(props);  
        session.setDebug(true);  
		Message msg = new MimeMessage(session); 
		LogDto logbean = new LogDto();
		logbean.setMessageId(ConstantInfo.B000002);
		logbean.setMessageContext(propretiesTools.getProperty(ConstantInfo.B000002));
		logbean.setLogInfo("protocol:"+protocolDivsion.equals(ConstantInfo.MAIL_PROTOCOL_SMTP) != null?"SMTP":"pop3");
		logOutput.printLog(logbean);
		Transport transport = session.getTransport();  
        transport.connect(connectserver, 25, mailuserid, userpassword);  
        transport.sendMessage(msg,new Address[]{new InternetAddress(mailaddress)});
        logbean.setMessageId(ConstantInfo.B000003);
		logbean.setMessageContext(propretiesTools.getProperty(ConstantInfo.B000003));
		logbean.setLogInfo("mailaddress:"+mailaddress);
		logOutput.printLog(logbean);
	}
}
