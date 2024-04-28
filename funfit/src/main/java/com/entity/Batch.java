package com.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Batch {

	@Id
	private int bid;
	private String instructor;
	private int fees;
	private int totalParticipants;
	private LocalDateTime time;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getInstructor() {
		return instructor;
	}
	public void setIntructor(String instructor) {
		this.instructor = instructor;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	public int getTotalParticipants() {
		return totalParticipants;
	}
	public void setTotalParticipants(int totalParticipants) {
		this.totalParticipants = totalParticipants;
	}
	public LocalDateTime getTime() {
		return time;
	}
	public void setEmail(LocalDateTime time) {
		this.time = time;
	}
	public Batch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Batch(int bid, String instructor, int fees, int totalParticipants, LocalDateTime time) {
		super();
		this.bid = bid;
		this.instructor = instructor;
		this.fees = fees;
		this.totalParticipants = totalParticipants;
		this.time = time;
	}
	@Override
	public String toString() {
		return "Batch [bid=" + bid + ", instructor=" + instructor + ", fees=" + fees + ", totalParticipants=" + totalParticipants + ", time=" + time + "]";
	}
	
	
}