package sec01.ex02;

import java.sql.Date;

public class MemberBean {
	private int number;//기본숫자1을 저장 
	
	private Integer num; <-- new Integer("1");
	
	private String id, pwd, name, email;
	private Date joinDate;
	
	//회원의 주소를 저장하는 Address클래스 타입의 변수 선언 
	private Address addr;
	
}
