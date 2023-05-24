
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sanitization Management System</title>
    <link rel="stylesheet" href="assets/css/login.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<style>
  body{
   background-image: url("assets/img/sanlogin.jpg");
   background-repeat: no-repeat;
   background-size: cover;
  }
</style>
<body>

<%
					String validMsg = (String) session.getAttribute("validMsg");
					String invalidMsg = (String) session.getAttribute("invalidMsg");

					if (validMsg != null) {
				%>
				<script>
					alert("Logged in Successfully");
					window.location.assign("dashboard.jsp");
				</script>
				<%
					session.removeAttribute("validMsg");
					}
				%>
				<%
					if (invalidMsg != null) {
				%>
				<script>
					alert("Invalid Creadential !! Please Try Again..");
				</script>
				<%
					session.removeAttribute("invalidMsg");
					}
				%>
				
 <div class="wrapper">
    <header>Admin Login</header>
    <form action="login" method="post">
        
      <div class="field email">
        <div class="input-area">
          <input type="text" name="username" placeholder="Username">
          <i class="icon fas fa-envelope"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>

      </div>
      <div class="field password">
        <div class="input-area">
          <input type="password" name="password" placeholder="Password">
          <i class="icon fas fa-lock"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>

      </div>
      <input type="submit" value="Login">
    </form>
     <a href="index.jsp" style="color:#fff;">Back to Home</a>

  </div>

</body>
</html>

