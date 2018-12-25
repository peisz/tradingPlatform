package dao;

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
            String sql = "SELECT phone_number,member_name,member_password FROM member WHERE phone_number=? AND member_password=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, phone_number);
            pstmt.setString(2, member_password);
            rs = pstmt.executeQuery();

            Member member = null;
            if (rs.next()) {
                member = new Member();
                member.setPhone_number(rs.getString(1));
                member.setMember_name(rs.getString(2));
                member.setMember_password(rs.getString(3));
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
            String sql = "insert into member(member_id,member_name,member_password,phone_number) values(?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMember_id());
            pstmt.setString(2, member.getMember_name());
            pstmt.setString(3, member.getMember_password());
            pstmt.setString(4, member.getPhone_number());
            int flag2 = pstmt.executeUpdate();
            if (flag2 == 1)
                flag = true;
            return flag;
        }finally{
            JdbcUtils.closeStatement(pstmt);
            JdbcUtils.closeConn(conn);
        }
    }
}
