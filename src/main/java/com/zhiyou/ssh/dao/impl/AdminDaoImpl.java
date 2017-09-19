package com.zhiyou.ssh.dao.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyou.ssh.dao.IAdminDao;
import com.zhiyou.ssh.vo.Admin;

@Repository
public class AdminDaoImpl extends HibernateDaoSupport implements IAdminDao {

	@Autowired
	public AdminDaoImpl(HibernateTemplate hibernateTemplate) {

		super.setHibernateTemplate(hibernateTemplate);

	}

	@Override
	public boolean doCreate(Admin vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doRemove(Admin vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doUpdate(Admin vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Admin findById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Admin> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Admin> findAll(int cp, int ls, String column, String kw) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long getAllCount(String column, String kw) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean login(Admin vo) throws Exception {

		String hql = "FROM Admin WHERE adminid=? and password=?";
		List<?> result = super.getHibernateTemplate().find(hql, vo.getAdminid(),vo.getPassword());
		System.out.println(result);
		if (result != null && result.size()>0) {
			return true;
		}
		
		return false;
		
	}

}
