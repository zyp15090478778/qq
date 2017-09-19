package com.zhiyou.ssh.service.front;

import com.zhiyou.ssh.vo.User;

public interface IFrontUserService {
	
	public boolean doCreate(User vo) throws Exception;

	public boolean login(User vo) throws Exception;

	public boolean getUserid(String userid);
	
	public User getUserById(String userid) throws Exception;

}
