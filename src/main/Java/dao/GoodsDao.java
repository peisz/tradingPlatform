package dao;

import bean.Goods;
import bean.Member;
import bean.Picture;

import java.sql.SQLException;

public interface GoodsDao {
    public int addGoodsInfo(Goods goods, Member member) throws SQLException;
    public boolean addGoodsPic(Picture picture,Goods goods) throws  SQLException;
}
