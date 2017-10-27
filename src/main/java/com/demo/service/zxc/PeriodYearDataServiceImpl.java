package com.demo.service.zxc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.zxc.PeriodYeardataRepository;
import com.demo.model.Period_yeardata;
@Service
public class PeriodYearDataServiceImpl implements PeriodYeardataService{
	@Autowired
	PeriodYeardataRepository repository;
	@Override
	public List<Period_yeardata> findPeriod_yeardataList() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

}
