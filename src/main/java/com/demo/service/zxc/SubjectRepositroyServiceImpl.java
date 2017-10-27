package com.demo.service.zxc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.zxc.SubjectRepository;
import com.demo.model.Subject;
@Service
public class SubjectRepositroyServiceImpl implements SubjectRepositoryService{
	@Autowired
	SubjectRepository repository;
	@Override
	public List<Object[]> vagueFindList(Subject subject, Integer page) {
		String sql="SELECT * from subject s where 1=1";
		
		if (subject.getType()!=null) {
			sql+=" and s.type=(select sp.codevalue from system_param sp where  SP.code='p_TYPE' AND sp.codevalue="+subject.getType()+" )";
		}
		return repository.vagueFindList(sql);
	}

}
