package user;

public class UserDTO {
	private String name;
	private String pw;
	private String email;

	//Defalut ������
		public UserDTO() {}
	
		// ����� ���� ������
		public UserDTO(String name, String pw, String email) {
			this.name = name;
			this.pw = pw;
			this.email = email;
		}
		public UserDTO(String name, String email) {
			this.name = name;
			this.email = email;
			
		}
		
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return String.format("UserDTO:[email:%S,name:%S, pw:%S]", email, name, pw);
	}
	}
	


