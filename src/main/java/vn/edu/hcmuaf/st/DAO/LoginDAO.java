package vn.edu.hcmuaf.st.DAO;

import vn.edu.hcmuaf.st.Entity.Account;
import vn.edu.hcmuaf.st.Entity.Recipe;
import vn.edu.hcmuaf.st.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDAO {
    public Account getAccount(String uname, String pass) {

        try {
            Statement statement = DBConnect.getInstall().get();
            String query = "SELECT id,username,`password`,fullname,role_id \n" +
                    "FROM users \n" +
                    "WHERE username = ? AND `password` = ?";
            PreparedStatement ps = new DBConnect().getConnection().prepareStatement(query);
            ps.setString(1, uname);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        new FavoriteDAO().getFavorites(rs.getInt(1)));
            }
        } catch (SQLException e) {

        }
        return null;
    }
}
