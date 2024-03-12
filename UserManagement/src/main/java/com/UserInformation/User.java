package com.UserInformation;

public class User {
	private String userId;
	private String name;
	private String nic;
	private String email;
	private String phone;
	private String gender;
	private String Password;
	private String uCategory;
	
	public User(String userId, String name, String nic, String email, String phone, String gender, String password, String uCategory) {
		this.userId = userId;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		Password = password;
		this.uCategory = uCategory;
	}

	public String getUserId() {
		return userId;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getGender() {
		return gender;
	}

	public String getPassword() {
		return Password;
	}

	public String getuCategory() {
		return uCategory;
	}


}
