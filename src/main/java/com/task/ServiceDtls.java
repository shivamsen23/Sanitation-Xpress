package com.task;

public class ServiceDtls {
	
	private int id;
	private String ServiceName;
	private String Price;
	private String ServiceDetail;
	private String image;
	private String CreationDate;
	
	
	public ServiceDtls() {
		super();
	}
	
	
	public ServiceDtls(String serviceName, String price, String serviceDetail) {
		super();
		ServiceName = serviceName;
		Price = price;
		ServiceDetail = serviceDetail;		
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getServiceName() {
		return ServiceName;
	}
	public void setServiceName(String serviceName) {
		ServiceName = serviceName;
	}

	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	
	public String getServiceDetail() {
		return ServiceDetail;
	}
	public void setServiceDetail(String serviceDetail) {
		ServiceDetail = serviceDetail;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public String getCreationDate() {
		return CreationDate;
	}
	public void setCreationDate(String creationDate) {
		CreationDate = creationDate;
	}
	
		
	public int compareTo(ServiceDtls o) {
		return this.id>o.id ? -1 : 1;
	}
	
	@Override
	public String toString() {
		return "ServiceDtls [id=" + id + ", ServiceName=" + ServiceName + ", Price=" + Price + ", ServiceDetail="
				+ ServiceDetail + ", image=" + image + ", CreationDate=" + CreationDate + "]";
	}
}
