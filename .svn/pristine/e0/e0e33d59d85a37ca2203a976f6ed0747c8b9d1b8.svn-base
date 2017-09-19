package com.zhiyou.ssh.service.back.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyou.ssh.dao.ITypeDao;
import com.zhiyou.ssh.service.back.IBackTypeService;
import com.zhiyou.ssh.vo.Type;

@Service
public class BackTypeServiceImpl implements IBackTypeService {

	private ITypeDao typeDaoImpl = null;

	@Resource
	public void setTypeDaoImpl(ITypeDao typeDaoImpl) {
		this.typeDaoImpl = typeDaoImpl;
	}

	@Override
	public boolean doCreate(Type vo) throws Exception {
		// TODO Auto-generated method stub
		return typeDaoImpl.doCreate(vo);
	}

	@Override
	public List<Type> findAll() throws Exception {
		// TODO Auto-generated method stub
		return typeDaoImpl.findAll();
	}

	@Override
	public boolean doRemove(Type vo) throws Exception {
		// TODO Auto-generated method stub
		return typeDaoImpl.doRemove(vo);
	}

	@Override
	public boolean doUpdate(Type type) throws Exception {
		// TODO Auto-generated method stub
		return typeDaoImpl.doUpdate(type);
	}

	@Override
	public Type findById(Integer tid) throws Exception {
		// TODO Auto-generated method stub
		return typeDaoImpl.findById(tid);
	}


	@Override
	public boolean getTitle(String title) {
		// TODO Auto-generated method stub
		return typeDaoImpl.getTitle(title);
		
	}

}
