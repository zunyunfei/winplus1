package com.demo.dao.zxc;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.demo.model.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Integer>,JpaSpecificationExecutor<Subject>,SubjectDao{

}
