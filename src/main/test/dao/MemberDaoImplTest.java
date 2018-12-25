package dao;

import bean.Member;
import org.junit.Test;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class MemberDaoImplTest {

    @Test
    public void getMember() {

        MemberDao memberDao = new MemberDaoImpl();
        Member member = null;
        try {
            member = memberDao.getMember("15170290480");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertNotNull(member);




    }



    @Test
    public void addMember() {
        MemberDao memberDao = new MemberDaoImpl();
        Member member = new Member();
        member.setMember_name("111");
        member.setMember_id("1111");
        member.setMember_password("11111");
        member.setPhone_number("11111123");
        boolean flag = false;
        try {
            flag = memberDao.addMember(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertEquals(true, flag);
    }



}