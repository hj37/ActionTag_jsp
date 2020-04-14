package sec01.ex02;

import java.sql.Date;

public class MemberBean {
	private int number;//기본숫자1을 저장 
	
	private Integer num; //<-- 1이 오토박싱되어 new Integer("1");
//										//박싱
	private String id, pwd, name, email;
	private Date joinDate;
	
	//회원의 주소를 저장하는 Address클래스 타입의 변수 선언 
	private Address addr;
	
	public MemberBean() {}

	public MemberBean(int number, Integer num, String id, String pwd, String name, String email, Date joinDate,
			Address addr) {
		super();
		this.number = number;
		this.num = num;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.joinDate = joinDate;
		this.addr = addr;
	}
	
}
