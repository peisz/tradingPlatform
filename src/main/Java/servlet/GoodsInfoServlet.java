package servlet;

import bean.Goods;
import bean.Member;
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

@WebServlet(name = "GoodsInfoServlet",urlPatterns = "/GoodsInfo.do")
public class GoodsInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String goodName = request.getParameter("goodsName");
        String price = request.getParameter("price");
        String classification = request.getParameter("classification");
        String briefAccount = request.getParameter("briefAccount");
        String description = request.getParameter("description");

        HttpSession session = request.getSession();
        Member member = (Member) session.getAttribute("user");

        Goods goods = new Goods();
        goods.setGoods_name(goodName);
        goods.setPrice(price);
        goods.setClassification(classification);
        goods.setBrief_account(briefAccount);
        goods.setDescription(description);

        GoodsDao goodsDao = new GoodsDaoImpl();
        int a = -1;

        try {
            a = goodsDao.addGoodsInfo(goods,member);
        } catch (SQLException e) {
            e.printStackTrace();
        }


        if (a!=-1) {
            goods.setGoods_id(a);
            session.setAttribute("goods",goods);
            session.setAttribute("GoodsInfoSucc", "商品基本信息上传成功！");
            response.sendRedirect("releaseGoods.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
