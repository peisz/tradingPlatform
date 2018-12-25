package servlet;

import bean.Member;
import dao.MemberDao;
import dao.MemberDaoImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet",urlPatterns = "/Login")
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String phone_number = request.getParameter("phone_number");
        String password = request.getParameter("password");

        MemberDao memberDao = new MemberDaoImpl();
        Member member = null;

        try {
            member = memberDao.getMember(phone_number,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(member!=null){
            response.sendRedirect("index.jsp");
        }
        else {
            response.sendRedirect("login.jsp");
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        doPost(request,response);
    }
}
