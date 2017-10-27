package com.demo.controller.zwr;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.model.Role;
import com.demo.model.Users;
import com.demo.service.zwr.UserService;

@Controller
public class Handler {
	@Autowired
	UserService userService;
	
     @RequestMapping("/user")
	public String findlist(Map<String, Object> map) {
		List<Object[]> ulist=userService.findIndexList();
		map.put("ulist", ulist);
	//	List<Role> rlist=userService.findRole();
	//	map.put("rlist", rlist);
		return "userlist";
		
	}
	
     @RequestMapping("/toadd")
 	public String toadd(Integer id,Map<String, Object> map) {
 		
 		List<Role> rlist=userService.findRole();
 		map.put("rlist", rlist);
 		return "adduser";
 		
 	}
 	@RequestMapping("add")
 	public String add(Users users) {
 		userService.addUser(users);
 
 		return "redirect:/user";
 		
 	}
 	
 	@RequestMapping("deleteuser")
 	public String delete(Users users) {
 		userService.deleteUser(users);
 		return "redirect:/user";
 		
 	}
 	
 	@RequestMapping("toupdate")
 	public String toupdate(Integer id,Map<String, Object> map) {
 		
 		List<Role> rlist=userService.findRole();
 		map.put("rlist", rlist);
 		
 		Users users=userService.getUserById(id);
 		map.put("users", users);
 		return "updateuser";
 		
 	}
 	@RequestMapping("update")
 	public String update(Users users) {
 		userService.updateUser(users);
 		return "redirect:/user";
 		
 	}


}
