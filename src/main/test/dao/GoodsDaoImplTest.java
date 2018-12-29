package dao;

import bean.Goods;
import bean.Member;
import bean.Picture;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.junit.Test;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
        goods.setGoods_id(27);
        picture.setPicture_url("images/TestImage.jpg");
        boolean flag = false;
        try {
            flag = goodsDao.addGoodsPic(picture,goods);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertEquals(true,flag);

    }

    @Test
    public void getMyRelease(){
        GoodsDao goodsDao = new GoodsDaoImpl();
        Member member = new Member();
        member.setPhone_number("15170290480");
        List<Goods> goodsList = new ArrayList<>();
        try {
            goodsList = goodsDao.getMyRelease(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        for (int i=0;i<goodsList.size();i++){
            System.out.println(goodsList.get(i).getGoodsPicture().get(0).getPicture_url());
        }

        assertNotNull(goodsList);
        assertEquals(2,goodsList.size());

    }



    @Test
    public void getFirstPic(){
        GoodsDao goodsDao = new GoodsDaoImpl();
        Goods goods = new Goods();
        goods.setGoods_id(26);

        List<Picture> pictureList = new ArrayList<Picture>();
        try {
            pictureList = goodsDao.getFirstPic(goods);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        for (int i = 0; i<pictureList.size();i++){
            System.out.println(pictureList.get(i).getPicture_url());
        }

    }



}