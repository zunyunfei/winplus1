package com.demo.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Subject_field_record{
		private Integer id;
		private Integer subject_id;//'标的Id',
		private Integer field_id;// '字段id',
		private String field_value;// '字段值',
		private String delflag;//'删除标记',
		private Date create_date;// '创建日期',
		private Date update_date;// '更新日期',
		@Id
		@GeneratedValue
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public Integer getSubject_id() {
			return subject_id;
		}
		public void setSubject_id(Integer subject_id) {
			this.subject_id = subject_id;
		}
		public Integer getField_id() {
			return field_id;
		}
		public void setField_id(Integer field_id) {
			this.field_id = field_id;
		}
		public String getField_value() {
			return field_value;
		}
		public void setField_value(String field_value) {
			this.field_value = field_value;
		}
		public String getDelflag() {
			return delflag;
		}
		public void setDelflag(String delflag) {
			this.delflag = delflag;
		}
		public Date getCreate_date() {
			return create_date;
		}
		public void setCreate_date(Date create_date) {
			this.create_date = create_date;
		}
		public Date getUpdate_date() {
			return update_date;
		}
		public void setUpdate_date(Date update_date) {
			this.update_date = update_date;
		}
		
		
		
}
