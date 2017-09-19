package com.zhiyou.ssh.service.back;

import com.zhiyou.ssh.vo.Admin;

public interface IFrontAdminService {

	public boolean login(Admin vo) throws Exception;
}
