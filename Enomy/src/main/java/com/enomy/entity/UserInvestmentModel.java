package com.enomy.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table (name = "investment_savings")
public class UserInvestmentModel {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "investment_id")
	private long idInvestment;
	
	@Column (name = "investment_type", nullable = false)
	private String investmentType; 
	
	@Column (name = "investment_initiallumpsum", nullable = false)
	private int initialLumpSum;
	
	@Column (name = "investment_monthlyinvestments", nullable = false)
	private int monthlyInvestments;
	
	@Column (name = "investment_oneyeareturn")
	private double oneYearReturn;
	
	@Column (name = "investment_fiveyeareturn")
	private double fiveYearReturn;
	
	@Column (name = "investment_tenyeareturn")
	private double tenYearReturn;
	
	@Column (name = "user_id")
	private long userId;
	
    @Transient
    private double oneyeartotalprofit;
    
    @Transient
    private double fiveyeartotalprofit;
    
    @Transient
    private double tenyeartotalprofit;
    
    @Transient
    private double oneyeartotalfees;
    
    @Transient
    private double fiveyeartotalfees;
    
    @Transient
    private double tenyeartotalfees;
    
    @Transient
    private double oneyeartotaltaxes;
    
    @Transient
    private double fiveyeartotaltaxes;
    
    @Transient
    private double tenyeartotaltaxes;

    public void setUser(UserModel user) {
    	
    }

	public long getIdInvesment() {
		return idInvestment;
	}

	public void setIdInvesment(long idInvesment) {
		this.idInvestment = idInvesment;
	}

	public String getInvestmentType() {
		return investmentType;
	}

	public void setInvestmentType(String investmentType) {
		this.investmentType = investmentType;
	}

	public int getInitialLumpSum() {
		return initialLumpSum;
	}

	public void setInitialLumpSum(int initalLumpSum) {
		this.initialLumpSum = initalLumpSum;
	}

	public int getMonthlyInvestments() {
		return monthlyInvestments;
	}

	public void setMonthlyInvestments(int monthlyInvestments) {
		this.monthlyInvestments = monthlyInvestments;
	}

	public double getOneYearReturn() {
		return oneYearReturn;
	}

	public void setOneYearReturn(double oneYearReturn) {
		this.oneYearReturn = oneYearReturn;
	}

	public double getFiveYearReturn() {
		return fiveYearReturn;
	}

	public void setFiveYearReturn(double fiveYearReturn) {
		this.fiveYearReturn = fiveYearReturn;
	}

	public double getTenYearReturn() {
		return tenYearReturn;
	}

	public void setTenYearReturn(double tenYearReturn) {
		this.tenYearReturn = tenYearReturn;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public double getOneyeartotalprofit() {
		return oneyeartotalprofit;
	}

	public void setOneyeartotalprofit(double oneyeartotalprofit) {
		this.oneyeartotalprofit = oneyeartotalprofit;
	}

	public double getFiveyeartotalprofit() {
		return fiveyeartotalprofit;
	}

	public void setFiveyeartotalprofit(double fiveyeartotalprofit) {
		this.fiveyeartotalprofit = fiveyeartotalprofit;
	}

	public double getTenyeartotalprofit() {
		return tenyeartotalprofit;
	}

	public void setTenyeartotalprofit(double tenyeartotalprofit) {
		this.tenyeartotalprofit = tenyeartotalprofit;
	}

	public double getOneyeartotalfees() {
		return oneyeartotalfees;
	}

	public void setOneyeartotalfees(double oneyeartotalfees) {
		this.oneyeartotalfees = oneyeartotalfees;
	}

	public double getFiveyeartotalfees() {
		return fiveyeartotalfees;
	}

	public void setFiveyeartotalfees(double fiveyeartotalfees) {
		this.fiveyeartotalfees = fiveyeartotalfees;
	}

	public double getTenyeartotalfees() {
		return tenyeartotalfees;
	}

	public void setTenyeartotalfees(double tenyeartotalfees) {
		this.tenyeartotalfees = tenyeartotalfees;
	}

	public double getOneyeartotaltaxes() {
		return oneyeartotaltaxes;
	}

	public void setOneyeartotaltaxes(double oneyeartotaltaxes) {
		this.oneyeartotaltaxes = oneyeartotaltaxes;
	}

	public double getFiveyeartotaltaxes() {
		return fiveyeartotaltaxes;
	}

	public void setFiveyeartotaltaxes(double fiveyeartotaltaxes) {
		this.fiveyeartotaltaxes = fiveyeartotaltaxes;
	}

	public double getTenyeartotaltaxes() {
		return tenyeartotaltaxes;
	}

	public void setTenyeartotaltaxes(double tenyeartotaltaxes) {
		this.tenyeartotaltaxes = tenyeartotaltaxes;
	}
}
