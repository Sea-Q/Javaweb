package StudentPackage;

public class Student {
	private String sno;
	private String sname;
	private String sex;
	private String sclass;
	private double grade;
	public Student(String sno, String sname, String sex, String sclass, double grade) {
		super();
		this.sno = sno;
		this.sname = sname;
		this.sex = sex;
		this.sclass = sclass;
		this.grade = grade;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSclass() {
		return sclass;
	}
	public void setSclass(String sclass) {
		this.sclass = sclass;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "Student [sno=" + sno + ", sname=" + sname + ", sex=" + sex + ", sclass=" + sclass + ", grade=" + grade
				+ "]";
	}
	
}
