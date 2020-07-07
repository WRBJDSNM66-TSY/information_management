package Bean;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String accountNumber;
	private Integer password;
	private String role;
	private Integer gid;
	
	private Set graduates = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String accountNumber, Integer password, String role) {
		this.accountNumber = accountNumber;
		this.password = password;
		this.role = role;
	}

	/** full constructor */
	public User(String accountNumber, Integer password, String role, Integer gid, Set graduates) {
		this.accountNumber = accountNumber;
		this.password = password;
		this.role = role;
		this.gid = gid;
		this.graduates = graduates;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccountNumber() {
		return this.accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public Integer getPassword() {
		return this.password;
	}

	public void setPassword(Integer password) {
		this.password = password;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Set getGraduates() {
		return this.graduates;
	}

	public void setGraduates(Set graduates) {
		this.graduates = graduates;
	}

}