package dao;

import bean.Goods;
import bean.Member;
import bean.Picture;
import utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static java.sql.Statement.RETURN_GENERATED_KEYS;

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
        System.out.println("666666666666666666666");
        boolean flag = false;
        if (goods==null||picture==null){
            System.out.println("11111111111111");
            return flag;
        }
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = JdbcUtils.getConn();
            String sql = "insert into picture(picture,goods_id) value(?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,picture.getPicture());
            preparedStatement.setInt(2,goods.getGoods_id());
            int flag1 = preparedStatement.executeUpdate();

            if (flag1==1)
                System.out.println("777777777777777777777");
                flag=true;
            return flag;
        }finally {
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }



}
