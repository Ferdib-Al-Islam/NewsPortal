<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "jagsir_online_newspaper";
String userId = "jagsir_arif";
String password = "123456";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

	try{ 
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.createStatement();
	}catch (Exception e) {
	e.printStackTrace();
	}

%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Online Newspaper</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

         <!-- All CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">		
        <link rel="stylesheet" href="css/owl.carousel.css">		
        <link rel="stylesheet" href="css/owl.theme.default.min.css">		
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/reponsive.css">
        
         <!-- For google font -->
        <link href='https://fonts.googleapis.com/css?family=Roboto:300italic,400italic,500italic,700,900,400,500' rel='stylesheet' type='text/css'>
        
        
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

       
	   
	  <!--Starting point of My Code||||||||||||||||||||||||||||||||-->
        
        
        <!--===========================================-->
        <!--                Header-top:START           -->
        <!--===========================================-->
        
       
        
        <div class="header_top_area">
            <div class="container">
                <div class="header_top">
                		
                    <div class="row">
                        
                        <div class="col-md-7">
                            <ul class="top_head_left_nav">
                                
                               
                                <li><a href="">Blog</a></li>
                                <li><a href="">Forums</a></li>
                                <li><a href="">Contact</a></li>
                            </ul>
                        </div>
                        
                        <div class="col-md-5">
                            <ul class="top_head_right_nav">
                                <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i>
                                <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i>
                                <li><a href=""><i class="fa fa-google-plus" aria-hidden="true"></i>
                                <li><a href=""><i class="fa fa-youtube" aria-hidden="true"></i></li>
                                <li><a href="Logout">Logout</i></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!--===========================================-->
        <!--                Header-end:End             -->
        <!--===========================================-->
                    
        <!--===========================================-->
        <!--                Logo:End                   -->
        <!--===========================================-->
                    
        <div class="logo-area fix">
            <div class="container">
                <div class="logo_p">
                    <h1>Online<strong>N</strong>ewspaper</h1>
                    <p><strong>Update</strong> yourself</p>
                </div>
            </div>
        </div>
                    
        <!--===========================================-->
        <!--                Logo:End                   -->
        <!--===========================================-->
        
        
      <%@ include file="inc/menu.jsp" %>
      
       <!-- Main part :: Start -->
        <%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<div class="main_part_area fix">
            <div class="container">
                <div class="main_part">
                    
                    <div class="row">
                        
                        <div class="col-md-8">
                            
                            <div class="recent_blog">
                                
                                <div class="recent_blog_small_title">
                                    <p>Entertainment</p>
                                </div>
                                <%
			                    	try{ 
									connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
									statement=connection.createStatement();
									String sql ="SELECT * FROM news where category='Entertainment'";
									
									resultSet = statement.executeQuery(sql);
									while(resultSet.next()){
			                    %>
                                
                                <!-- Recent post :: Start -->
                                
                                <div class="recent_post fix">
                                    <h1><%=resultSet.getString("title") %></h1>
                                    
                                    <img src="GetImage?title=<%=resultSet.getString("title") %>" alt="image">
                                    <p class="post_by">Posted by <%=resultSet.getString("username") %> on <%=resultSet.getString("date") %> </p>
                                    <p class="post_summary">
                                    <%
			                        	String detail = resultSet.getString("details");
			                        	detail = detail.substring(0, 300);
			                        	detail= detail+" . . .";
			                        %>
                                    	<%=detail %>
                                     </p>
                                    
                                    <a href="post_view.jsp?title=<%=resultSet.getString("title") %>">Read More</a>
                                    
                                </div>
                                <% 
								}
								
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
                                
                                <!-- Recent post :: End -->
                                
                                
                              
                                
                            </div>
                        </div>
     
     <%@ include file="inc/sidebar.jsp" %>
     <%@ include file="inc/most_read_news.jsp" %>
     <%@ include file="inc/footer.jsp" %>