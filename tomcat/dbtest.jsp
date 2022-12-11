<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<h1>DB</h1>
<%
    	Connection conn=null;
    	try{
				String dbUrl = System.getenv("DB_URL");
				String db = System.getenv("DB_NAME");
            	String id = System.getenv("USER");
            	String password= System.getenv("PASSWORD");
				String url = "jdbc:mysql://" + dbUrl + "/" + db;
 
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection(url, id, password);
            	out.println("was-db Connection Success!");
    	}catch(Exception e) {
            	e.printStackTrace();
}
%>
