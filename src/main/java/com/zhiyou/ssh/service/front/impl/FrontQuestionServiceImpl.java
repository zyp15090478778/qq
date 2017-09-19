package com.zhiyou.ssh.service.front.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.ssh.dao.IQuestionDao;
import com.zhiyou.ssh.service.front.IFrontQuestionService;
import com.zhiyou.ssh.vo.Question;
import com.zhiyou.ssh.vo.Type;

@Service
public class FrontQuestionServiceImpl implements IFrontQuestionService {

	@Autowired
	private IQuestionDao QuestionDaoImpl;

//	@Resource
//	public void setQuestionDaoImpl(IQuestionDao questionDaoImpl) {
//		QuestionDaoImpl = questionDaoImpl;
//	}

	@Override
	public List<Type> findAllTypes() {
		// TODO Auto-generated method stub
		return QuestionDaoImpl.findAllTypes();
	}

	@Override
	public boolean doCreate(Question vo) throws Exception {
		// TODO Auto-generated method stub
		return QuestionDaoImpl.doCreate(vo);
	}

	@Override
	public List<Question> findAll() throws Exception {
		// TODO Auto-generated method stub
		return QuestionDaoImpl.findAll();
	}
	
	
	
}
