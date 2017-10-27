package com.demo.dao.zxc;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;



import com.demo.model.Subject;

public class SubjectRepositoryImpl implements SubjectDao{
	@PersistenceContext
	EntityManager entitymanager;
	@Override
	public List<Object[]> vagueFindList(String sql) {
		// TODO Auto-generated method stub
		return  entitymanager.createNativeQuery(sql).getResultList();
	}

}
