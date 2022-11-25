package controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.regex.Pattern;

public class ValidateServlet  
{
    public static boolean isValid(String email)
    {
        // String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
        //                     "[a-zA-Z0-9_+&*-]+)*@" +
        //                     "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
        //                     "A-Z]{2,7}$";
                              
        String emailRegex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$"; 
        Pattern pat = Pattern.compile(emailRegex);
        if (email == null)
            return false;
            return pat.matcher(email).matches();
    }
    public static int checkUser(String email) 
    {
        int st=0;
        if(isValid(email))
        {
        try 
        {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/justdial?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC","root","");
            PreparedStatement ps = con.prepareStatement("insert into login values(?)");
            ps.setString(1, email);
            st = ps.executeUpdate();
            System.out.println(st);
            return st;
        }
        catch(Exception e) 
        {
            e.printStackTrace();
        }
    }
    return -1;                
    }   
}