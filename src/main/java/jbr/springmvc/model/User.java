package jbr.springmvc.model;

public class User {
    private String firstname;
    private String lastname;
    private long phonenumber;
    private String password;

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public long getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(long phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}