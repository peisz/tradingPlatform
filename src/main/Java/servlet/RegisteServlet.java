package servlet;

import bean.Member;
import dao.MemberDao;
import dao.MemberDaoImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "RegisteServlet",urlPatterns = "/Registe.do")
public class RegisteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String stuID = request.getParameter("stuID");
        String stuName = request.getParameter("stuName");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phoneNumber");

        MemberDao memberDao = new MemberDaoImpl();
        Member member = new Member();
        member.setMember_id(stuID);
        member.setMember_name(stuName);
        member.setMember_password(password);
        member.setPhone_number(phoneNumber);
        member.setMember_nickname(stuName);

        boolean flag = false;
        Member member1 = null;

        try {
            member1 = memberDao.getMember(phoneNumber);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (member1!=null){
            request.setAttribute("loginName","用户已注册");
            request.getRequestDispatcher("registeError.jsp").forward(request,response);
            return;
        }

        try {
            flag = memberDao.addMember(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (flag){
            request.setAttribute("loginName",stuName);
            request.getRequestDispatcher("registeSuccess.jsp").forward(request,response);
        }else {
            request.setAttribute("loginName","注册失败，请重新注册");
            request.getRequestDispatcher("registeError.jsp").forward(request,response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
