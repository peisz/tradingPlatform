package dao;

import bean.Goods;
import bean.Member;
import bean.Picture;
import org.junit.Test;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class GoodsDaoImplTest {

    @Test
    public void addGoodsInfo() {
        GoodsDao goodsDao = new GoodsDaoImpl();
        Goods goods = new Goods();
        Member member = new Member();
        member.setPhone_number("15170290480");
        goods.setGoods_name("111");
        goods.setPrice("12");
        goods.setClassification("654321");
        goods.setBrief_account("aaaaaaa");
        goods.setDescription("bbbbbbbbbbbbbbbbb");
        int a= -1;
        try {
            a = goodsDao.addGoodsInfo(goods,member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertNotEquals(-1,a);    }


    @Test
    public void addGoodsPic(){
        GoodsDao goodsDao = new GoodsDaoImpl();
        Goods goods = new Goods();
        Picture picture = new Picture();
        goods.setGoods_id(6);
        picture.setPicture("images/TestImage.jpg");
        boolean flag = false;
        try {
            flag = goodsDao.addGoodsPic(picture,goods);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertEquals(true,flag);

    }


}