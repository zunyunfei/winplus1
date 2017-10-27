package com.demo.dao.zwr;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class UserRepositoryImpl implements UserDao {
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public List<Object[]> findIndexList(String sql) {
		
		return entityManager.createNativeQuery(sql).getResultList();
	}

}
