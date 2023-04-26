package vn.edu.hcmuaf.st.DAO;

import vn.edu.hcmuaf.st.Entity.Recipe;
import vn.edu.hcmuaf.st.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HomeDAO {
    public List<Recipe> getNewest() {
        List<Recipe> result = new ArrayList<>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                String query = "SELECT id,category_id,`name`,description,thumbnail,number_people,`time`,level_id,created_at,created_by,introduce \n" +
                        "FROM recipes \n" +
                        "ORDER BY created_at DESC\n" +
                        "LIMIT 4";
                PreparedStatement ps = new DBConnect().getConnection().prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Recipe recipe = new Recipe(
                            rs.getInt(1),
                            rs.getInt(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getInt(7),
                            rs.getInt(8),
                            rs.getString(9),
                            rs.getString(10),
                            rs.getString(11));
                    result.add(recipe);
                }
            }
        } catch (SQLException e) {

        }
        return result;
    }
}
