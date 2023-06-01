package bbs;

public class Bbs {
	private int BID;
	private String BTitle;
	private String userID;
	private String BDate;
	private String BCtnt;
	private int BAvailable;
	
	public int getBID() {
		return BID;
	}
	public void setBID(int bID) {
		BID = bID;
	}
	public String getBTitle() {
		return BTitle;
	}
	public void setBTitle(String bTitle) {
		BTitle = bTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBDate() {
		return BDate;
	}
	public void setBDate(String bDate) {
		BDate = bDate;
	}
	public String getBCtnt() {
		return BCtnt;
	}
	public void setBCtnt(String bCtnt) {
		BCtnt = bCtnt;
	}
	public int getBAvailable() {
		return BAvailable;
	}
	public void setBAvailable(int bAvailable) {
		BAvailable = bAvailable;
	}
	
	
}
