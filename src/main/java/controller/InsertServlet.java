package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
@WebServlet("/insert")
public class InsertServlet extends HttpServlet{
    ArrayList<Content> lits1 = new ArrayList<Content>();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("INSERT");

        String requestData = req.getReader().lines().collect(Collectors.joining());
        Gson gg=new Gson();
        Content cc=gg.fromJson(requestData,Content.class);
        
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justdial?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC","root","");
        ) {
            String strInsert = "Insert into freelist(Company_name,title,First_name,last_name,mobile_no,landline_no) values (?,?,?,?,?,?)";
            System.out.println(cc.getFirstname());
            PreparedStatement prepstmt = con.prepareStatement(strInsert);
            prepstmt.setString(1, cc.getCompany_name());
            prepstmt.setString(2, cc.getTitle());
            prepstmt.setString(3, cc.getFirstname());
            prepstmt.setString(4, cc.getLastname());
            prepstmt.setInt(5, cc.getMobile_no());
            prepstmt.setInt(6, cc.getLandline_no());
           
          
        int rslt = prepstmt.executeUpdate();
           System.out.println(rslt + " Rows has been Inserted");
        }

        catch (SQLException e) {
            e.printStackTrace();
        }

        
        // response.sendRedirect("/index");

    }
}


