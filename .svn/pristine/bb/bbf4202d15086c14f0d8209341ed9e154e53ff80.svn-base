package com.zhiyou.ssh.action.back;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zhiyou.ssh.service.back.IBackTypeService;
import com.zhiyou.ssh.vo.Type;

@SuppressWarnings("serial")
@Controller
public class TypeAction extends ActionSupport implements ModelDriven<Type> {

	private IBackTypeService backTypeServiceImpl;

	@Resource
	public void setBackTypeServiceImpl(IBackTypeService backTypeServiceImpl) {
		this.backTypeServiceImpl = backTypeServiceImpl;
	}

	private Type type;

	public String insert() throws Exception {

		if (backTypeServiceImpl.doCreate(type)) {
			ServletActionContext.getRequest().setAttribute("msg", "添加成功！");
			ServletActionContext.getRequest().setAttribute("path", ServletActionContext.getRequest().getContextPath()+"/jsp/back/backTypeAction_findAll.action");
		}

		return "forward";
	}
	
	public String findAll() throws Exception{
		if (backTypeServiceImpl.findAll() != null) {
			List<Type> types = backTypeServiceImpl.findAll();
			System.out.println(types);
			ServletActionContext.getRequest().setAttribute("list", types);
			return SUCCESS;
		}else {
			ServletActionContext.getRequest().setAttribute("msg", "查询成功！");
			ServletActionContext.getRequest().setAttribute("path", ServletActionContext.getRequest().getContextPath()+"/jsp/back/type/type_list.jsp");
			
		}
		return "forward";
		
	}
	
	public String doRemove() throws Exception{
		if (backTypeServiceImpl.doRemove(type)) {
			ServletActionContext.getRequest().setAttribute("msg", "删除成功！");
			ServletActionContext.getRequest().setAttribute("path", ServletActionContext.getRequest().getContextPath()+"/jsp/back/backTypeAction_findAll.action");
		}
		
		return "forward";
	}
	
	
	public String updatePre() throws Exception{
//		ModelDrivenInterceptor mdi = new ModelDrivenInterceptor();
//		mdi.setRefreshModelBeforeResult(true);
		Type type1 = backTypeServiceImpl.findById(type.getTid());
		if (type1 != null) {
			ServletActionContext.getRequest().setAttribute("type", type1);
			System.out.println(type1);
			
			
//			type.setTitle("++++++++++++++++");
//			ServletActionContext.getValueStack(ServletActionContext.getRequest()).push(type0);
//			ActionContext.getContext().getValueStack().push(type);
//			ActionContext.getContext().getValueStack().getRoot().add(0,type);
//			Object object  =    ActionContext.getContext().getValueStack().peek();
//			System.out.println(object);
			
			
			return "update";
		}else {
			return SUCCESS;
		}
		
	}
	
	public String doUpdate() throws Exception{
		if (backTypeServiceImpl.doUpdate(type)) {
			ServletActionContext.getRequest().setAttribute("msg", "修改成功！");
			ServletActionContext.getRequest().setAttribute("path", ServletActionContext.getRequest().getContextPath()+"/jsp/back/backTypeAction_findAll.action");
		}
		return "forward";
	}
	
	public String title() throws Exception{
		System.out.println(type.getTitle());
		boolean callbackResult = backTypeServiceImpl.getTitle(type.getTitle());
		System.out.println(callbackResult);
		ServletActionContext.getResponse().getWriter().print(callbackResult);
		
		return null;
	}

	@Override
	public Type getModel() {
		// TODO Auto-generated method stub
		if (type == null) {
			type = new Type();
		}
		return type;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

}
