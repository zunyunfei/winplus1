package com.demo.dao.zxc;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.demo.model.System_param;

public class System_paramRepositoryImpl implements System_paramDao{
	@PersistenceContext
	EntityManager entityManager;
	@Override
	public List<Object[]> getFindSysparam(String sql) {
		return entityManager.createNativeQuery(sql).getResultList();
	}

}
