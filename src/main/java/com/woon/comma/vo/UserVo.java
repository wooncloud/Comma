package com.woon.comma.vo;

import java.io.Serializable;

public class UserVo implements Serializable {

	private static final long serialVersionUID = 7069956429785728540L;
	private String id;
	private String password;
	private String name;
	private String address;
	private String phone;
	private String recv_phone;
	private String email;
	private String recv_email;
	private String birth;
	private String regdate;
	private String auth;
	private String delflag;

	public UserVo() {
	}

	public UserVo(String id, String password, String name, String address, String phone, String recv_phone,
			String email, String recv_email, String birth) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.recv_phone = recv_phone;
		this.email = email;
		this.recv_email = recv_email;
		this.birth = birth;
		this.regdate = null;
		this.auth = "U";
		this.delflag = "N";
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", password=" + password + ", name=" + name + ", address=" + address + ", phone="
				+ phone + ", recv_phone=" + recv_phone + ", email=" + email + ", recv_email=" + recv_email + ", barth="
				+ birth + ", regdate=" + regdate + ", auth=" + auth + ", delflag=" + delflag + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRecv_phone() {
		return recv_phone;
	}

	public void setRecv_phone(String recv_phone) {
		this.recv_phone = recv_phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRecv_email() {
		return recv_email;
	}

	public void setRecv_email(String recv_email) {
		this.recv_email = recv_email;
	}

	public String getBarth() {
		return birth;
	}

	public void setBarth(String barth) {
		this.birth = barth;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}

}
