package com.demo.service.zxc;

import java.util.List;

import com.demo.model.System_param;

public interface System_paramService {

	public List<Object[]> findSystemparamByStatus();
		
	public List<Object[]> findSystemparamByType();
	
	public List<Object[]> findSystemparamByPeriod();
		
	
}
