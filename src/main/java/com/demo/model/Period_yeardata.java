package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Period_yeardata {

	
	 private Integer id;
	 private String p_data_type;
	 private  Double p_dataname;
	 private Integer p_datavalue;
	 @Id
	 @GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getP_data_type() {
		return p_data_type;
	}
	public void setP_data_type(String p_data_type) {
		this.p_data_type = p_data_type;
	}
	public Double getP_dataname() {
		return p_dataname;
	}
	public void setP_dataname(Double p_dataname) {
		this.p_dataname = p_dataname;
	}
	public Integer getP_datavalue() {
		return p_datavalue;
	}
	public void setP_datavalue(Integer p_datavalue) {
		this.p_datavalue = p_datavalue;
	}
	 
	 
}
