package com.kh.univ.member.model.vo;

public class Image 
{
	private int imageNo;
	private int stdId;
	private int profId;
	private String originalImageName;
	private String renameImageName;
	
	public Image() {}
	
	public Image(int imageNo, int stdId, int profId, String originalImageName, String renameImageName) 
	{
		super();
		this.imageNo = imageNo;
		this.stdId = stdId;
		this.profId = profId;
		this.originalImageName = originalImageName;
		this.renameImageName = renameImageName;
	}
	
	public int getImageNo() {
		return imageNo;
	}
	public void setImageNo(int imageNo) {
		this.imageNo = imageNo;
	}
	public int getStdId() {
		return stdId;
	}
	public void setStdId(int stdId) {
		this.stdId = stdId;
	}
	public int getProfId() {
		return profId;
	}
	public void setProfId(int profId) {
		this.profId = profId;
	}
	public String getOriginalImageName() {
		return originalImageName;
	}
	public void setOriginalImageName(String originalImageName) {
		this.originalImageName = originalImageName;
	}
	public String getRenameImageName() {
		return renameImageName;
	}
	public void setRenameImageName(String renameImageName) {
		this.renameImageName = renameImageName;
	}
	
	@Override
	public String toString() 
	{
		return "imageNo=" + imageNo + ", stdId=" + stdId + ", profId=" + profId + ", originalImageName=" + originalImageName + ", renameImageName=" + renameImageName;
	}
}