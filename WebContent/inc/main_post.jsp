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
                                    <p>Recent post</p>
                                </div>
                                <%
			                    	try{ 
									connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
									statement=connection.createStatement();
									String sql ="SELECT * FROM news where permission='Yes'";
									
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