<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="top-text header-text">
                        <asp:Label ID="Label1" runat="server" Text="Label" Style="font-size: 50px; color:white;">Sign Up</asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                <form class="login100-form validate-form">

                    <div class="wrap-input100 validate-input m-b-23" data-validate="Name is reauired">
                        <span class="label-input100">Name</span>
                        <asp:TextBox ID="TextBox1" runat="server" required="" class="input100" type="text" name="name" placeholder="Type your name"></asp:TextBox>

                        <span class="focus-input100" data-symbol="&#xf206;"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="Email is reauired">
                        <span class="label-input100">Email</span>
                        <asp:TextBox ID="TextBox2" runat="server" required="" class="input100" type="text" name="username" placeholder="Type your email"></asp:TextBox>

                        <span class="focus-input100" data-symbol="&#xf206;"></span>
                    </div>


                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <span class="label-input100">Password</span>
                        <asp:TextBox ID="TextBox3" runat="server" class="input100" type="password" name="pass" placeholder="Type your password" required=""></asp:TextBox>
                        <span class="focus-input100" data-symbol="&#xf190;"></span>
                    </div>

                    <div class="text-right p-t-8 p-b-31">
                        <a href="/Login.aspx">Login?
                        </a>
                    </div>

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <asp:Button ID="Button2" runat="server" class="login100-form-btn" Style="background-color: blue;" Text="Register" OnClick="Button1_Click" />

                        </div>
                    </div>


                </form>
            </div>
        </div>
    </div>
    <div id="dropDownSelect1"></div>

</asp:Content>

