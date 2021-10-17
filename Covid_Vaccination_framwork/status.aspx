<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="status.aspx.cs" Inherits="Covid_Vaccination_framwork.status" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
        .auto-style2 {
            width: 100%;
            margin-right: 0px;
        }
    </style>
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

        <header class="jumbotron" style="background-color:#ff1a66;">
            <h1 class="text-center display-3" id="title"> Check Status </h1>
            <div class="container">
                <p id="description" class="lead">
                    SWASTHASYA SWAASTHYA RAKSHANAM AATURASYA VIKARA PRASHAMANAM CHAL </p>
            </div>

        </header>

        <div class="container">

            <h2 class="display-5"> Status Info </h2>

            <!-- TEXTB0X: Details -->
            <div class="form-group d-flex">
                <table class="auto-style2 form-group d-flex">
                    <tr>
                        <td class="auto-style1">
                             <asp:Label ID="name" runat="server" Text="Name : "></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="namefromdb" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="adharno" runat="server" Text="Adhar Number : "></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="adharnodb" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="email" runat="server" Text="Email : "></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="emaildb" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="contact" runat="server" Text="Contact : "></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="contactdb" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="bookstatus" runat="server" Text="Status : "></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="bookstatusdb" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
                
                

        </div>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>

    </form>
</body>
    <script>
        var element = document.getElementById("bookstatusdb");
        var statusvalue = element.innerHTML
        if (statusvalue == "Booked") {
            element.style.color = "green";
        }
        else if (statusvalue == "Pending") {
            element.style.color = "red";
        }
    </script>
</html>
