package bean;

public class Member {
    private String member_id;
    private String member_name;
    private String member_password;
    private String phone_number;
    private String member_stuIDCard;
    private String member_photo;

    public String getMember_stuIDCard() {
        return member_stuIDCard;
    }

    public void setMember_stuIDCard(String member_stuIDCard) {
        this.member_stuIDCard = member_stuIDCard;
    }

    public String getMember_photo() {
        return member_photo;
    }

    public void setMember_photo(String member_photo) {
        this.member_photo = member_photo;
    }

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_password() {
        return member_password;
    }

    public void setMember_password(String member_password) {
        this.member_password = member_password;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }


}