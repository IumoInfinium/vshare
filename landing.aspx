<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard.master" AutoEventWireup="true" CodeFile="landing.aspx.cs" Inherits="Landing_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
        input[type=file]::file-selector-button {
  /* Add properties here */
    display:none;
}}
        .label-style {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="top-text header-text">
                        <h6>High Speed FILE DOWNLOADS</h6>
                        <h2>Share your files with anyone</h2>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-10 align-self-center">
                            
                            <label class="text-center label-style form-label">
                                <asp:FileUpload class="form-control" name="FileUpload" ID="FileUpload" runat="server" Style="display: inline-block;" />    
                            </label>
                        </div>

                        <div class="col-lg-2" style="padding:0; background-color:purple;">
                            <asp:LinkButton style="margin-left:auto;margin-right:auto;color:white;font-size:1.5em;" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                                <i class="fas fa-file-upload"></i>Upload
                            </asp:LinkButton>
                                
                        </div>    
                        

                    </div>

                </div>
                <div class="col-lg-10 offset-lg-1">
                    <ul class="categories">
                        <li><a href="category.html"><span class="icon">
                            <img src="assets/images/search-icon-01.png" alt="Home"></span> Apartments</a></li>
                        <li><a href="listing.html"><span class="icon">
                            <img src="assets/images/search-icon-02.png" alt="Food"></span> Food &amp; Life</a></li>
                        <li><a href="#"><span class="icon">
                            <img src="assets/images/search-icon-03.png" alt="Vehicle"></span> Cars</a></li>
                        <li><a href="#"><span class="icon">
                            <img src="assets/images/search-icon-04.png" alt="Shopping"></span> Shopping</a></li>
                        <li><a href="#"><span class="icon">
                            <img src="assets/images/search-icon-05.png" alt="Travel"></span> Traveling</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

