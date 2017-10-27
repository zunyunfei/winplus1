package com.demo.controller.zxc;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.model.Subject;
import com.demo.service.zxc.SubjectRepositoryService;

@Controller
public class SubjectHander {

	@Autowired
	SubjectRepositoryService service;
	@RequestMapping("/product")
	public String vagueFindList(Subject subject,Integer page,Map<String, Object> map) {
		System.out.println("00000");
	List<Object[]> lSubjects=service.vagueFindList(subject, page);
	map.put("lSubjects", lSubjects);
		return "web/product";
	}
}
