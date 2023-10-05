<%-- 
    Document   : Reset
    Created on : Jul 15, 2023, 8:07:25 PM
    Author     : ASP_REF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="/style.css">
        <title>Bootstrap 4 Login/Register Form</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/style_1.css"/>
    </head>
    
    
    <div id="logreg-forms">
    
    <body>
        <form action="reset" class="form-reset" method="post" >
            
            
            <p class=" text-danger">${mess2}</p>
           
            <input name="user2" type="text" id="resetEmail" class="form-control" placeholder="User name" required="" autofocus="">
            <input name="pass2" type="text" id="resetEmail" class="form-control" placeholder="New Password" required="" autofocus="">
                <input name="repass2" type="text" id="resetEmail" class="form-control" placeholder="Repeat Password" required="" autofocus="">
            <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
            <a href="Login.jsp" >Back</a>
            
        </form>
    </body>
    </div>
    
    
</html>
