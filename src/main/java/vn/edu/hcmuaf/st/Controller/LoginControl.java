package vn.edu.hcmuaf.st.Controller;

import vn.edu.hcmuaf.st.DAO.LoginDAO;
import vn.edu.hcmuaf.st.Entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loginControl", value = "/loginControl")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String message = "";
        LoginDAO loginDAO = new LoginDAO();
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        Account account = loginDAO.getAccount(uname, pass);
        if (account != null) {
            session.setAttribute("acc", account);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            message = "Sai tên đăng nhập hoặc mật khẩu";
            request.setAttribute("message", message);
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }
    }
}
