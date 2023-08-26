package service;

import javax.servlet.ServletContext;

import bean.User;

public interface EmailService {
   void sendMail(ServletContext context,User recipient,String type);
}
