<%@ page import="java.sql.*" %>

<%
    if(session.getAttribute("un") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("logout") != null){
        session.invalidate();
        response.sendRedirect("index.jsp");
        return;
    }
%>

<html>
<head>
    <title>Authentication App</title>
    <link rel="stylesheet" href="mystyle1.css">
    <link rel="stylesheet" href="css/mystyle1.css">
</head>
<body>

<%
    String msg = request.getParameter("msg");

    if("success".equals(msg)){
%>
        <script>
            alert("Signup Successful!");
        </script>
<%
    }
    else if("login".equals(msg)){
%>
        <script>
            alert("Login Successful!");
        </script>
<%
    }
%>

<br/>
<h1>Home Page</h1>
<br/><br/>

<h3 style="font-size:44px;">You are successfully authenticated to the system.</h3>
<br/><br/>

<form method="post">
    <input type="submit" name="logout" value="Logout">
</form>

</body>
</html>
