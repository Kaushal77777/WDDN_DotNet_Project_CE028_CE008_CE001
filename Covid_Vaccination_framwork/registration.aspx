<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Covid_Vaccination_framwork.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
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

        <header class="jumbotron" style="background-color:dodgerblue;">
            <h1 class="text-center display-3" id="title"> Registration Form </h1>
            <div class="container">
                <p id="description" class="lead">
                    KEEP SAFE DISTANCE FOR COVID RESISTANCE CLEAN HANDS AND FACE MASK CORONA WILL LEAVE BEFORE YOU ASK. </p>
            </div>
        </header>

    <div class="container">

            <h2 class="display-5"> Registration Info </h2>

            <!-- TEXTB0X: FIRST NAME -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="Name can not be empty" ControlToValidate="name" ForeColor="Red">Name is required</asp:RequiredFieldValidator>
            <div class="form-group d-flex">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Full name"></asp:TextBox>
            </div>
        
            
            <!-- TEXTB0X: Adhar Number -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="Adhar Number can not be empty" ControlToValidate="adhar" ForeColor="Red">Adhar no. is required</asp:RequiredFieldValidator>
            <div class="form-group d-flex">
                <asp:TextBox ID="adhar" runat="server" CssClass="form-control" placeholder="Adhar Number"></asp:TextBox>
            </div>

            
            <!-- TEXTB0X: EMAIL -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ErrorMessage="Email can not be empty" ControlToValidate="email" ForeColor="Red">Email is required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Email is not valid" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter valid email</asp:RegularExpressionValidator>
            <div class="form-group d-flex">
                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            </div>

            <!-- TEXTB0X: Phone Number -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ErrorMessage="Contact can not be empty" ControlToValidate="contact" ForeColor="Red">Phone no. is required</asp:RequiredFieldValidator>
            <div class="form-group d-flex">
                <%--<input class="form-control" type="text" id="adhar" placeholder="Adhar Number">--%>
                <asp:TextBox ID="contact" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
            </div>

            

		    <!-- GENDER -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" runat="server" ErrorMessage="Gender can not be empty" ControlToValidate="gender" ForeColor="Red">Gender is required</asp:RequiredFieldValidator>
            <div class="form-group">
                <label for="gender">Gender</label>
                <asp:RadioButtonList ID="gender" runat="server">
                    <asp:ListItem Value="male">Male</asp:ListItem>
                    <asp:ListItem Value="female">Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <!-- BIRTHDATE -->
            <label for="birthday">Birth Date</label>
            <div class="form-group d-flex">
                
	            <!-- DROPDOWN: Month -->
                <asp:DropDownList ID="dropdown_month" runat="server" CssClass="form-control col-sm-4">
                    <asp:ListItem Value="1">Jan</asp:ListItem>
                    <asp:ListItem Value="2">Feb</asp:ListItem>
                    <asp:ListItem Value="3">Mar</asp:ListItem>
                    <asp:ListItem Value="4">Apr</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">Jun</asp:ListItem>
                    <asp:ListItem Value="7">Jul</asp:ListItem>
                    <asp:ListItem Value="8">Aug</asp:ListItem>
                    <asp:ListItem Value="9">Sep</asp:ListItem>
                    <asp:ListItem Value="10">Oct</asp:ListItem>
                    <asp:ListItem Value="11">Nov</asp:ListItem>
                    <asp:ListItem Value="12">Dec</asp:ListItem>
                </asp:DropDownList>

                    <!-- DROPDOWN: Date -->
                <asp:DropDownList ID="dropdown_date"  runat="server" CssClass="form-control col-sm-4">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>

            <!-- DROPDOWN: Year -->
                <asp:DropDownList ID="dropdown_year" runat="server" CssClass="form-control col-sm-4">
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                </asp:DropDownList>
		</div>

            <!-- TEXTB0X: Password -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Display="Dynamic" runat="server" ErrorMessage="Password can not be empty" ControlToValidate="password" ForeColor="Red">Password is required</asp:RequiredFieldValidator>
            <div class="form-group d-flex">
                <asp:TextBox ID="password" type="password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
            </div>
            </br>
            <!-- BUTTON: SUBMIT -->
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary mb-5" OnClick="Button1_Click"/>


        </div>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </form>
</body>
</html>
