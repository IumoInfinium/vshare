﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="top-text header-text">
                        
                        <h2>Sign Up</h2>
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

                  <div class="row">
                    <div class="col-lg-8" style="margin:40px">
                          <asp:TextBox ID="TextBox1" runat="server" style="margin:40px;padding:5px;" placeholder="Name" required=""> </asp:TextBox>
                          <asp:TextBox ID="TextBox2" runat="server" style="margin:40px;padding:5px;" placeholder="Email" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" style="margin:40px;padding:5px;" placeholder="Pasword" required=""></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" style="margin:40px;padding:5px;" class="main-button " Text="Register" OnClick="Button1_Click" />
                    </div>
                   </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>

