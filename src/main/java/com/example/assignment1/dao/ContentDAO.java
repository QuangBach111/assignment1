package com.example.assignment1.dao;

import com.example.assignment1.configuration.Database;
import com.example.assignment1.model.Content;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class ContentDAO {
    public static Database database = new Database();

    public List<Content> getAllContent(){
        List<Content> contents = new ArrayList<>();
        try{
            String query ="select * from contents";
            Statement statement = database.getConn().createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()){
                contents.add(new Content(resultSet.getInt("id"),
                        resultSet.getString("title"),
                        resultSet.getString("brief"),
                        resultSet.getString("content"),
                        resultSet.getString("create_date"),
                        resultSet.getString("update_date"),
                        resultSet.getInt("user_id")
                ));
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return contents;
    }
    public void deleteContent(int id){
        try{
            String query = "delete from contents\n" +
                    "where id = ?";
            PreparedStatement preparedStatement = database.getConn().prepareStatement(query);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        }catch (Exception e){

        }
    }
    public Content getContentById(int id){
        try{
            String query = "select * from contents\n" +
                    "where id = ?";
            PreparedStatement preparedStatement = database.getConn().prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                return new Content(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4));
            }
        }catch(Exception e){

        }
        return null;
    }
public void updateContent(int id, String title, String brief, String create_date, String content){
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now();
        try{
        String query = "update contents\n" +
                "set title = ?,\n" +
                "brief = ?,\n" +
                "create_date = ?,\n" +
                "content = ?\n" +
                "where id = ?";
        PreparedStatement preparedStatement = database.getConn().prepareStatement(query);
        preparedStatement.setString(1, title);
        preparedStatement.setString(2, brief);
        //Lấy current date trong java
        preparedStatement.setString(3, dtf.format(now));
        preparedStatement.setString(4, content);
        preparedStatement.setInt(5, id);
        preparedStatement.executeUpdate();

    }catch(Exception e){

    }

}
}
