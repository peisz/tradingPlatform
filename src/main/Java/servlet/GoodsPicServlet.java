package servlet;

import bean.Goods;
import bean.Picture;
import dao.GoodsDao;
import dao.GoodsDaoImpl;
import utils.UploadUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "GoodsPicServlet",urlPatterns = "/GoodsPic.do")
public class GoodsPicServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Goods goods = (Goods)session.getAttribute("goods");

        Picture picture = new Picture();

        UploadUtil uploadUtil = new UploadUtil(this,request);
        String newFileName = "";
        try {
            System.out.println("22222222222222222222222222");
            newFileName = uploadUtil.processUploadedFile("goodsPicture","goodsPicture");
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("3333333333333333333333333333");
        picture.setPicture_url("goodsPicture/"+newFileName);
        GoodsDao goodsDao = new GoodsDaoImpl();
        boolean flag = false;

        try {
            System.out.println(goods.getGoods_id());
            flag = goodsDao.addGoodsPic(picture,goods);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (flag){
            System.out.println("555555555555555555555555555555555555");
            session.setAttribute("GoodPicSucc","商品图片上传成功！");
            response.sendRedirect("releaseGoods.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
