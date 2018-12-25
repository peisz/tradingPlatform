package dao;

import bean.Member;

import java.sql.SQLException;
import java.util.List;

    public interface MemberDao {
        public Member getMember(String phone_number,String member_password) throws SQLException;
        public Member getMember(String phone_number) throws SQLException;
        public boolean addMember(Member member) throws SQLException;

}
