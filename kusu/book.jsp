<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<html>
<body>
    <form method="get" action="">
        <table width="600px" align="center" border="2">
            <tr>
                <td colspan="5" style="background-color: black;color: aliceblue;">Record Update Operation</td>
            </tr>
            <tr>
                <td>Enter Bookid for Search</td>
                <td><input type="text" name="t1" size="2" required=""/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="search" name="b1" /></td>
            </tr>
            
            <tr>
                <td colspan="5">
                     <%
                     if(request.getParameter("b1")!=null)
                    { 
                         Connection con=null;
                         Statement st;
                         ResultSet rs;
                         try{
                             Class.forName("com.mysql.jdbc.Driver");
                              con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");
                              int bid=Integer.parseInt(request.getParameter("t1"));
                            
                                st=con.createStatement();
                                 String ssql="select * from book where bid="+bid+"";
                                  rs=st.executeQuery(ssql);
                                 if(rs.next())
                                {
                                 %>
                                 </form>
                                 <form method="post" action="">
                                    <table width="600px" align="center" border="2">
                                        <tr>
                                            <td>BOOK_id</td>
                                            <td>
                                                <input type="text" readonly name="t2" value="<%=rs.getString(1)%>"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Book_Name</td>
                                            <td>
                                                <input type="text" name="t3" value="<%=rs.getString(2)%>"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Publisher</td>
                                            <td>
                                                <input type="text" name="t4" value="<%=rs.getString(3)%>"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Cost</td>
                                            <td>
                                                <input type="text" name="t5" value="<%=rs.getString(4)%>"/>
                                            </td>
                                        </tr>
                                      
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input type="submit" value="Update" name="b2"/>
                                            </td>
                                        </tr>
                                        <tr>






                                            <td colspan="5">
                                                <%
                                                if(request.getParameter("b2")!=null)
                                                {
                                                    Connection con2=null;
                                                    Statement st2;
                                                    
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                         con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");
                                                        
                                                         int bid2=Integer.parseInt(request.getParameter("t2"));
                                                        String bname=request.getParameter("t3");
                                                        String publisher=request.getParameter("t4");
                                                      
                                                        int cost=Integer.parseInt(request.getParameter("t5"));
                                                        String usql="update student set bid="+bid2+",Name='"+bname+"',publisher='"+publisher+"',cost='"+cost+" where bid="+bid2+"";
                                                        
                                                        st2=con.createStatement();
                                                        int res=st2.executeUpdate(usql);
                                                        if(res!=0)
                                                        out.println("Record Updated");
                                                        else
                                                        out.println("Record not updated");
                                                    
                                                }
                                                %>
                                            </td>
                                        </tr>
                                    </table>

                                 </form>
                                
                                     <%
                                }
                                else
                                {
                                    out.println("record not found");
                                }
                            }catch(Exception e)
                            {
                                out.println(e.toString());
                            }
                        
                        }
                    
                    %>
                </td>            
            </tr>
        </table>
    </form>
</body>
</html>