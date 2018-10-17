       
       
       
        <!--===========================================-->
        <!--                Slide:Start                -->
        <!--===========================================-->
        
        <div class="slide_area fix">
            <div class="container">
                <div class="slide">
                
                    <div class="row">
                    
                    			<%
			                    	try{ 
									connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
									statement=connection.createStatement();
									String sql ="SELECT * FROM news where permission='Yes' order by view DESC limit 1";
									
									resultSet = statement.executeQuery(sql);
									while(resultSet.next()){
			                    %>
                       
                        <div class="col-md-12">
                            <div class="slide_left_news">
                                <img src="GetImage?title=<%=resultSet.getString("title") %>" alt="news">
                                
                                <div class="slide_news_info">
                                <u><h4>Top News</h4></u>
                                    <a href="post_view.jsp?title=<%=resultSet.getString("title") %>"><h3><%=resultSet.getString("title") %></h3></a>
                                    
                                </div>
                                                           
                            </div>
                        </div>
                        
                        <% 
								}
								
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
                        
                    <!--       <div class="col-md-6">
                            
                            <div class="slide_right_news_top">
                                <img src="img/bear-1821473_1280.jpg" alt="image">
                                <div class="slide_news_info1">
                                    <h3>Top news</h3>
                                    <h4>Something Something</h4>
                                </div>
                            </div>
                            
                            <div class="slide_right_news_bottom">
                                <img src="img/bear-1821473_1280.jpg" alt="image">
                                <div class="slide_news_info2">
                                    <h3>Top news</h3>
                                    <h4>Something Something</h4>
                                </div>
                            </div>
                       
                            
                        </div> --> 
                       
                      
                    </div>
                     
                </div>
            </div>
        </div>
          
        <!--===========================================-->
        <!--                Slide:End                  -->
        <!--===========================================-->