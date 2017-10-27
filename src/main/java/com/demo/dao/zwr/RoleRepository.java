package com.demo.dao.zwr;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.demo.model.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>,JpaSpecificationExecutor<Role>,UserDao {

}
