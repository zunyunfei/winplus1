package com.demo.service.zwr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.zwr.RoleRepository;
import com.demo.dao.zwr.UserRepository;
import com.demo.model.Role;
import com.demo.model.Users;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;
	@Autowired
	RoleRepository roleRepository;
	@Override
	public List<Users> findUser() {
	
		return userRepository.findAll();
	}

	@Override
	public void addUser(Users users) {
		userRepository.save(users);
		
	}

	@Override
	public Users getUserById(Integer id) {

		return userRepository.findOne(id);
	}

	@Override
	public void updateUser(Users users) {
		userRepository.save(users);
		
	}

	@Override
	public void deleteUser(Users users) {
		userRepository.delete(users);
		
	}

	@Override
	public List<Role> findRole() {

		return roleRepository.findAll();
	}

	@Override
	public List<Object[]> findIndexList() {
   String  sql="select u.id, u.user_name,u.mobile_Phone,u.create_date,r.permission_ename from users u,role_permission_relation r";
		System.out.println(sql);
       return userRepository.findIndexList(sql);
       
	}


}
