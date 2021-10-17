<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Covid_Vaccination_framwork.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

       <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <!-- Navbar content -->
              <a class="navbar-brand" href="/default.html">Co-Win</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">   
                  <li class="nav-item">
                    <asp:HyperLink ID="loginlink" runat="server" CssClass="nav-link" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                  </li>
                  <li class="nav-item">
                    <asp:HyperLink ID="registrationlink" runat="server" CssClass="nav-link" NavigateUrl="~/registration.aspx">Registration</asp:HyperLink>
                  </li>
                  <li class="nav-item">
                    <asp:HyperLink ID="bookinglink" runat="server" CssClass="nav-link" NavigateUrl="~/slotbook.aspx">Book Your Slot</asp:HyperLink>
                  </li>
                  <li class="nav-item">
                    <asp:HyperLink ID="checkstatuslink" runat="server" CssClass="nav-link" NavigateUrl="~/status.aspx">Check Status</asp:HyperLink>
                  </li>
                </ul>
              </div>
            <asp:Label ID="navuser" runat="server" Text="" CssClass="text-warning mr-5"></asp:Label>
            <asp:Button ID="logoutbutton" CausesValidation="False" runat="server" Text="LogOut" CssClass="btn btn-outline-success my-2 my-sm-0" OnClick="logoutbutton_Click"/>
        </nav>

        <header class="jumbotron" style="background-color:#33cc33;">
            <h1 class="text-center display-3" id="title"> Login Form </h1>
            <div class="container">
                <p id="description" class="lead">
                    WEAR YOUR SAFETY GEAR LIVE LIFE WITHOUT FEAR </p>
            </div>
        </header>

        <div class="container">
            <h2 class="display-5"> Login Info </h2>
            <asp:Label ID="errmsg" runat="server" CssClass="fw-bold text-danger form-group d-flex"></asp:Label>

            <!-- TEXTB0X: Phone Number -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="Contact can not be empty" ControlToValidate="contact" ForeColor="Red">Phone no. is required</asp:RequiredFieldValidator>
            <div class="form-group d-flex">
                <asp:TextBox ID="contact" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
            </div>

            <!-- TEXTB0X: Password -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="Password can not be empty" ControlToValidate="password" ForeColor="Red">Password is required</asp:RequiredFieldValidator>
            <div class="form-group d-flex">
                <asp:TextBox ID="password" type="password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
            </div>


            <!-- BUTTON: SUBMIT -->
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary mb-5" OnClick="Button1_Click"/>

        </div>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    </form>
</body>
</html>
