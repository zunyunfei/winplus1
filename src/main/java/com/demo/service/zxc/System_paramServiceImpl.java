package com.demo.service.zxc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.zxc.System_paramRepository;
import com.demo.model.System_param;
@Service
public class System_paramServiceImpl implements System_paramService {

	@Autowired
	System_paramRepository repository;
	@Override
	public List<Object[]> findSystemparamByStatus() {
		String sql="select * from system_param s where s.code='P_STATUS'";
		return repository.getFindSysparam(sql);
	}

	@Override
	public List<Object[]> findSystemparamByType() {
		String sql="select * from system_param s where s.code='P_TYPE'";
		return repository.getFindSysparam(sql);
	}

	@Override
	public List<Object[]> findSystemparamByPeriod() {
		String sql="select * from system_param s where s.code='P_PERIOD'";
		return repository.getFindSysparam(sql);
	}

}
