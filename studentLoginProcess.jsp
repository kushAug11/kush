<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   String username = request.getParameter("username");
    String password = request.getParameter("password");
    String StudentUsername = "kush";
    String StudentPassword = "Kush@123";
   

    if (username != null && password != null) {
        if (username.equals(StudentUsername) && password.equals(StudentPassword)) {
           
            response.sendRedirect("Adminhome.jsp");
        } else {
           
            request.setAttribute("errorMessage", "Invalid admin username or password");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    
    
%>
