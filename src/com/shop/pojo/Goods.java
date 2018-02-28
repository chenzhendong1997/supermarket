package com.shop.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;

/**
 * 
 * @author admin
 *
 */
public class Goods implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private BigInteger productid;
	private BigInteger productnumber;
	private String name;
	private BigDecimal showprice;
	private String introduce;
	public BigInteger getProductid() {
		return productid;
	}
	public void setProductid(BigInteger productid) {
		this.productid = productid;
	}
	public BigInteger getProductnumber() {
		return productnumber;
	}
	public void setProductnumber(BigInteger productnumber) {
		this.productnumber = productnumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getShowprice() {
		return showprice;
	}
	public void setShowprice(BigDecimal showprice) {
		this.showprice = showprice;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getPicimg() {
		return picimg;
	}
	public void setPicimg(String picimg) {
		this.picimg = picimg;
	}
	public String getPagetitle() {
		return pagetitle;
	}
	public void setPagetitle(String pagetitle) {
		this.pagetitle = pagetitle;
	}
	public String getPagedescription() {
		return pagedescription;
	}
	public void setPagedescription(String pagedescription) {
		this.pagedescription = pagedescription;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private String picimg;
	private String pagetitle;
	private String pagedescription;

}
