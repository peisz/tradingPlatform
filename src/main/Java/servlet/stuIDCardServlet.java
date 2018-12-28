package servlet;

import bean.Member;
import dao.MemberDao;
import dao.MemberDaoImpl;
import utils.UploadUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "stuIDCardServlet",urlPatterns="/stuIDCard.do")
public class stuIDCardServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member member = (Member) session.getAttribute("user");

        UploadUtil uploadUtil = new UploadUtil(this,request);
        String newFileName = "";
        try {
            newFileName = uploadUtil.processUploadedFile("uploadStuIDCard","stuIDCard");
        } catch (Exception e) {
            e.printStackTrace();
        }

        member.setMember_stuIDCard("stuIDCard/"+newFileName);
        MemberDao memberDao = new MemberDaoImpl();
        boolean flag = false;
        try {
            flag = memberDao.updateMemberStuIDCard(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (flag) {
            session.setAttribute("user", member);
            session.setAttribute("stuIDCardSucc", "学生证上传成功！请等待审核");
            response.sendRedirect("userInformation.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
