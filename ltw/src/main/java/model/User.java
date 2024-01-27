package model;

public class User {
    private int id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private String role;
    private int active;
    private int status;
    public User() {
    }


    public User(int id,String username, String password, String email, String phone, String role, int active, int status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.role = role;
        this.active = active;
        this.status = status;
    }

    public User(int id, String username, String email, String phone, String role, int active, int status) {
        this.id = id;
        this.active = active;
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.role = role;
        this.status = status;

    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}