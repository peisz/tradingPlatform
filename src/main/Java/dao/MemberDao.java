package dao;

import bean.Member;

import java.sql.SQLException;


    public interface MemberDao {
        public Member getMember(String phone_number,String member_password) throws SQLException;
        public Member getMember(String phone_number) throws SQLException;
        public boolean addMember(Member member) throws SQLException;
        public boolean updateMemberHeadPhoto(Member member) throws  SQLException;
        public boolean updateMemberStuIDCard(Member member) throws  SQLException;
        public boolean updateMemberInfo(Member member) throws SQLException;
    }
