package com.zhiyou.ssh.service.back;

import java.util.List;

import com.zhiyou.ssh.vo.Type;

public interface IBackTypeService {

	public boolean doCreate(Type vo) throws Exception;
	
	public List<Type> findAll() throws Exception;
	
	public boolean doRemove(Type vo) throws Exception;

	public boolean doUpdate(Type type) throws Exception;

	public Type findById(Integer tid) throws Exception;
	
	public boolean getTitle(String title);

}
