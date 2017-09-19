package com.zhiyou.ssh.service.back.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhiyou.ssh.dao.IAdminDao;
import com.zhiyou.ssh.service.back.IFrontAdminService;
import com.zhiyou.ssh.vo.Admin;

@Service
public class FrontAdminServiceImpl implements IFrontAdminService {

	private IAdminDao adminDaoImpl = null;
    @Resource(name="adminDaoImpl")
	public void setAdminDaoImpl(IAdminDao adminDaoImpl) {
		this.adminDaoImpl = adminDaoImpl;
	}

	@Override
	public boolean login(Admin vo) throws Exception {
		// TODO Auto-generated method stub
		return adminDaoImpl.login(vo);
	}

}
