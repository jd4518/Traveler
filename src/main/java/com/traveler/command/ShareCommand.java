package com.traveler.command;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.traveler.model.Share;

@JsonIgnoreProperties(value="share")
public class ShareCommand {						//Server 측으로 데이터를 넘길때 
	private int boardNum;
	private String memberPicture;
	private String id;
	private String name;
	private int memberAge;
	private String memberTel;
	private String title;
	private String term;
	private int number;
	private int cost;
	private String content;
	private String picture;
	private String map;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	private Map<String, Object> errorMessage;
	
	public ShareCommand()
	{
		errorMessage = new HashMap<>();
	}
	public Map<String, Object> getErrorMessage()
	{
		return errorMessage;
	}
	
	public void validate()							//유효성 검사
	{
		/*
		 *  name validation
		 */
		/*
		 *  countryCode validation
		 */
		/*
		 *  district validation
		 */
		/*
		 *  population validation
		 */
	}
	public boolean isValid()
	{
		if(errorMessage.size()>0)
			return false;
		
		return true;
	}
	
	public Share getShare()
	{
		Share s = new Share();
		
		s.setBoardNum(boardNum);
		s.setCost(cost);
		s.setId(id);
		s.setMap(map);
		s.setMemberAge(memberAge);
		s.setMemberPicture(memberPicture);
		s.setMemberTel(memberTel);
		s.setName(name);
		s.setNumber(number);
		s.setPicture(picture);
		s.setTerm(term);
		s.setContent(content);
		s.setTitle(title);
		return s;
	}
	
	
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getMemberPicture() {
		return memberPicture;
	}
	public void setMemberPicture(String memberPicture) {
		this.memberPicture = memberPicture;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMemberAge() {
		return memberAge;
	}
	public void setMemberAge(int memberAge) {
		this.memberAge = memberAge;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}

}
