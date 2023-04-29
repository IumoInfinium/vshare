<%@ Page Title="" Language="C#" MasterPageFile="~/dashboard.master" AutoEventWireup="true" CodeFile="uploads.aspx.cs" Inherits="uploads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Scripts -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/animation.js"></script>
    <script src="assets/js/imagesloaded.js"></script>
    <script src="assets/js/custom.js"></script>

    <style>
        .file-item {
            display:flex;
            background-color:#8d99af;
            justify-content: start;
        }
        .file-download {
            margin-left:auto;
        }
        .file-image {
          display: inline-block;
          width: 66px;
          height: 66px;
          border-radius: 50%;
          text-align: center;
          line-height: 62px;
          color: #8d99af;
          background-color: transparent;
          margin-right: 15px;
        }
        .file-image img{
          max-width: 12em;
        }
        .file-name a{
            text-decoration:none;
            color:white;
            font-size:1.5em;
        }
        .file-name a:hover{
            text-decoration:none;
            color:white;
        }
        .center {
            margin-left:auto;
            margin-right:auto;
        }
        .file-download{
            text-align:center;
           
        }
        .file-download:hover {
            
            color : white;

         }

        .file-download a{
            color : white;
        }
        
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="top-text header-text">
                        <h6>Uploaded Files</h6>
                        <h2>Check Out all Your uploads</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="listing-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="naccs">
                        <div class="grid">
                            <div class="row">
                                <div class="col-lg-9 center">
                                    <div class="menu">
                                        <asp:Repeater runat="server" ID="fileRepeater">
                                            <ItemTemplate>
                                                <div class="file-item">
                                                    <div class="file-image">
                                                        <span class="icon">
                                                            <img src="assets/images/file.png" alt="">
                                                        </span>    
                                                    &nbsp;&nbsp;&nbsp;</div>
                                                    <div class="file-name">
                                                        <asp:LinkButton runat="server" ID="LinkButton1" OnCommand="ViewFile" class="fileArea" CommandName="view-file" CommandArgument='<%# Eval("id") %>'>
                                                            <asp:Label runat="server" ID="FileName_Label" Text='<%# Eval("name") %>'></asp:Label>
                                                            
                                                            
                                                        </asp:LinkButton>
                                                    </div>
                                                    <div class="file-download">
                                                        <asp:Label runat="server" ID="Label1" Text='<%# Eval("uploadedOn") %>'></asp:Label> 
                                                        &nbsp;
                                                        | 
                                                        &nbsp;
                                                        <asp:HyperLink runat="server" ID="HyperLink1" NavigateUrl='<%# "/download.aspx?code=" + Eval("code")%>' OnCommand="ViewFile" class="fileArea" CommandName="file-link" CommandArgument='<%# Eval("code") %>' Text="Copy link!">
                                                                 <span class="file-download">
                                                                     <%--<img src="assets/images/download.png" alt="">--%>
                                                                     Copy Link!
                                                                 </span>    
                                                        </asp:HyperLink>
                                                    </div>
                                                </div>
                                                
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Label runat="server" ID="NoUploads_Label" Text="" Style="display: none;">

                                        </asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="about">
                        <div class="logo">
                            <img src="assets/images/black-logo.png" alt="">
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adicingi elit, sed do eiusmod tempor incididunt ut et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="helpful-links">
                        <h4>Helpful Links</h4>
                        <div class="row">
                            <div class="col-lg-6">
                                <ul>
                                    <li><a href="#">Categories</a></li>
                                    <li><a href="#">Reviews</a></li>
                                    <li><a href="#">Listing</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Awards</a></li>
                                    <li><a href="#">Useful Sites</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="contact-us">
                        <h4>Contact Us</h4>
                        <p>27th Street of New Town, Digital Villa</p>
                        <div class="row">
                            <div class="col-lg-6">
                                <a href="#">010-020-0340</a>
                            </div>
                            <div class="col-lg-6">
                                <a href="#">090-080-0760</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="sub-footer">
                        <p>
                            Copyright © 2021 Plot Listing Co., Ltd. All Rights Reserved.
            <br>
                            Design: <a rel="nofollow" href="https://templatemo.com" title="CSS Templates">TemplateMo</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</asp:Content>

