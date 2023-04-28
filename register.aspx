<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="top-text header-text">
              <asp:Label ID="Label1" runat="server" Text="Label" style="font-size:50px">Sign Up</asp:Label>
            <h6>Sign Up</h6>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="contact-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="inner-content">
            <div class="row">
              <div class="col-lg-8">
               
              </div>
              <div class="col-lg-6 align-self-center">
                <form id="contact" action="" method="get">
                  <div class="row">
                    <div class="col-lg-8" style="margin:40px;padding:20px">
                          <asp:TextBox ID="TextBox1" runat="server" style="margin:40px;padding:5px" placeholder="Name" required=""> </asp:TextBox>
                          <asp:TextBox ID="TextBox2" runat="server" style="margin:40px;padding:5px" placeholder="Email" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" style="margin:40px;padding:5px" placeholder="Pasword" required=""></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" class="main-button " Text="Register" OnClick="Button1_Click" />
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

