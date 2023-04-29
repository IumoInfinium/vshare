<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="top-text header-text">
              <asp:Label ID="Label1" runat="server" Text="Label" style="font-size:50px">Sign In</asp:Label>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="contact-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-6" style="margin-left:300px">
          <div class="inner-content">
            <div class="row">
              <div class="col-lg-8">
               
              </div>
              <div class="col-lg-6 align-self-center">
                <form id="contact" action="" method="get"  style="margin:40px;padding:20px">
                  <div class="row">
                    <div class="col-lg-8" style="margin:40px">>
                          <asp:TextBox ID="TextBox1" runat="server" style="margin:40px;padding:5px" placeholder="Email" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" style="margin:40px;padding:5px" placeholder="Pasword" required=""></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" class="main-button " style="margin:40px;padding:5px" Text="Login" OnClick="Button1_Click" />
                    </div>
                   </div>
             </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>


