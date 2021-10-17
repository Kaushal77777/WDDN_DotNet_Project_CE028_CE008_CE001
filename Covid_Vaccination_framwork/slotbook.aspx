<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="slotbook.aspx.cs" Inherits="Covid_Vaccination_framwork.slotbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>

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


        <header class="jumbotron" style="background-color:#cc3399;">
        <h1 class="text-center display-3" id="title"> Keep COVID Away, by one step </h1>
        <div class="container">
            <p id="description" class="lead">
                STRENGTHENS YOUR LUNGS, BY DEEP BREATHING CORONA VIRUS WILL RUN, WITHOUT CEASING. </p>
        </div>

        </header>

            <div class="container">

                <h2 class="display-5"> Booking Info </h2>
                <!-- TEXTB0X: CITY -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ErrorMessage="City can not be empty" ControlToValidate="city" ForeColor="Red">City is required</asp:RequiredFieldValidator>
                <div class="form-group d-flex">
                    <asp:TextBox ID="city" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                </div>

                <!-- TEXTB0X: STATE -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="State can not be empty" ControlToValidate="state" ForeColor="Red">State is required</asp:RequiredFieldValidator>
                <div class="form-group d-flex">
                    <asp:TextBox ID="state" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>
                </div>

                <!-- TEXTB0X: PIN CODE -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ErrorMessage="Pin no. can not be empty" ControlToValidate="pinno" ForeColor="Red">Pin no. is required</asp:RequiredFieldValidator>
                <div class="form-group d-flex">
                    <asp:TextBox ID="pinno" runat="server" CssClass="form-control" placeholder="Pin Code"></asp:TextBox>
                </div>


			    <!-- DOSE NUMBER -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ErrorMessage="Dose no. can not be empty" ControlToValidate="doseno" ForeColor="Red">Dose no. is required</asp:RequiredFieldValidator>
                <div class="form-group">
                    <label for="doseno">Dose Number</label>

                    <asp:RadioButtonList ID="doseno" runat="server">
                        <asp:ListItem Value="1">Dose 1</asp:ListItem>
                        <asp:ListItem Value="2">Dose 2</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <!-- DATE -->
	            <label for="date">Slot Date</label>
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

		    </div>

            <!-- TEXTB0X: Vaccine Type -->
            <label for="vaccineType">Vaccine Type</label>
            <div class="form-group d-flex">
                <asp:DropDownList ID="dropdown_vaccinetype" CssClass="form-control col-sm-4" runat="server">
                    <asp:ListItem>Covaxin</asp:ListItem>
                    <asp:ListItem>Covishield</asp:ListItem>
                </asp:DropDownList>
            </div>


            <!-- TEXTB0X: SLOT TIME -->
            <label for="dropdown_time">Slot Time</label>
            <div class="form-group d-flex">
                <asp:DropDownList ID="dropdown_time" CssClass="form-control col-sm-4" runat="server">
                    <asp:ListItem>09:00AM - 10:00AM</asp:ListItem>
                    <asp:ListItem>10:00AM - 11:00AM</asp:ListItem>
                    <asp:ListItem>11:00AM - 12:00PM</asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary mb-5" OnClick="Button1_Click"/>

       </div>
    </form>
</body>
</html>
