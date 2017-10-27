package com.demo.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
@Entity
public class Role {
	 private Integer role_id ;                //'角色id',
	 private String permission_ename  ;      // '权限名称',
	 private String permissionmiaoshu;      
	 private String create_date ;           // '创建时间',
	 private Set<Users> users=new HashSet<>();
	 @Id
	 @GeneratedValue
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public String getPermission_ename() {
		return permission_ename;
	}
	public void setPermission_ename(String permission_ename) {
		this.permission_ename = permission_ename;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	
	public String getPermissionmiaoshu() {
		return permissionmiaoshu;
	}
	public void setPermissionmiaoshu(String permissionmiaoshu) {
		this.permissionmiaoshu = permissionmiaoshu;
	}
	@ManyToMany
	@JoinTable
	public Set<Users> getUsers() {
		return users;
	}
	public void setUsers(Set<Users> users) {
		this.users = users;
	}

	 
	 
}
