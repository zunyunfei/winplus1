package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class System_param {
	private Integer id;
	private String code;
	private String codename;
	private Integer codevalue;
	
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCodename() {
		return codename;
	}
	public void setCodename(String codename) {
		this.codename = codename;
	}
	public Integer getCodevalue() {
		return codevalue;
	}
	public void setCodevalue(Integer codevalue) {
		this.codevalue = codevalue;
	}
	

}
