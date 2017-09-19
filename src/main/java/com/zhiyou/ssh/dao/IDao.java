package com.zhiyou.ssh.dao;

import java.util.List;

public interface IDao<K, V> {

	public boolean doCreate(V vo) throws Exception;

	public boolean doRemove(V vo) throws Exception;

	public boolean doUpdate(V vo) throws Exception;

	public V findById(Integer id) throws Exception;

	public List<V> findAll() throws Exception;

	public List<V> findAll(int cp, int ls, String column, String kw) throws Exception;

	public Long getAllCount(String column , String kw) throws Exception;

}
