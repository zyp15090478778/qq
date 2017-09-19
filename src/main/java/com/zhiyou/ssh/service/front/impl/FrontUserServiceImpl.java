package com.zhiyou.ssh.service.front.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyou.ssh.dao.IUserDao;
import com.zhiyou.ssh.service.front.IFrontUserService;
import com.zhiyou.ssh.vo.User;

@Service
public class FrontUserServiceImpl implements IFrontUserService {

	private IUserDao userDaoImpl = null;

	@Resource(name="userDaoImpl")
	public void setUserDaoImpl(IUserDao userDaoImpl) {
		this.userDaoImpl = userDaoImpl;
	}

	@Override
	public boolean login(User vo) throws Exception {
		// TODO Auto-generated method stub
		return userDaoImpl.login(vo);
	}

	@Override
	public boolean doCreate(User vo) throws Exception {
		// TODO Auto-generated method stub
		return userDaoImpl.doCreate(vo);
	}

	@Override
	public boolean getUserid(String userid) {
		// TODO Auto-generated method stub
		return userDaoImpl.getUserid(userid);
	}

	@Override
	public User getUserById(String userid) throws Exception{
		// TODO Auto-generated method stub
		return userDaoImpl.getUserById(userid);
	}

}
