
package bs.dao;
import java.sql.*;

import bs.db.DBHelper;

public class DAO 
{
	static String provider="Jdbc:mysql://13.233.116.7:3306/collegeportal";
	static String uid="root";
    static String pwd="1234";
    public static String updateRecord(String q)
    {
    	try
    	{
    		Class.forName("com.mysql.jdbc.Driver");
    	    Connection cn=DriverManager.getConnection(provider,uid,pwd);
    	    String res = DBHelper.executeUpdate(q,cn);
    	    return res;  
    	}
    	catch(Exception ex)
    	{
    		return "Error :" +ex;
    	}
    
    }
    public static ResultSet displayRecord(String q)
    {
    	try
    	{
    		Class.forName("com.mysql.jdbc.Driver");
    	    Connection cn=DriverManager.getConnection(provider,uid,pwd);
    	    //Statement smt=cn.createStatement();
    	    ResultSet rs=DBHelper.executeQuery(q,cn);
    	    return rs;
    	}
    	catch(Exception ex)
    	{
    		return null;
    	}
    }

}
