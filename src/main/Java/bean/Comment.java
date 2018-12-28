package bean;


public class Comment {
    public String getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(String goods_id) {
        this.goods_id = goods_id;
    }

    private String comment_id;
    private String comment_release_time;
    private String comment_content;
    private int member_id;
    private String goods_id;

    public String getComment_id() {
        return comment_id;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public String getComment_release_time() {
        return comment_release_time;
    }

    public void setComment_release_time(String comment_release_time) {
        this.comment_release_time = comment_release_time;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public int getMember_id() {
        return member_id;
    }

    public void setMember_id(int member_id) {
        this.member_id = member_id;
    }

}
