<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   String username = request.getParameter("username");
    String password = request.getParameter("password");
    String adminUsername = "admin";
    String adminPassword = "admin";
   

    if (username != null && password != null) {
        if (username.equals(adminUsername) && password.equals(adminPassword)) {
           
            response.sendRedirect("Adminhome.jsp");
        } else {
           
            request.setAttribute("errorMessage", "Invalid admin username or password");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    
    
%>
