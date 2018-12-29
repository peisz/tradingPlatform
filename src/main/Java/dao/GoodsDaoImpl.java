package dao;

import bean.Goods;
import bean.Member;
import bean.Picture;
import utils.JdbcUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Executor;

public class GoodsDaoImpl implements GoodsDao{
    public int addGoodsInfo(Goods goods, Member member) throws SQLException {
        int flag = -1;

        if (goods==null){
            return flag;
        }

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = JdbcUtils.getConn();
            String sql="insert into goods(goods_name,price,classification,brief_account,description,phone_number) value(?,?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,goods.getGoods_name());
            preparedStatement.setString(2,goods.getPrice());
            preparedStatement.setString(3,goods.getClassification());
            preparedStatement.setString(4,goods.getBrief_account());
            preparedStatement.setString(5,goods.getDescription());
            preparedStatement.setString(6,member.getPhone_number());
            int flag1 = preparedStatement.executeUpdate();
            if (flag1==1){
                ResultSet resultSet = null;
                String sql2 ="SELECT LAST_INSERT_ID()";
                preparedStatement = connection.prepareStatement(sql2);
                resultSet = preparedStatement.executeQuery();
                if (resultSet.next())
                    flag = resultSet.getInt(1);
            }
            return flag;
        }finally {
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }


    public boolean addGoodsPic(Picture picture, Goods goods) throws  SQLException{
        boolean flag = false;
        if (goods==null||picture==null){
            return flag;
        }
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = JdbcUtils.getConn();
            String sql = "insert into picture(picture_url,goods_id) value(?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,picture.getPicture_url());
            preparedStatement.setInt(2,goods.getGoods_id());
            int flag1 = preparedStatement.executeUpdate();

            if (flag1==1)
                flag=true;
            return flag;
        }finally {
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }


    public List<Goods> getMyRelease(Member member) throws SQLException{
        List<Goods> goodsList = new ArrayList<Goods>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try{
            connection = JdbcUtils.getConn();
            String sql = "SElECT goods_id,goods_name,price,brief_account,description,number_of_visit FROM goods WHERE phone_number=? ";
            preparedStatement =connection.prepareStatement(sql);
            preparedStatement.setString(1,member.getPhone_number());
             resultSet = preparedStatement.executeQuery();

             while (resultSet.next()){
                 Goods goods =new Goods();
                 goods.setGoods_id(resultSet.getInt(1));
                 goods.setGoods_name(resultSet.getString(2));
                 goods.setPrice(resultSet.getString(3));
                 goods.setBrief_account(resultSet.getString(4));
                 goods.setDescription(resultSet.getString(5));
                 goods.setNumber_of_visit(resultSet.getString(6));

                 goods.setGoodsPicture(getFirstPic(goods));

                 goodsList.add(goods);
             }
             return goodsList;
        }finally {
            JdbcUtils.closeResultSet(resultSet);
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }

    public List<Picture> getFirstPic(Goods goods) throws SQLException {
        List<Picture> pictureList = new ArrayList<Picture>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try{
            connection = JdbcUtils.getConn();
            String sql = "SELECT picture_url FROM picture WHERE goods_id=? ";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,goods.getGoods_id());
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                Picture picture = new Picture();
                picture.setPicture_url(resultSet.getString(1));
                pictureList.add(picture);
            }
            return pictureList;
        }finally {
            JdbcUtils.closeResultSet(resultSet);
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }

}
