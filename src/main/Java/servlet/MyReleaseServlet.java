package servlet;

import bean.Goods;
import bean.Member;
import bean.Picture;
import dao.GoodsDao;
import dao.GoodsDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "MyReleaseServlet",urlPatterns = "/MyRelease.do")
public class MyReleaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("user");

        GoodsDao goodsDao = new GoodsDaoImpl();

        List<Goods> goodsList = null;
        try {
            goodsList = goodsDao.getMyRelease(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }
 /*       if (goodsList!=null) {
            for (int i = 0; i < goodsList.size(); i++) {
                System.out.println(goodsList.get(i).getGoods_name());
                Picture picture = goodsList.get(i).getGoodsPicture().get(0);
                System.out.println(picture.getPicture_url());
            }
        }
 */
        request.setAttribute("gList",goodsList);
        request.getRequestDispatcher("myRelease.jsp").forward(request,response);

    }
}
