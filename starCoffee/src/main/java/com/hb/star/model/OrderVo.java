package com.hb.star.model;

public class OrderVo {

	private int no;
	private String name;
	private int price;
	private String cupsize;
	private String ice;
	private int mypk;
	private String newfilename;	
	
	public OrderVo() {
		// TODO Auto-generated constructor stub
	}

	public OrderVo(int no, String name, int price, String cupsize, String ice,
			int mypk, String newfilename) {
		super();
		this.no = no;
		this.name = name;
		this.price = price;
		this.cupsize = cupsize;
		this.ice = ice;
		this.mypk = mypk;
		this.newfilename = newfilename;
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

	public String getCupsize() {
		return cupsize;
	}

	public void setCupsize(String cupsize) {
		this.cupsize = cupsize;
	}

	public String getIce() {
		return ice;
	}

	public void setIce(String ice) {
		this.ice = ice;
	}

	public int getMypk() {
		return mypk;
	}

	public void setMypk(int mypk) {
		this.mypk = mypk;
	}

	public String getNewfilename() {
		return newfilename;
	}

	public void setNewfilename(String newfilename) {
		this.newfilename = newfilename;
	}

	@Override
	public String toString() {
		return "OrderVo [no=" + no + ", name=" + name + ", price=" + price
				+ ", cupsize=" + cupsize + ", ice=" + ice + ", mypk=" + mypk
				+ ", newfilename=" + newfilename + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cupsize == null) ? 0 : cupsize.hashCode());
		result = prime * result + ((ice == null) ? 0 : ice.hashCode());
		result = prime * result + mypk;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result
				+ ((newfilename == null) ? 0 : newfilename.hashCode());
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
		OrderVo other = (OrderVo) obj;
		if (cupsize == null) {
			if (other.cupsize != null)
				return false;
		} else if (!cupsize.equals(other.cupsize))
			return false;
		if (ice == null) {
			if (other.ice != null)
				return false;
		} else if (!ice.equals(other.ice))
			return false;
		if (mypk != other.mypk)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (newfilename == null) {
			if (other.newfilename != null)
				return false;
		} else if (!newfilename.equals(other.newfilename))
			return false;
		if (no != other.no)
			return false;
		if (price != other.price)
			return false;
		return true;
	}


}
