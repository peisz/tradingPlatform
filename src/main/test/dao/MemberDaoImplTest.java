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
            member = memberDao.getMember("15170290480","123456");
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
        member.setMember_id("11111");
        member.setMember_password("11111");
        member.setPhone_number("1111112311");
        member.setMember_nickname("1111");
        member.setVerification_status("未审核");
        boolean flag = false;
        try {
            flag = memberDao.addMember(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertEquals(true, flag);
    }



    @Test
    public void updateMemberHeadPhoto(){
        MemberDao memberDao = new MemberDaoImpl();
        Member member = new Member();
        member.setPhone_number("111");
        member.setMember_photo("images/TestImage.jpg");
        boolean flag = false;

        try {
            flag = memberDao.updateMemberHeadPhoto(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertEquals(true,flag);
    }


    @Test
    public void updateMemberInfo(){
        MemberDao memberDao = new MemberDaoImpl();
        Member member = new Member();
        member.setPhone_number("1");
        member.setMember_nickname("123");
        member.setMember_gender("男");
        member.setMember_age("21");
        member.setMember_email("11@qq.com");
        member.setMember_profile("aaaaaaaaaa");

        boolean flag = false;

        try {
            flag = memberDao.updateMemberInfo(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        assertEquals(true,flag);

    }



}