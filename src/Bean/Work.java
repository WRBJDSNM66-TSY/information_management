package Bean;


/**
 * Work entity. @author MyEclipse Persistence Tools
 */

public class Work implements java.io.Serializable {

	// Fields

	private Integer gid;
	private Graduate graduate;
	private String employmentTime;
	private String workPlace;
	private String workNature;
	private String duty;
	private String address;

	// Constructors

	/** default constructor */
	public Work() {
	}

	/** minimal constructor */
	public Work(Graduate graduate) {
		this.graduate = graduate;
	}

	/** full constructor */
	public Work(Graduate graduate, String employmentTime, String workPlace, String workNature, String duty,
			String address) {
		this.graduate = graduate;
		this.employmentTime = employmentTime;
		this.workPlace = workPlace;
		this.workNature = workNature;
		this.duty = duty;
		this.address = address;
	}

	// Property accessors

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Graduate getGraduate() {
		return this.graduate;
	}

	public void setGraduate(Graduate graduate) {
		this.graduate = graduate;
	}



	public String getEmploymentTime() {
		return employmentTime;
	}

	public void setEmploymentTime(String employmentTime) {
		this.employmentTime = employmentTime;
	}

	public String getWorkPlace() {
		return this.workPlace;
	}

	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}

	public String getWorkNature() {
		return this.workNature;
	}

	public void setWorkNature(String workNature) {
		this.workNature = workNature;
	}

	public String getDuty() {
		return this.duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}