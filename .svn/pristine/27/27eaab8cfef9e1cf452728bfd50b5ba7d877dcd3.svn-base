package com.zhiyou.ssh.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyou.ssh.dao.ITypeDao;
import com.zhiyou.ssh.vo.Type;
import com.zhiyou.ssh.vo.User;

@Repository
public class TypeDaoImpl extends HibernateDaoSupport implements ITypeDao {

	@Autowired
	public TypeDaoImpl(HibernateTemplate hibernateTemplate) {
		super.setHibernateTemplate(hibernateTemplate);
	}

	@Override
	public boolean doCreate(Type vo) throws Exception {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(vo);
		return true;
	}

	@Override
	public boolean doRemove(Type vo) throws Exception {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().delete(vo);
		return true;
	}

	@Override
	public boolean doUpdate(Type vo) throws Exception {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().update(vo);
		return true;
	}

	@Override
	public Type findById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().get(Type.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Type> findAll() throws Exception {
		// TODO Auto-generated method stub
		String hql = "FROM Type";
		return (List<Type>) super.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Type> findAll(int cp, int ls, String column, String kw) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long getAllCount(String column, String kw) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean getTitle(String title) {
		// TODO Auto-generated method stub
		String hql = "FROM Type WHERE title = ?";
		List<Type> type = (List<Type>) super.getHibernateTemplate().find(hql, title);
		System.out.println(type);
		if (null == type || type.size() == 0 ) {
			return false;
		}
		return true;
	}

}
