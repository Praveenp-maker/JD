package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.Gson;

@WebServlet("/crud")

public class ServletCrud extends HttpServlet {

    ArrayList<Content> flist = new ArrayList<Content>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // flist.add(new Content("aaa", "mr", "ram", "raj", 98765432, 97654328));
        // flist.add(new Content("bbb", "ms", "sam", "ravi", 87654329, 97654200));
        // flist.add(new Content("ccc", "ms", "sree", "ram", 87654329, 97654200));
        // flist.add(new Content("ddd", "mr", "vicky", "ragul", 87654329, 97654200));

        flist.clear();

        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justdial?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC","root","");
        ) {

            java.sql.Statement stmt = con.createStatement();

            String strSelect = "select * from freelist";

            ResultSet rslt = stmt.executeQuery(strSelect);

            int rowCount = 0;

            // JsonElement freelist;
            while (rslt.next()) {
                // int id = rslt.getInt("Id");
                String company_name = rslt.getString("Company_NAME");
                String title = rslt.getString("title");
                String first_name = rslt.getString("FIRST_NAME");
                String last_name = rslt.getString("LAST_NAME");
                int mobileno = rslt.getInt("mobile_NO");
                int landlineno = rslt.getInt("landline_NO");
                rowCount = rowCount + 1;
                System.out.println(company_name + "," + title + ", " + first_name + "," + last_name + "," + mobileno
                        + "," + landlineno);
                flist.add(new Content(company_name, title, first_name, last_name, mobileno, landlineno));
            }

            Gson g = new Gson();
            String flst = g.toJson(flist);
            resp.getWriter().print(flst);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("INSERT");

        String requestData = req.getReader().lines().collect(Collectors.joining());
        Gson g = new Gson();
        Content newContent = g.fromJson(requestData, Content.class);
        System.out.println(newContent.getCompany_name() + " " + newContent.getTitle() + " " + newContent.getFirstname()
                + " " + newContent.getLastname() + " " + newContent.getMobile_no() + " " + newContent.getLandline_no());

        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justdial?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC","root","");
        ) {
            String strInsert = "Insert into freelist values (?,?,?,?,?,?)";
            PreparedStatement prepstmt = con.prepareStatement(strInsert);
            prepstmt.setString(1, newContent.getCompany_name());
            prepstmt.setString(2, newContent.getTitle());
            prepstmt.setString(3, newContent.getFirstname());
            prepstmt.setString(4, newContent.getLastname());
            prepstmt.setInt(5, newContent.getMobile_no());
            prepstmt.setInt(6, newContent.getLandline_no());
            int rslt = prepstmt.executeUpdate();
            System.out.println(rslt + " Rows has been Inserted");
        }

        catch (SQLException e) {
            e.printStackTrace();
        }

        
        // response.sendRedirect("/index");

    }
}
