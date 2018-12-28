package servlet;


import bean.Member;
import dao.MemberDao;
import dao.MemberDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "MemberInfoServlet",urlPatterns = "/MemberInfo.do")
public class MemberInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String nickname = request.getParameter("nickname");
        String gender = request.getParameter("gender");
        String age = request.getParameter("age") ;
        String email = request.getParameter("email") ;
        String profile = request.getParameter("profile") ;

        HttpSession session = request.getSession();
        Member member = (Member) session.getAttribute("user");

        member.setMember_nickname(nickname);
        member.setMember_gender(gender);
        member.setMember_age(age);
        member.setMember_email(email);
        member.setMember_profile(profile);

        MemberDao memberDao = new MemberDaoImpl();

        boolean flag = false;

        try {
            flag = memberDao.updateMemberInfo(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (flag){
            session.setAttribute("user", member);
            session.setAttribute("infoSucc","个人信息修改成功！");
            response.sendRedirect("userInformation.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
