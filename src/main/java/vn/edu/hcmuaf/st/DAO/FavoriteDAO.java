package vn.edu.hcmuaf.st.DAO;

import vn.edu.hcmuaf.st.Entity.Recipe;
import vn.edu.hcmuaf.st.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FavoriteDAO {
    public List<Recipe> getFavorites(int userId) {
        List<Recipe> result = new ArrayList<>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                String query = "SELECT recipes.id,category_id,`name`,description,thumbnail,number_people,`time`,level_id,created_at,created_by,introduce\n" +
                        "FROM recipes JOIN favorites \n" +
                        "ON favorites.recipe_id = recipes.id \n" +
                        "WHERE favorites.user_id = ?";
                PreparedStatement ps = new DBConnect().getConnection().prepareStatement(query);
                ps.setInt(1, userId);
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
                rs.close();
                ps.close();
                statement.close();
            }

        } catch (SQLException e) {

        }
        return result;
    }
}
