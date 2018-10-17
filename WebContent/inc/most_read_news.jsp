<!-- Most read : START -->
        <div class="blog_area">
            <div class="container">
                
                <!-- Common Header : Start -->
                <div class="common_header">
                    <h1>Most recent post</h1>
                    <span></span>
                </div>
                <!-- Common Header : End   -->
                
                
                
                <div class="blog fix">
                    <div class="row">
                        
                        <!-- Starting Pint of news_item -->
                        <%
					          try{ 
								connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
								statement=connection.createStatement();
								String sql ="SELECT * FROM news  where permission='Yes' ORDER BY view DESC limit 4";
											
								resultSet = statement.executeQuery(sql);
								while(resultSet.next()){
					      %>
                        <div class="col-md-3">
                            <div class="blog_item fix">
                                
                                <img class="blog_image" src="GetImage?title=<%=resultSet.getString("title") %>" alt="news">
                                
                                <div class="blog_details">
                                    <div class="blog_title">
                                        <h3><%=resultSet.getString("title") %></h3>
                                        <span><i class="fa fa-calendar" aria-hidden="true"></i> 11 - 08 - 16 /  <i class="fa fa-comments-o" aria-hidden="true"></i>20</span>
                                    </div>
                                	
                                    <div class="short_blog">
                                        <%
			                        	String detail = resultSet.getString("details");
			                        	detail = detail.substring(0, 200);
			                        	detail= detail+" . . .";
			                       		 %>
                                    	<%=detail %>
                                    </div>
                                    
                                    <div class="read_more">
                                        <a href="post_view.jsp?title=<%=resultSet.getString("title") %>">Read More</a>
                                    </div>
                                    
                                </div>
                                 
                            </div>
                        </div>
                        
                        <% 
								}
								
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
                                
                        <!-- Ending Pint of news_item -->
                        
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Most Read : END   -->   