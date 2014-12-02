package com.gizii.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gizii.dao.impl.EmailDAOImpl;
import com.gizii.po.Email;
import com.gizii.service.EmailService;

@Service("emailService")
public class EmailServiceImpl implements EmailService {

	@Resource
	private EmailDAOImpl emailDao;
	
	@Override
	public void add(Email email) {
		emailDao.add(email);

	}

	@Override
	public void delete(int Id) {
		emailDao.delete(Id);

	}

	@Override
	public int getId(String email) {
		return emailDao.getId(email);
	}

	@Override
	public List<Email> getAll(int admin_Id) {
	
		return emailDao.getAll(admin_Id);
	}

	public EmailDAOImpl getEmailDao() {
		return emailDao;
	}

	public void setEmailDao(EmailDAOImpl emailDao) {
		this.emailDao = emailDao;
	}

	
}
