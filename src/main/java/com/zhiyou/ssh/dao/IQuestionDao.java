package com.zhiyou.ssh.dao;

import java.util.List;

import com.zhiyou.ssh.vo.Question;
import com.zhiyou.ssh.vo.Type;

public interface IQuestionDao extends IDao<String, Question>{
	
	public List<Type> findAllTypes();

}
