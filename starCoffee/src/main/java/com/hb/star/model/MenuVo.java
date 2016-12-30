package com.hb.star.model;

import java.sql.Date;

public class MenuVo {
	private int no;
	private String title;
	private String content;
	private int kcal;
	private int sodium;
	private int fat;
	private int saccharide;
	private int protein;
	private int caffeine;
	private String originalfilename;
	private String newfilename;	
	private Date nalja;
	private String category;
	private int price;
	
	public MenuVo() {
		// TODO Auto-generated constructor stub
	}
	
	public MenuVo(int no, String title, String content, int kcal, int sodium,
			int fat, int saccharide, int protein, int caffeine,
			String originalfilename, String newfilename, Date nalja,
			String category, int price) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.kcal = kcal;
		this.sodium = sodium;
		this.fat = fat;
		this.saccharide = saccharide;
		this.protein = protein;
		this.caffeine = caffeine;
		this.originalfilename = originalfilename;
		this.newfilename = newfilename;
		this.nalja = nalja;
		this.category = category;
		this.price = price;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getKcal() {
		return kcal;
	}

	public void setKcal(int kcal) {
		this.kcal = kcal;
	}

	public int getSodium() {
		return sodium;
	}

	public void setSodium(int sodium) {
		this.sodium = sodium;
	}

	public int getFat() {
		return fat;
	}

	public void setFat(int fat) {
		this.fat = fat;
	}

	public int getSaccharide() {
		return saccharide;
	}

	public void setSaccharide(int saccharide) {
		this.saccharide = saccharide;
	}

	public int getProtein() {
		return protein;
	}

	public void setProtein(int protein) {
		this.protein = protein;
	}

	public int getCaffeine() {
		return caffeine;
	}

	public void setCaffeine(int caffeine) {
		this.caffeine = caffeine;
	}

	public String getOriginalfilename() {
		return originalfilename;
	}

	public void setOriginalfilename(String originalfilename) {
		this.originalfilename = originalfilename;
	}

	public String getNewfilename() {
		return newfilename;
	}

	public void setNewfilename(String newfilename) {
		this.newfilename = newfilename;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "MenuVo [no=" + no + ", title=" + title + ", content=" + content
				+ ", kcal=" + kcal + ", sodium=" + sodium + ", fat=" + fat
				+ ", saccharide=" + saccharide + ", protein=" + protein
				+ ", caffeine=" + caffeine + ", originalfilename="
				+ originalfilename + ", newfilename=" + newfilename
				+ ", nalja=" + nalja + ", category=" + category + ", price="
				+ price + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + caffeine;
		result = prime * result
				+ ((category == null) ? 0 : category.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + fat;
		result = prime * result + kcal;
		result = prime * result + ((nalja == null) ? 0 : nalja.hashCode());
		result = prime * result
				+ ((newfilename == null) ? 0 : newfilename.hashCode());
		result = prime * result + no;
		result = prime
				* result
				+ ((originalfilename == null) ? 0 : originalfilename.hashCode());
		result = prime * result + price;
		result = prime * result + protein;
		result = prime * result + saccharide;
		result = prime * result + sodium;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
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
		MenuVo other = (MenuVo) obj;
		if (caffeine != other.caffeine)
			return false;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (fat != other.fat)
			return false;
		if (kcal != other.kcal)
			return false;
		if (nalja == null) {
			if (other.nalja != null)
				return false;
		} else if (!nalja.equals(other.nalja))
			return false;
		if (newfilename == null) {
			if (other.newfilename != null)
				return false;
		} else if (!newfilename.equals(other.newfilename))
			return false;
		if (no != other.no)
			return false;
		if (originalfilename == null) {
			if (other.originalfilename != null)
				return false;
		} else if (!originalfilename.equals(other.originalfilename))
			return false;
		if (price != other.price)
			return false;
		if (protein != other.protein)
			return false;
		if (saccharide != other.saccharide)
			return false;
		if (sodium != other.sodium)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}

	
}
