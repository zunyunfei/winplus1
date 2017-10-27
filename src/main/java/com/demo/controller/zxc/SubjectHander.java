package com.demo.controller.zxc;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.model.Period_yeardata;
import com.demo.model.Subject;
import com.demo.service.zxc.PeriodYeardataService;
import com.demo.service.zxc.SubjectRepositoryService;
import com.demo.service.zxc.System_paramService;

@Controller
public class SubjectHander {

	@Autowired
	SubjectRepositoryService service;
	@Autowired
	System_paramService sysservice;
	@Autowired
	PeriodYeardataService periodYeardataService;
	@RequestMapping("/product")
	public String vagueFindList(Subject subject,Integer page,Map<String, Object> map) {
	List<Object[]> lSubjects=service.vagueFindList(subject, page);
	List<Object[]> systemObj=sysservice.findSystemparamByStatus();
	List<Object[]> systemParams=sysservice.findSystemparamByType();
	List<Object[]> systemPeriod=sysservice.findSystemparamByPeriod();
	List<Period_yeardata> pYeardatas=periodYeardataService.findPeriod_yeardataList();
	map.put("lSubjects", lSubjects);
	map.put("systemObj", systemObj);
	map.put("systemParams", systemParams);
	map.put("systemPeriod", systemPeriod);
	map.put("pYeardatas", pYeardatas);
		return "web/product";
	}
}
