package com.demo.service.zwr;

import java.util.List;

import com.demo.model.Role;
import com.demo.model.Users;

public interface UserService {
	public List<Object[]> findIndexList();
	
	   public List<Users> findUser();
	   public void addUser(Users users);
	   public Users getUserById(Integer id);
	   
	   public void updateUser(Users users);
	   public void deleteUser(Users users);
	   
	   public List<Role> findRole();

}
