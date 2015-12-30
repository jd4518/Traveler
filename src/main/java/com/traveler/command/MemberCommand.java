package com.traveler.command;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.traveler.model.Member;

@JsonIgnoreProperties(value = "member")
public class MemberCommand {
	private String 	id;
	private String 	password;
	private String 	name;
	private Date	birthday;
	private String 	tel;
	private String 	address;
	private Integer addressNum;
	
	private Map<String, Object> errorMessage;
	
	public MemberCommand() {
		errorMessage = new HashMap<>();
	}
	
	public Map<String, Object> getErrorMessage() {
		return errorMessage;
	}
	
	public void validate() {
		/*
		 * name validation
		 */
		
		/*
		 * coutryCode validation
		 */
		
		/*
		 * district validation
		 */
		
		/*
		 * population validation
		 */
	}
	
	public boolean isValid() {
		
		if (errorMessage.size() > 0)
			return false;
		
		return true;
	}
	
	public Member getMember() {
		Member m = new Member();
		
		m.setId(id);
		m.setPassword(password);
		m.setName(name);
		m.setBirthday(birthday);
		m.setTel(tel);
		m.setAddress(address);
		m.setAddressNum(addressNum);
		
		return m;
	}

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
