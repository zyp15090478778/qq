package com.zhiyou.ssh.service.front;

import java.util.List;

import com.zhiyou.ssh.vo.Question;
import com.zhiyou.ssh.vo.Type;

public interface IFrontQuestionService {

	public List<Type> findAllTypes();
	
	public boolean doCreate(Question vo) throws Exception ;
	
	public List<Question> findAll() throws Exception;

}
