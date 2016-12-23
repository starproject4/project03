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
	
	public MenuVo() {
		// TODO Auto-generated constructor stub
	}
	
	

	public MenuVo(int no, String title, String content, int kcal, int sodium,
			int fat, int saccharide, int protein, int caffeine,
			String originalfilename, String newfilename, Date nalja,
			String category) {
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

	@Override
	public String toString() {
		return "MenuVo [no=" + no + ", title=" + title + ", content=" + content
				+ ", kcal=" + kcal + ", sodium=" + sodium + ", fat=" + fat
				+ ", saccharide=" + saccharide + ", protein=" + protein
				+ ", caffeine=" + caffeine + ", originalfilename="
				+ originalfilename + ", newfilename=" + newfilename
				+ ", nalja=" + nalja + ", category=" + category + "]";
	}

	
	
}
