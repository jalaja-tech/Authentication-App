<%@	page	import="java.sql.*"	%>
<html>
	<head>
		<title>Authentication App</title>
		<link rel="stylesheet" href="css/mystyle1.css">
	</head>
	<body>
		<br/>
		<h1>Login Page</h1>
		<br/>
		<a href="signup.jsp">New Users Click Here</a>
		<br/><br/>

		<form method="POST">
			<input type="text" name="un" placeholder="Enter UserName"/>
			<br/><br/>
			<input type="password" name="pw" placeholder="Enter Password"/>
			<br/><br/>
			<input type="submit" name="btn" value="Login"/>
		</form>

		<%
			if(request.getParameter("btn")!=null)
			{
				String un=request.getParameter("un");
				String pw=request.getParameter("pw");

				if(un==null || un.trim().equals("") ||
				   pw==null || pw.trim().equals(""))
				{
					out.println("\nPlease enter Username and Password");
				}
				else
				{
					try
					{
						DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
						String url="jdbc:mysql://localhost:3306/users_25sep25";
						Connection con=DriverManager.getConnection(url,"root","abc123");

						String sql="select * from users where un=? and pw=md5(?)";
						PreparedStatement pst=con.prepareStatement(sql);
						pst.setString(1,un);
						pst.setString(2,pw);

						ResultSet rs=pst.executeQuery();

						if(rs.next()){
							session.setAttribute("un",un);
							response.sendRedirect("home.jsp?msg=login");
						}
						else
						{	
							out.println("\nInvalid Username/Password");
						}

						con.close();
					}
					catch(SQLException e)
					{
						out.println("Issue: "+e);
					}
				}
			}
		%>
	</body>
</html>
