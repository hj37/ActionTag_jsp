package sec01.ex02;

//회원의 거주 도시와 우편번호정보를 저장하는 자식 클래스 Address
public class Address {
	//회원의 거주 도시와 우편번호를 저장하기 위해 속성(변수) 선언 
	private String city;
	private String zipcode;
	
	
	public Address() {} 
	
	
	//getter 메소드, setter메소드 각각 선언
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
}
