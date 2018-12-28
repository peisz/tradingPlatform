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

@WebServlet(name = "headPhotoServlet",urlPatterns="/headPhoto.do")
public class headPhotoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Member member = (Member) session.getAttribute("user");

        UploadUtil uploadUtil = new UploadUtil(this,request);
        String newFileName = "";
        try {
            newFileName = uploadUtil.processUploadedFile("photo","headPhoto");
        } catch (Exception e) {
            e.printStackTrace();
        }

        member.setMember_photo("headPhoto/"+newFileName);
        MemberDao memberDao = new MemberDaoImpl();
        boolean flag = false;
        try {
            flag = memberDao.updateMemberHeadPhoto(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (flag) {
            session.setAttribute("user", member);
            session.setAttribute("photoSucc","头像更新成功！");
            response.sendRedirect("userInformation.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
