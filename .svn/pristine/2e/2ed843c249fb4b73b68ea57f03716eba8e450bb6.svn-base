package com.zhiyou.ssh.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zhiyou.ssh.dao.IQuestionDao;
import com.zhiyou.ssh.vo.Question;
import com.zhiyou.ssh.vo.Type;

@Repository
public class QuestionDaoImpl extends HibernateDaoSupport implements IQuestionDao {

	@Autowired
	public QuestionDaoImpl(HibernateTemplate hibernateTemplate) {
		super.setHibernateTemplate(hibernateTemplate);
	}

	@Override
	public boolean doCreate(Question vo) throws Exception {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(vo);
		return true;
	}

	@Override
	public boolean doRemove(Question vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doUpdate(Question vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Question findById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Question> findAll() throws Exception {
		// TODO Auto-generated method stub
		String hql = "FROM Question";
		return (List<Question>) super.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Question> findAll(int cp, int ls, String column, String kw) throws Exception {
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
	public List<Type> findAllTypes() {
		// TODO Auto-generated method stub
		String hql = "FROM Type";
		return (List<Type>) super.getHibernateTemplate().find(hql);
	}

}
