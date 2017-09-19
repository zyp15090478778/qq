package com.zhiyou.ssh.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyou.ssh.dao.IUserDao;
import com.zhiyou.ssh.vo.User;

@Repository
public class UserDaoImpl extends HibernateDaoSupport implements IUserDao {

	// 依赖构造方法进行注入
	@Autowired
	public UserDaoImpl(HibernateTemplate hibernateTemplate) {
		super.setHibernateTemplate(hibernateTemplate);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean doCreate(User vo) throws Exception {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(vo);
		return true;
	}

	@Override
	public boolean doRemove(User vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doUpdate(User vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User findById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAll(int cp, int ls, String column, String kw) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long getAllCount(String column, String kw) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean login(User vo) throws Exception {

		String hql = "FROM User WHERE userid=? and password=?";
		List<?> result = super.getHibernateTemplate().find(hql, vo.getUserid(),vo.getPassword());
		if (result != null && result.size()>0) {
			return true;
		}
		
		return false;
	}

	@Override
	public boolean getUserid(String userid) {
		// TODO Auto-generated method stub
		User user = super.getHibernateTemplate().get(User.class, userid);
		if (user != null) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public User getUserById(String userid) throws Exception{
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().get(User.class, userid);
	}

}
