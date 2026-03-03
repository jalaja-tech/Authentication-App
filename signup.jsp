<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Authentication App</title>
<<<<<<< HEAD
    <link rel="stylesheet" href="mystyle1.css">
=======
    <link rel="stylesheet" href="css/mystyle1.css">
>>>>>>> afc4671d76d2c764fa845d881e36b9eebf679854
</head>
<body>
<br/>
<h1>Signup Page</h1>
<br/>
<a href="index.jsp">Existing Users Click Here</a>
<br/><br/>

<form method="POST">
    <input type="text" name="un" placeholder="Enter UserName"/>
    <br/><br/>
    <input type="password" name="pw" placeholder="Enter Password"/>
    <br/><br/>
    <input type="password" name="cpw" placeholder="Confirm Password"/>
    <br/><br/>
    <input type="submit" name="btn" value="Register"/>
</form>

<%
if(request.getParameter("btn") != null)
{
    String un = request.getParameter("un");
    String pw = request.getParameter("pw");
    String cpw = request.getParameter("cpw");

    if(pw == null || pw.trim().equals(""))
    {
        out.println("\nPlease enter the password");
    }
    else if(!pw.equals(cpw))
    {
        out.println("\nPasswords did not match");
    }
    else
    {
        try
        {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            String url="jdbc:mysql://localhost:3306/users_25sep25";
            Connection con=DriverManager.getConnection(url,"root","abc123");

            String sql="insert into users values(?, md5(?))";
            PreparedStatement pst=con.prepareStatement(sql);
            pst.setString(1,un);
            pst.setString(2,pw);
            pst.executeUpdate();

            session.setAttribute("un",un);
            response.sendRedirect("home.jsp?msg=success");

            con.close();
        }
        catch(SQLIntegrityConstraintViolationException e)
        {
            out.println(un + "\nUsername Already Exists");
        }
        catch(SQLException e)
        {
            out.println("Issue: " + e);
        }
    }
}
%>

</body>
<<<<<<< HEAD
</html>
=======
</html>
>>>>>>> afc4671d76d2c764fa845d881e36b9eebf679854
