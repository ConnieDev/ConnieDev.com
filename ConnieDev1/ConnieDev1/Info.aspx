<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="ConnieDev1.Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <li class="nav-item">
              <a class="nav-link" href="Default.aspx">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="About.aspx">About</a>
            </li>
            
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">

      <div class="row">

          <div class="col-lg-2">
 
            <h1 class="my-4">Links</h1>
            <div class="list-group">
                <a href="https://github.com/ConnieDev" class="list-group-item">GetHub</a>
                <a href="https://play.google.com/store/apps/developer?id=Connie+Development" class="list-group-item">Play Store</a>
            </div>
 
        </div>

        <div ID="Card" runat="server" class="col-lg-10">

     
        <!-- /.col-lg-9 -->

      </div>

    </div>
</asp:Content>
