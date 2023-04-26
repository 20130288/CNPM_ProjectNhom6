package vn.edu.hcmuaf.st.Entity;

import java.util.List;

public class Account {
    private int id;
    private String uname, pass, fullname;
    private int role;
    private List<Recipe> favorite;

    public Account() {
    }

    public Account(int id, String uname, String pass, String fullname, int role, List<Recipe> favorite) {
        this.id = id;
        this.uname = uname;
        this.pass = pass;
        this.fullname = fullname;
        this.role = role;
        this.favorite = favorite;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public List<Recipe> getFavorite() {
        return favorite;
    }

    public void setFavorite(List<Recipe> favorite) {
        this.favorite = favorite;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", uname='" + uname + '\'' +
                ", pass='" + pass + '\'' +
                ", fullname='" + fullname + '\'' +
                ", role=" + role +
                ", favorite=" + favorite +
                '}';
    }
}
