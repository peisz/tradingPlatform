package bean;

import java.util.List;

public class Goods{
    private int goods_id;
    private String goods_name;
    private String price;
    private String brief_account;
    private String description;
    private String number_of_visit;
    private String phone_number;
    private String classification;
    private String release_time;
    private List<Picture> goodsPicture;

    public List<Picture> getGoodsPicture() {
        return goodsPicture;
    }

    public void setGoodsPicture(List<Picture> goodsPicture) {
        this.goodsPicture = goodsPicture;
    }

    public String getBrief_account() {
        return brief_account;
    }

    public void setBrief_account(String brief_account) {
        this.brief_account = brief_account;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }


    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getRelease_time() {
        return release_time;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public String getNumber_of_visit() {
        return number_of_visit;
    }

    public void setNumber_of_visit(String number_of_visit) {
        this.number_of_visit = number_of_visit;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }
}
