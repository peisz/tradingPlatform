package utils;

public class MyTools {
    public  static String getExtension(String filename){
        String exten=filename.substring(filename.lastIndexOf("."));
        return exten;
    }
}
