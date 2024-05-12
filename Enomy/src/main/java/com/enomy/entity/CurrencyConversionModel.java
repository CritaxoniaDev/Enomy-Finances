package com.enomy.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name = "currency_conversion")
public class CurrencyConversionModel {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "idcurrency_transaction")
	private Long transactionId;
	
	@Column (name = "currency_convertedamount")
	private double convertedAmount;
	
	@Column (name = "currency_tocurrency")
	private String toCurrency;
	
	@Column (name = "currency_fromcurrency")
	private String fromCurrency;
	
	@Column (name = "currency_tax")
	private double fee;
	
	@Column (name = "currency_finalamount")
	private double finalAmount;
	
	@ManyToOne
	@JoinColumn (name = "user_id", referencedColumnName = "contact_id")
	private UserModel user;

	public void setUser(UserModel user) {
        this.user = user;
    }
	
	public CurrencyConversionModel(Long transactionId, double convertedAmount, String toCurrency, String fromCurrency,
			double fee, double finalAmount, UserModel user) {
		this.transactionId = transactionId;
		this.convertedAmount = convertedAmount;
		this.toCurrency = toCurrency;
		this.fromCurrency = fromCurrency;
		this.fee = fee;
		this.finalAmount = finalAmount;
		this.user = user;
	}

	public CurrencyConversionModel() {}

	public Long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(Long transactionId) {
		this.transactionId = transactionId;
	}

	public double getConvertedAmount() {
		return convertedAmount;
	}

	public void setConvertedAmount(double convertedAmount) {
		this.convertedAmount = convertedAmount;
	}

	public String getToCurrency() {
		return toCurrency;
	}

	public void setToCurrency(String toCurrency) {
		this.toCurrency = toCurrency;
	}

	public String getFromCurrency() {
		return fromCurrency;
	}

	public void setFromCurrency(String fromCurrency) {
		this.fromCurrency = fromCurrency;
	}

	public double getFee() {
		return fee;
	}

	public void setFee(double fee) {
		this.fee = fee;
	}

	public double getFinalAmount() {
		return finalAmount;
	}

	public void setFinalAmount(double finalAmount) {
		this.finalAmount = finalAmount;
	}
}
