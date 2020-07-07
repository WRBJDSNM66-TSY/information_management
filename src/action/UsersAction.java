package action;

import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.mysql.cj.protocol.Message;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Bean.Work;
import Bean.Graduate;
import Bean.User;

public class UsersAction extends ActionSupport{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private User user;
	private String account_number;
	private String password1;
	private String role;
	
	private String accountNumber;
	private Integer password;
	
	private Integer id;
	private String accountNumber0;
	private Integer password0;
	private String role0;
	private Integer gid0;
	
	private Integer id6;
	private String accountNumber6;
	private Integer password6;
	private String role6;
	private Integer gid6;
	
	private Graduate graduate;
	private Integer gid;
	private String gname;
	private String gsex;
	private String nation;
	private String nativePlace;
	private String graduationTime;
	private String major;
	private String politicalOutlook;
	
	private Work work;
	private Integer gid2;
	private String employmentTime;
	private String workPlace;
	private String workNature;
	private String duty;
	private String address;
	

	
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	
	public void setPassword(Integer password) {
		this.password = password;
	}
	
	public Integer getPassword() {
		return password;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	

	public String getAccountNumber0() {
		return accountNumber0;
	}
	public void setAccountNumber0(String accountNumber0) {
		this.accountNumber0 = accountNumber0;
	}
	public Integer getPassword0() {
		return password0;
	}
	public void setPassword0(Integer password0) {
		this.password0 = password0;
	}
	public String getRole0() {
		return role0;
	}
	public void setRole0(String role0) {
		this.role0 = role0;
	}
	
	
	
	public Integer getGid0() {
		return gid0;
	}
	public void setGid0(Integer gid0) {
		this.gid0 = gid0;
	}
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}   
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	 public Graduate getGraduate() {
		return graduate;
	}
	public void setGraduate(Graduate graduate) {
		this.graduate = graduate;
	}
	 public Work getWork() {
		return work;
	}
	public void setWork(Work work) {
		this.work = work;
	}



	public Integer getId6() {
		return id6;
	}
	public void setId6(Integer id6) {
		this.id6 = id6;
	}
	
	
	public String getAccountNumber6() {
		return accountNumber6;
	}
	public void setAccountNumber6(String accountNumber6) {
		this.accountNumber6 = accountNumber6;
	}
	public Integer getPassword6() {
		return password6;
	}
	public void setPassword6(Integer password6) {
		this.password6 = password6;
	}
	public String getRole6() {
		return role6;
	}
	public void setRole6(String role6) {
		this.role6 = role6;
	}

	public Integer getGid6() {
		return gid6;
	}
	public void setGid6(Integer gid6) {
		this.gid6 = gid6;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGsex() {
		return gsex;
	}
	public void setGsex(String gsex) {
		this.gsex = gsex;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getNativePlace() {
		return nativePlace;
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
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPoliticalOutlook() {
		return politicalOutlook;
	}
	public void setPoliticalOutlook(String politicalOutlook) {
		this.politicalOutlook = politicalOutlook;
	}
	public Integer getGid2() {
		return gid2;
	}
	public void setGid2(Integer gid2) {
		this.gid2 = gid2;
	}
	
	public String getEmploymentTime() {
		return employmentTime;
	}
	public void setEmploymentTime(String employmentTime) {
		this.employmentTime = employmentTime;
	}
	public String getWorkPlace() {
		return workPlace;
	}
	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}
	public String getWorkNature() {
		return workNature;
	}
	public void setWorkNature(String workNature) {
		this.workNature = workNature;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}




	 ActionContext ctx = ActionContext.getContext();
	 Configuration conf = new Configuration().configure();				
     ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
     SessionFactory sf = conf.buildSessionFactory(serviceRegistry);
	 Session sess = sf.openSession();
	 Transaction tx = sess.beginTransaction();
		
	  String hql="select u.accountNumber,u.password,u.role,u.gid from User as u";
	  Query query=sess.createQuery(hql);
	  List list=query.getResultList();
	  Iterator iterator=list.iterator();
	  
//登录     
public String execute() {
  
	  while(iterator.hasNext()){
	     Object[] object=(Object[])iterator.next();
	     System.out.println(object[0]+"、"+object[1]+"、"+object[2]+"、"+object[3]);
//学生	     
    if (account_number.equals(object[0].toString()) && password1.equals(object[1].toString()) && role.equals(object[2].toString()) && role.equals("student"))  	
    {   
    	String hql3="from Graduate g where g.gid="+object[3];
		Query query3=sess.createQuery(hql3);
		List list3=query3.getResultList();		
		ServletActionContext.getRequest().setAttribute("list3", list3);
				
		String hql4="from Work w where w.gid="+object[3];
		Query query4=sess.createQuery(hql4);
		List list4=query4.getResultList();		
		ServletActionContext.getRequest().setAttribute("list4", list4);
		
		ServletActionContext.getRequest().setAttribute("account_number", account_number);
		ServletActionContext.getRequest().setAttribute("password", password);
		
    	return "success";
    
//管理员    
	  }else if (account_number.equals(object[0].toString()) && password1.equals(object[1].toString()) && role.equals(object[2].toString()) && role.equals("admin"))
	{	
	    String hql0="from User u where role='student'";
	    Query query0=sess.createQuery(hql0);
	    List list0=query0.getResultList();		
	    ServletActionContext.getRequest().setAttribute("list0", list0);
		  
		String hql="from Graduate g";
		Query query=sess.createQuery(hql);
		List list=query.getResultList();		
		ServletActionContext.getRequest().setAttribute("list", list);
				
		String hql2="from Work w";
		Query query2=sess.createQuery(hql2);
		List list2=query2.getResultList();		
		ServletActionContext.getRequest().setAttribute("list2", list2);
		
		ServletActionContext.getRequest().setAttribute("account_number", account_number);
		return "fail";
	}   
  }
	return "index";	
}

//修改登录密码
   public String AlterPwd() throws Exception{	   
	  
	   /*System.out.println(accountNumber);
	   System.out.println(password);*/
	   
	   String hql="update User set password="+password+" where account_number="+accountNumber+" ";
	   Query query=sess.createQuery(hql);
	   
	   query.executeUpdate();
       tx.commit();      
	   
	return "AlterPwdSuccess";
}
   
 //修改用户基本信息
   public String alterUser() throws Exception{
	   
	   String hql="update User set accountNumber="+accountNumber0+",password="+password0+",role='"+role0+"',gid="+gid0+" where id="+id+"";
	   Query query=sess.createQuery(hql);
	     
	   query.executeUpdate();
       tx.commit();
       
        String hql0="from User u where role='student'";
	    Query query0=sess.createQuery(hql0);
	    List list0=query0.getResultList();		
	    ServletActionContext.getRequest().setAttribute("list0", list0);
		  
		String hql1="from Graduate g";
		Query query1=sess.createQuery(hql1);
		List list=query1.getResultList();		
		ServletActionContext.getRequest().setAttribute("list", list);
				
		String hql2="from Work w";
		Query query2=sess.createQuery(hql2);
		List list2=query2.getResultList();		
		ServletActionContext.getRequest().setAttribute("list2", list2);
	   	   
	return "alterSuccess";	   
   }
 
 //增加用户信息
   public String addUser() throws Exception{
	   
	   User user=new User();
	   user.setId(id6);
	   user.setAccountNumber(accountNumber6);
	   user.setPassword(password6);
	   user.setRole(role6);
	   user.setGid(gid6);
	     
	   sess.save(user);
	   tx.commit();
	  
	   String hql0="from User u where role='student'";
	    Query query0=sess.createQuery(hql0);
	    List list0=query0.getResultList();		
	    ServletActionContext.getRequest().setAttribute("list0", list0);
		  
		String hql1="from Graduate g";
		Query query1=sess.createQuery(hql1);
		List list=query1.getResultList();		
		ServletActionContext.getRequest().setAttribute("list", list);
				
		String hql2="from Work w";
		Query query2=sess.createQuery(hql2);
		List list2=query2.getResultList();		
		ServletActionContext.getRequest().setAttribute("list2", list2);
	   
	return "addSuccess";
	   }
   
 //删除用户信息
   public String deleteUser() throws Exception{

   User user=(User)sess.get(User.class, id);
   
   sess.delete(user);
   tx.commit();
   
   String hql0="from User u where role='student'";
   Query query0=sess.createQuery(hql0);
   List list0=query0.getResultList();		
   ServletActionContext.getRequest().setAttribute("list0", list0);
	  
	String hql1="from Graduate g";
	Query query1=sess.createQuery(hql1);
	List list=query1.getResultList();		
	ServletActionContext.getRequest().setAttribute("list", list);
			
	String hql2="from Work w";
	Query query2=sess.createQuery(hql2);
	List list2=query2.getResultList();		
	ServletActionContext.getRequest().setAttribute("list2", list2);
   
   return "deleteSuccess";
	   
   }
   
   
//修改毕业生基本信息
   public String alterGraduate() throws Exception{
	   
	   String hql="update Graduate set gname='"+gname+"',gsex='"+gsex+"',nation='"+nation+"',nativePlace='"+nativePlace+"',graduationTime='"+graduationTime+"',major='"+major+"',politicalOutlook='"+politicalOutlook+"' where gid="+gid+"";
	   Query query=sess.createQuery(hql);	   
	   
	   query.executeUpdate();
       tx.commit();
	   	   
       String hql0="from User u where role='student'";
	    Query query0=sess.createQuery(hql0);
	    List list0=query0.getResultList();		
	    ServletActionContext.getRequest().setAttribute("list0", list0);
		  
		String hql1="from Graduate g";
		Query query1=sess.createQuery(hql1);
		List list=query1.getResultList();		
		ServletActionContext.getRequest().setAttribute("list", list);
				
		String hql2="from Work w";
		Query query2=sess.createQuery(hql2);
		List list2=query2.getResultList();		
		ServletActionContext.getRequest().setAttribute("list2", list2);
       
	return "alterSuccess";	   
   }
   
//修改毕业生就业信息  
   public String alterWork() throws Exception{
	   
	   String hql="update Work set employmentTime='"+employmentTime+"',workPlace='"+workPlace+"',workNature='"+workNature+"',duty='"+duty+"',address='"+address+"' where gid="+gid2+"";
	   Query query=sess.createQuery(hql);	   
	   
	   query.executeUpdate();   
	   tx.commit();
	   
	   String hql0="from User u where role='student'";
	    Query query0=sess.createQuery(hql0);
	    List list0=query0.getResultList();		
	    ServletActionContext.getRequest().setAttribute("list0", list0);
		  
		String hql1="from Graduate g";
		Query query1=sess.createQuery(hql1);
		List list=query1.getResultList();		
		ServletActionContext.getRequest().setAttribute("list", list);
				
		String hql2="from Work w";
		Query query2=sess.createQuery(hql2);
		List list2=query2.getResultList();		
		ServletActionContext.getRequest().setAttribute("list2", list2);
	   
	return "alterSuccess";
	   
   }
   
 //查询
    public String Search() throws Exception{
	   	   
	  //String hql="select g.gname,g.major from Graduate g group by g.major";
      String hql="from Graduate g order by major";
	  Query query=sess.createQuery(hql);
	  List list6=query.getResultList();
	  ServletActionContext.getRequest().setAttribute("list6", list6);
	  
	  /*Iterator iterator=list6.iterator();
	  while(iterator.hasNext()){
	     Object[] object=(Object[])iterator.next();
	     System.out.println(object[0]+"、"+object[1]);
	  
	  List list=query.getResultList();
	      	
	  }*/

	  return "SearchSuccess";
   }
   

 //增加毕业生基本信息
   public String addGraduate() throws Exception{
	   
	   Graduate graduate=new Graduate();
	   
	   graduate.setGid(gid);
	   graduate.setGname(gname);
	   graduate.setGsex(gsex);
	   graduate.setNation(nation);
	   graduate.setNativePlace(nativePlace);
	   graduate.setGraduationTime(graduationTime);
	   graduate.setMajor(major);
	   graduate.setPoliticalOutlook(politicalOutlook);
	  	
	   sess.save(graduate);
	   tx.commit();
	  
	   
	    String hql0="from User u where role='student'";
	    Query query0=sess.createQuery(hql0);
	    List list0=query0.getResultList();		
	    ServletActionContext.getRequest().setAttribute("list0", list0);
		  
		String hql1="from Graduate g";
		Query query1=sess.createQuery(hql1);
		List list=query1.getResultList();		
		ServletActionContext.getRequest().setAttribute("list", list);
				
		String hql2="from Work w";
		Query query2=sess.createQuery(hql2);
		List list2=query2.getResultList();		
		ServletActionContext.getRequest().setAttribute("list2", list2);
	     
	return "addSuccess";
	   }
   
 //增加毕业生就业信息
   public String addWork() throws Exception{
	   
	   Work work=new Work();
	   
	   work.setGid(gid2);
       work.setEmploymentTime(employmentTime);
       work.setWorkPlace(workPlace);
       work.setWorkNature(workNature);
       work.setDuty(duty);
       work.setAddress(address);
       
       sess.save(work);
	   tx.commit();
       
        String hql0="from User u where role='student'";
	    Query query0=sess.createQuery(hql0);
	    List list0=query0.getResultList();		
	    ServletActionContext.getRequest().setAttribute("list0", list0);
		  
		String hql1="from Graduate g";
		Query query1=sess.createQuery(hql1);
		List list=query1.getResultList();		
		ServletActionContext.getRequest().setAttribute("list", list);
				
		String hql2="from Work w";
		Query query2=sess.createQuery(hql2);
		List list2=query2.getResultList();		
		ServletActionContext.getRequest().setAttribute("list2", list2);            
	  
	   		   
	 return "addSuccess";
	   }
   
}