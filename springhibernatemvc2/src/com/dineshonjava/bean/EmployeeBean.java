package com.dineshonjava.bean;

 //create table employee(empid number,empname varchar2(30),empage number,salary number,
//empaddress varchar2(30));
public class EmployeeBean {
	private Integer id;
	private String name;
	private Integer cost;
	
	private String type;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getCost() {
		return cost;
	}
	public void setCost(Integer cost) {
		this.cost = cost;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
