package bs.db;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

public class DBHelper
{
	public static String executeUpdate(String query,Connection cn)
    {
    	try
    	{
    	    Statement smt=cn.createStatement();
    	    int r=smt.executeUpdate(query);
    	    if(r!=0)
    	    {
    	       return("yes");
    	    }
    	    else
    	    {
    	    	return("no");
    	    }
    	}
    	catch(Exception ex)
    	{
    		return "Error:"+ex;
    	}
    }
    public static ResultSet executeQuery(String query,Connection cn)
    {
    	try
    	{
    	    Statement smt=cn.createStatement();
    	    ResultSet rs=smt.executeQuery(query);
    	    return(rs);
    	}
    	catch(Exception ex)
    	{
    		System.out.println(ex);
    		return null;
    	}
    }
}

