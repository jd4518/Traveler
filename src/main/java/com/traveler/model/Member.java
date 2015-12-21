package com.traveler.model;

import java.util.Date;

public class Member {
	
	private String 	id;
	private String 	password;
	private String 	name;
	private Date 	regist_date;
	private Date	birthday;
	private String 	tel;
	private String 	address;
	private Integer addressNum;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getAddressNum() {
		return addressNum;
	}
	public void setAddressNum(Integer addressNum) {
		this.addressNum = addressNum;
	}
}
