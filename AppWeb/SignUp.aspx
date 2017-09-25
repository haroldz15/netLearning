<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="AppWeb.SignUp" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Carousel Template for Bootstrap</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="Dist/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
      <link href="Dist/bootstrap/css/sticky-footer-navbar.css" rel="stylesheet">
      <link href="Dist/bootstrap/css/signup.css" rel="stylesheet">
  </head>
<body>
<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">Fixed navbar</a>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Disabled</a>
          </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <!-- Begin page content -->
    <div class="container">
      <div class="mt-3">
        <h1>Sign Up Form</h1>
      </div>
      <form class="form-signin" runat="server">
  <div class="input-group form-group">
    <asp:TextBox ID="inputUsername" runat="server" class="form-control"  placeholder="Enter username" required="required" autocomplete="off"></asp:TextBox>
    <span class="input-group-addon">
        <i class="fa fa-search"></i>
    </span>
  </div>
 <div class="input-group form-group">
    <asp:TextBox ID="inputPassword" runat="server" TextMode="Password" class="form-control"  placeholder="Enter password" required="required" autocomplete="off"></asp:TextBox>
     <span class="input-group-addon">
        <i class="fa fa-search"></i>
    </span> 
 </div>
 <div class="input-group form-group">
    <asp:TextBox ID="inputPassword2" runat="server" TextMode="Password" class="form-control"  placeholder="Repeat password" required="required" autocomplete="off"></asp:TextBox>
  </div>
  <div class="input-group form-group">
    <asp:TextBox ID="inputName" runat="server" class="form-control"  placeholder="Enter name" required="required" autocomplete="off"></asp:TextBox>
  </div>
  <div class="input-group form-group">
    <asp:TextBox ID="inputLastName" runat="server" class="form-control"  placeholder="Enter last name" required="required" autocomplete="off"></asp:TextBox>
  </div>
  <div class="input-group form-group">
    <asp:TextBox ID="inputEmail" runat="server" TextMode="Email" class="form-control"  placeholder="Enter email"  required="required" autocomplete="off">></asp:TextBox>
  </div>
  <asp:button ID="signUpBtn" class="btn btn-primary" runat="server" Text="Sign Up" OnClick="signUpBtn_Click" />
 <label runat="server" id="textValidation" class="text-danger"></label>
</form>
    </div>

    <footer class="footer">
      <div class="container">
        <span class="text-muted">Place sticky footer content here.</span>
      </div>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="Dist/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>