package com.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Participant {

	@Id
	private int pid;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "Bid")
	private Batch batch;
	private String name;
	private String gender;
	private String address;
	private String email;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Batch getBatch() {
		return batch;
	}
	public void setBatch(Batch batch) {
		this.batch=batch;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Participant() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Participant(int pid, Batch batch, String name, String gender, String address, String email) {
		super();
		this.pid = pid;
		this.batch=batch;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.email = email;
	}
	@Override
	public String toString() {
		return "Employee [pid=" + pid + ", batch Code="+batch.getBid() +", name=" + name + ", gender=" + gender + ", address=" + address + ", email="
				+ email + "]";
	}
	
	
}