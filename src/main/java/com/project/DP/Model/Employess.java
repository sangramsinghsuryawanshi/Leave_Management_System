package com.project.DP.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employess 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int emp_id;
	private String name;
	private int total_leaves;
	private int leaves_taken;
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTotal_leaves() {
		return total_leaves;
	}
	public void setTotal_leaves(int total_leaves) {
		this.total_leaves = total_leaves;
	}
	public int getLeaves_taken() {
		return leaves_taken;
	}
	public void setLeaves_taken(int leaves_taken) {
		this.leaves_taken = leaves_taken;
	}
	public Employess() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employess(int emp_id, String name, int total_leaves, int leaves_taken) {
		super();
		this.emp_id = emp_id;
		this.name = name;
		this.total_leaves = total_leaves;
		this.leaves_taken = leaves_taken;
	}
	
	
}
