package dao;

import bean.Goods;
import bean.Member;
import bean.Picture;

import java.sql.SQLException;
import java.util.List;

public interface GoodsDao {
    public int addGoodsInfo(Goods goods, Member member) throws SQLException;
    public boolean addGoodsPic(Picture picture,Goods goods) throws  SQLException;
    public List<Goods> getMyRelease(Member member) throws SQLException;
    public List<Picture> getFirstPic(Goods goods) throws SQLException;
//    public List<Picture> getAllPic(Picture picture) throws SQLException;
}
