package com.home.ho.Member.model.vo;

public class Member {

	private String name;		// 이름
	private int age;			// 나이
	private String gender;		// 성별
	private String test;		// 고시 종류
	private String subject;		// 과목
	private String day;			// 수강 날자
	private String time;		// 수강 시간
	private String help;		// 도우미 여부
	private String help_gender; // 도우미 성별
	private String location;	// 원하는 지역
	private String teacher;		// 담당 선생님
	private String message;		// 메세지
	
	
	public Member() {
		super();
	}

	public Member(String name, int age, String gender, String test, String subject, String day, String time,
			String help, String help_gender, String location, String teacher, String message) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.test = test;
		this.subject = subject;
		this.day = day;
		this.time = time;
		this.help = help;
		this.help_gender = help_gender;
		this.location = location;
		this.teacher = teacher;
		this.message = message;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getTest() {
		return test;
	}


	public void setTest(String test) {
		this.test = test;
	}


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getHelp() {
		return help;
	}


	public void setHelp(String help) {
		this.help = help;
	}


	public String getHelp_gender() {
		return help_gender;
	}


	public void setHelp_gender(String help_gender) {
		this.help_gender = help_gender;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getTeacher() {
		return teacher;
	}


	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	@Override
	public String toString() {
		return "Member [name=" + name + ", age=" + age + ", gender=" + gender + ", test=" + test + ", subject="
				+ subject + ", day=" + day + ", time=" + time + ", help=" + help + ", help_gender=" + help_gender
				+ ", location=" + location + ", teacher=" + teacher + ", message=" + message + "]";
	}
	
	
}




