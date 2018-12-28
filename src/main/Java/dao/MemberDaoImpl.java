package dao;

import bean.Goods;
import bean.Member;
import utils.JdbcUtils;

import java.sql.*;

public class MemberDaoImpl implements  MemberDao{
    public Member getMember(String phone_number,String member_password) throws SQLException {

        Connection conn = null;
        PreparedStatement pstmt =null;
        ResultSet rs = null;
        try {
            conn = JdbcUtils.getConn();
            String sql = "SELECT member_id,member_name,member_password,phone_number,member_photo,member_nickname,member_gender,member_age,member_email,member_profile,member_stuIDCard,verification_status FROM member WHERE phone_number=? AND member_password=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, phone_number);
            pstmt.setString(2, member_password);
            rs = pstmt.executeQuery();

            Member member = null;
            if (rs.next()) {
                member = new Member();
                member.setMember_id(rs.getString(1));
                member.setMember_name(rs.getString(2));
                member.setMember_password(rs.getString(3));
                member.setPhone_number(rs.getString(4));
                member.setMember_photo(rs.getString(5));
                member.setMember_nickname(rs.getString(6));
                member.setMember_gender(rs.getString(7));
                member.setMember_age(rs.getString(8));
                member.setMember_email(rs.getString(9));
                member.setMember_profile(rs.getString(10));
                member.setMember_stuIDCard(rs.getString(11));
                member.setVerification_status(rs.getString(12));
            }
            return member;
        }finally {
            JdbcUtils.closeResultSet(rs);
            JdbcUtils.closeStatement(pstmt);
            JdbcUtils.closeConn(conn);
        }
    }

    public Member getMember(String phone_number) throws SQLException{
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            conn = JdbcUtils.getConn();
            String sql = "select member_id,member_name,member_password,phone_number from member where phone_number=? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,phone_number);
            rs = pstmt.executeQuery();

            Member member = null;
            if (rs.next()){
                member = new Member();
                member.setMember_id(rs.getString(1));
                member.setMember_name(rs.getString(2));
                member.setMember_password(rs.getString(3));
                member.setPhone_number(rs.getString(4));
            }

            return member;

        }finally{
            JdbcUtils.closeResultSet(rs);
            JdbcUtils.closeStatement(pstmt);
            JdbcUtils.closeConn(conn);
        }
    }

    public boolean addMember(Member member) throws SQLException{

        boolean flag = false;
        if (member == null)
            return flag;
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = JdbcUtils.getConn();
            String sql = "insert into member(member_id,member_name,member_password,phone_number,member_nickname,verification_status) values(?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMember_id());
            pstmt.setString(2, member.getMember_name());
            pstmt.setString(3, member.getMember_password());
            pstmt.setString(4, member.getPhone_number());
            pstmt.setString(5,member.getMember_nickname());
            pstmt.setString(6,"未审核");
            int flag2 = pstmt.executeUpdate();
            if (flag2 == 1)
                flag = true;
            return flag;
        }finally{
            JdbcUtils.closeStatement(pstmt);
            JdbcUtils.closeConn(conn);
        }
    }

    public boolean updateMemberHeadPhoto(Member member) throws  SQLException{
        boolean flag = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = JdbcUtils.getConn();

            String sql="update member set member_photo=? where phone_number=?";
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1,member.getMember_photo());
            preparedStatement.setString(2,member.getPhone_number());
            int flag1 = preparedStatement.executeUpdate();
            if (flag1==1)
                flag=true;
            return flag;
        }finally {
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }

    public boolean updateMemberStuIDCard(Member member) throws  SQLException{
        boolean flag = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            connection = JdbcUtils.getConn();

            String sql="update member set member_stuIDCard=? where phone_number=?";
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1,member.getMember_stuIDCard());
            preparedStatement.setString(2,member.getPhone_number());
            int flag1 = preparedStatement.executeUpdate();
            if (flag1==1)
                flag=true;
            return flag;
        }finally {
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }

    public boolean updateMemberInfo(Member member) throws SQLException{

        boolean flag = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = JdbcUtils.getConn();
            String sql = "update member set member_nickname=?,member_gender=?,member_age=?,member_email=?,member_profile=? where phone_number=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, member.getMember_nickname());
            preparedStatement.setString(2, member.getMember_gender());
            preparedStatement.setString(3, member.getMember_age());
            preparedStatement.setString(4, member.getMember_email());
            preparedStatement.setString(5, member.getMember_profile());
            preparedStatement.setString(6,member.getPhone_number());
            int flag1 = preparedStatement.executeUpdate();
            if (flag1 == 1)
                flag = true;
            return flag;
        }finally {
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }


   /* public boolean updateMemberInfo(Member member) throws SQLException{
        boolean flag=false;
        Connection connection=null;
        PreparedStatement preparedStatement=null;

        try{
            connection=JdbcUtils.getConn();

            String sql="update member \n" +
                    "set member_stuIDCard=?,member_photo=?,member_nickname=?,member_gender=?,member_email=?,member_profile=? \n" +
                    "where phone_number=?";
            preparedStatement= connection.prepareStatement(sql);

            preparedStatement.setString(1,member.getMember_stuIDCard());
            preparedStatement.setString(2,member.getMember_photo());
            preparedStatement.setString(3,member.getMember_nickname());
            preparedStatement.setString(4,member.getMember_gender());
            preparedStatement.setString(5,member.getMember_email());
            preparedStatement.setString(6,member.getMember_profile());
            preparedStatement.setString(7,member.getPhone_number());
            int flag1=preparedStatement.executeUpdate();
            if (flag1==1)
                flag=true;
            return flag;

        }finally {
            JdbcUtils.closeStatement(preparedStatement);
            JdbcUtils.closeConn(connection);
        }
    }*/


}
