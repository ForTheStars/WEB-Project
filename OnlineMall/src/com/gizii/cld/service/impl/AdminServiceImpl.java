package com.gizii.cld.service.impl;//δ֪����

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.gizii.cld.dao.impl.AdminDAOImpl;
import com.gizii.cld.po.Admin;
import com.gizii.cld.po.ShopException;
import com.gizii.cld.service.AdminService;

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
	public void verify(String password,String repPassword){
		if(password==null||repPassword==null)
			throw new ShopException("密码不能为空!");
		if (!password.equals(repPassword))
			throw new ShopException("密码不相同!");
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
	public Admin logIn(Admin admin) {
		Admin a = this.getByName(admin.getUsername());
		if(a==null) throw new ShopException("用户名不存在!");
		if(!admin.getPassword().equals(a.getPassword())) throw new ShopException("用户名密码不正确");
		return a;
	}
	
	public AdminDAOImpl getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDAOImpl adminDao) {
		this.adminDao = adminDao;
	}

}