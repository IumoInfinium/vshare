<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard.master" AutoEventWireup="true" CodeFile="accounts.aspx.cs" Inherits="accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link
        rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css">
    <style>
    body {
    background-color: #f9f9fa
}

.padding {
    padding: 3rem !important
}

.user-card-full {
    overflow: hidden;
}

.card {
    border-radius: 5px;
    -webkit-box-shadow: 0 1px 20px 0 rgba(69,90,100,0.08);
    box-shadow: 0 1px 20px 0 rgba(69,90,100,0.08);
    border: none;
    margin-bottom: 30px;
}

.m-r-0 {
    margin-right: 0px;
}

.m-l-0 {
    margin-left: 0px;
}

.user-card-full .user-profile {
    border-radius: 5px 0 0 5px;
}

.bg-c-lite-green {
        /*background: -webkit-gradient(linear, left top, right top, from(#f29263), to(#ee5a6f));
    background: linear-gradient(to right, #ee5a6f, #f29263);*/
        background-color:#8e92bf;
}

.user-profile {
    padding: 20px 0;
}

.card-block {
    padding: 1.25rem;
}

.m-b-25 {
    margin-bottom: 25px;
}

.img-radius {
    border-radius: 5px;
}


 
h6 {
    font-size: 14px;
}

.card .card-block p {
    line-height: 25px;
}

@media only screen and (min-width: 1400px){
p {
    font-size: 14px;
}
}

.card-block {
    padding: 1.25rem;
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0;
}

.m-b-20 {
    margin-bottom: 20px;
}

.p-b-5 {
    padding-bottom: 5px !important;
}

.card .card-block p {
    line-height: 25px;
}

.m-b-10 {
    margin-bottom: 10px;
}

.text-muted {
    color: #919aa3 !important;
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0;
}

.f-w-600 {
    font-weight: 600;
}

.m-b-20 {
    margin-bottom: 20px;
}

.m-t-40 {
    margin-top: 20px;
}

.p-b-5 {
    padding-bottom: 5px !important;
}

.m-b-10 {
    margin-bottom: 10px;
}

.m-t-40 {
    margin-top: 20px;
}

.user-card-full .social-link li {
    display: inline-block;
}

.user-card-full .social-link li a {
    font-size: 20px;
    margin: 0 10px 0 0;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}

.update-button {
    background-color:#8e92bf;
    border:0;
    color:white;
    border-radius:5px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-content page-container" id="page-content" style="margin-top:100px;">
        <div class="padding">
            <div class="row container d-flex justify-content-center">
                <div class="col-xl-10 col-md-12">
                    <div class="card user-card-full">
                        <div class="row m-l-0 m-r-0">
                            <div class="col-sm-4 bg-c-lite-green user-profile">
                                <div class="card-block text-center text-white">
                                    <div class="m-b-25">
                                        <img src="assets/images/user.png" class="img-radius" alt="User-Profile-Image">
                                    </div>
                                    
                                    <asp:Label ID="Label3" runat="server" class="f-w-600"  Text="Name"></asp:Label>
                                    
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="card-block">
                                    <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Email</p>
                                            <asp:TextBox ID="TextBox1" runat="server" class="text-muted f-w-400" style="border:0; border-bottom:1px solid black" Text="" disabled> rntng@gmail.com </asp:TextBox>
                                            
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Password</p>
                                            <asp:TextBox ID="TextBox2" runat="server" class="text-muted f-w-400" Style="border: 0; border-bottom: 1px solid black" Text=""> password</asp:TextBox>
                                            &nbsp;
                                            <asp:Button ID="Button1" runat="server"  class="update-button" Text="Update" OnClick="Button1_Click" />    
                                        </div>
                                        
                                    </div>
                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600" > Stats</h6>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Uploaded Files</p>
                                            
                                            <asp:Label class="text-muted f-w-400" ID="Label1" runat="server" Text="0"></asp:Label>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Uploaded File Downloads</p>
                                            <asp:Label class="text-muted f-w-400" ID="Label2" runat="server" Text="0"></asp:Label>
                                        </div>
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

