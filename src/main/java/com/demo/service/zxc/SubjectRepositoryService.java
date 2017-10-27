package com.demo.service.zxc;
import java.util.List;

import org.springframework.data.domain.Page;
import com.demo.model.Subject;

public interface SubjectRepositoryService {

	public List<Object[]> vagueFindList(Subject subject,Integer page);
		
	
}
