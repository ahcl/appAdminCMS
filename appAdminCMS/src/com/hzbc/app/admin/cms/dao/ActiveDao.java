package com.hzbc.app.admin.cms.dao;

import java.util.List;

import com.hzbc.app.admin.cms.annotation.MyAnnotation;
import com.hzbc.app.admin.cms.entity.Active;

@MyAnnotation
public interface ActiveDao {
	public void addActive(Active active);
	public List<Active> findActiveById(Integer id);
	public List<Active> findActive();
}
