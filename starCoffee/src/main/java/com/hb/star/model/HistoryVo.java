package com.hb.star.model;

import java.sql.Date;

public class HistoryVo {

	private int no;
	private String name;
	private int price;	
	private Date nalja;
	
	public HistoryVo() {
		// TODO Auto-generated constructor stub
	}

	public HistoryVo(int no, String name, int price, Date nalja) {
		super();
		this.no = no;
		this.name = name;
		this.price = price;
		this.nalja = nalja;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	@Override
	public String toString() {
		return "HistoryVo [no=" + no + ", name=" + name + ", price=" + price
				+ ", nalja=" + nalja + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nalja == null) ? 0 : nalja.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + no;
		result = prime * result + price;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HistoryVo other = (HistoryVo) obj;
		if (nalja == null) {
			if (other.nalja != null)
				return false;
		} else if (!nalja.equals(other.nalja))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (no != other.no)
			return false;
		if (price != other.price)
			return false;
		return true;
	}
	
}
