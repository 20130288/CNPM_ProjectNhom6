package vn.edu.hcmuaf.st.db;

import java.sql.*;

public class DBConnect {
    private String url = "jdbc:mysql://localhost:3306/webcookbook";
    private String user = "root";
    private String pass = "";
    public Connection connection;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    private static DBConnect install;

    public Connection getConnection() {
        return connection;
    }

    public DBConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(this.url, this.user, this.pass);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static DBConnect getInstall() {
        if (install == null) install = new DBConnect();
        return install;
    }

    public Statement get() {
        try {
            if (connection == null) return null;
            return connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        } catch (SQLException e) {
            return null;
        }
    }
}
