package com.demo.dao.zxc;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.demo.model.System_param;

public interface System_paramRepository extends JpaRepository<System_param, Integer>,JpaSpecificationExecutor<System_param>,System_paramDao{

}
