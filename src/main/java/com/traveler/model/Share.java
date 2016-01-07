package com.traveler.model;

import java.util.List;

public class Share {
	private int boardNum;
	private String title;
	private String term;
	private int number;
	private String picture;
	private String map;
	private String content;
	private int transCost;
	private int stayCost;
	private int eatCost;
	private String id;
	List<Comment> comments;
	
	
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTransCost() {
		return transCost;
	}
	public void setTransCost(int transCost) {
		this.transCost = transCost;
	}
	public int getStayCost() {
		return stayCost;
	}
	public void setStayCost(int stayCost) {
		this.stayCost = stayCost;
	}
	public int getEatCost() {
		return eatCost;
	}
	public void setEatCost(int eatCost) {
		this.eatCost = eatCost;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
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




