package Bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Graduate entity. @author MyEclipse Persistence Tools
 */

public class Graduate implements java.io.Serializable {

	// Fields

	private Integer gid;
	private User user;
	private String gname;
	private String gsex;
	private String nation;
	private String nativePlace;
	private String graduationTime;
	private String major;
	private String politicalOutlook;
	
	private Set works = new HashSet(0);

	// Constructors

	/** default constructor */
	public Graduate() {
	}

	/** minimal constructor */
	public Graduate(User user) {
		this.user = user;
	}

	/** full constructor */
	public Graduate(User user, String gname, String gsex, String nation, String nativePlace, String graduationTime,
			String major, String politicalOutlook, Set works) {
		this.user = user;
		this.gname = gname;
		this.gsex = gsex;
		this.nation = nation;
		this.nativePlace = nativePlace;
		this.graduationTime = graduationTime;
		this.major = major;
		this.politicalOutlook = politicalOutlook;
		this.works = works;
	}

	// Property accessors

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getGname() {
		return this.gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getGsex() {
		return this.gsex;
	}

	public void setGsex(String gsex) {
		this.gsex = gsex;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getNativePlace() {
		return this.nativePlace;
	}

	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}

	

	public String getGraduationTime() {
		return graduationTime;
	}

	public void setGraduationTime(String graduationTime) {
		this.graduationTime = graduationTime;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getPoliticalOutlook() {
		return this.politicalOutlook;
	}

	public void setPoliticalOutlook(String politicalOutlook) {
		this.politicalOutlook = politicalOutlook;
	}

	public Set getWorks() {
		return this.works;
	}

	public void setWorks(Set works) {
		this.works = works;
	}

}