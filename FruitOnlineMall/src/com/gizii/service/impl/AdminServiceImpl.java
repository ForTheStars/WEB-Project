package com.gizii.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.gizii.dao.impl.AdminDAOImpl;
import com.gizii.po.Admin;
import com.gizii.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Resource
	private  AdminDAOImpl adminDao;
	
	@Override
	public void add(Admin admin) {
		adminDao.add(admin);
	}

	@Override
	public void delete(int Id) {
		adminDao.delete(Id);

	}

	@Override
	public void update(Admin admin) {
		adminDao.updata(admin);

	}

	@Override
	public Admin show(int Id) {
		return adminDao.showById(Id);

	}

	@Override
	public List<Admin> showAll() {
		return adminDao.showAll();

	}
	
	@Override
	public Admin getByName(String username){
		return adminDao.getByName(username);
	}
	
	@Override
	public boolean logIn(Admin admin){
		Admin admin2 = null; 
		String username = admin.getUsername();
		int Id =admin.getId();
		if(username != null){
			admin2 = adminDao.getByName(username);
		}
		else {
			admin2 = adminDao.showById(Id);
		}
		
		if(admin2.getPassword().equals(admin.getPassword())){
			admin.setId(admin2.getId());
			adminDao.updata(admin);
			return true;
		}
		else {
			return false;
		}
	}
	
	public AdminDAOImpl getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDAOImpl adminDao) {
		this.adminDao = adminDao;
	}

}
