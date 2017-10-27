package com.demo.dao.zwr;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.demo.model.Users;

public interface UserRepository extends JpaRepository<Users, Integer>,JpaSpecificationExecutor<Users>,UserDao {

}
