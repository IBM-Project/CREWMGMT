package com.admin.user.Model;

public class TrainModel {

	 private String name ;
	 private String email;
	 private String password;
	 private String status;
	 private String timings;
	 private String pic;
		
		public String getPic() {
			return pic;
		}
		public void setPic(String pic) {
			this.pic = pic;
		}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTimings() {
		return timings;
	}
	public void setTimings(String timings) {
		this.timings = timings;
	}

}
