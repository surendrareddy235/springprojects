package spring7;

public class Reservation {
    public String firstname;
    public String lastname;
    public String gender;
    public String[] food;
    
    public Reservation() {
    	
    }

	public String getFirstname() {
		return firstname;
	}

	public void setFirsrname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String[] getFood() {
		return food;
	}

	public void setFood(String[] food) {
		this.food = food;
	}
    
}
