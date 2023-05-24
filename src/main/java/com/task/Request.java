package com.task;

public class Request {
	
	private int id;
	private int ServiceID;
	private int RequestID;
	private String Name;
	private String Email;
	private String DateofSanitization;
	private String TimeofSanitization;
	private String Address;
	private String MobileNumber;
	private String State;
	private String City;
	private String Message;
	private String RequestDate;
	private String Remark;
	private String Status;
	private String UpdationDate;
	
	public Request() {
		super();
	}
	
	public Request(int serviceID, int requestID, String name, String email, String dateofSanitization,
			String timeofSanitization, String address, String mobileNumber, String state, String city, String message,
			String remark, String status) {
		super();
		ServiceID = serviceID;
		RequestID = requestID;
		Name = name;
		Email = email;
		DateofSanitization = dateofSanitization;
		TimeofSanitization = timeofSanitization;
		Address = address;
		MobileNumber = mobileNumber;
		State = state;
		City = city;
		Message = message;
		Remark = remark;
		Status = status;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getServiceID() {
		return ServiceID;
	}
	public void setServiceID(int serviceID) {
		ServiceID = serviceID;
	}
	
	public int getRequestID() {
		return RequestID;
	}
	public void setRequestID(int requestID) {
		RequestID = requestID;
	}
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	public String getDateofSanitization() {
		return DateofSanitization;
	}
	public void setDateofSanitization(String dateofSanitization) {
		DateofSanitization = dateofSanitization;
	}
	
	public String getTimeofSanitization() {
		return TimeofSanitization;
	}
	public void setTimeofSanitization(String timeofSanitization) {
		TimeofSanitization = timeofSanitization;
	}
	
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	public String getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		MobileNumber = mobileNumber;
	}
	
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	
	public String getRequestDate() {
		return RequestDate;
	}
	public void setRequestDate(String requestDate) {
		RequestDate = requestDate;
	}
	
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
	public String getUpdationDate() {
		return UpdationDate;
	}
	public void setUpdationDate(String updationDate) {
		UpdationDate = updationDate;
	}
	
	@Override
	public String toString() {
		return "Request [id=" + id + ", ServiceID=" + ServiceID + ", RequestID=" + RequestID + ", Name=" + Name
				+ ", Email=" + Email + ", DateofSanitization=" + DateofSanitization + ", TimeofSanitization="
				+ TimeofSanitization + ", Address=" + Address + ", MobileNumber=" + MobileNumber + ", State=" + State
				+ ", City=" + City + ", Message=" + Message + ", RequestDate=" + RequestDate + ", Remark=" + Remark
				+ ", Status=" + Status + ", UpdationDate=" + UpdationDate + "]";
	}
}
