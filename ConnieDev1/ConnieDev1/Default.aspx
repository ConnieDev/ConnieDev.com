<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ConnieDev1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <li class="nav-item active">
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
              <a href="https://github.com/ConnieDev" class="list-group-item">GitHub</a>
              <a href="https://play.google.com/store/apps/developer?id=Connie+Development" class="list-group-item">Play Store</a>
              
          </div>
 
        </div>

        <div class="col-lg-10">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="CDImages/AsteroidBig.png" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="CDImages/BouncyBallsBig.png" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="CDImages/BattleBugsBig.png" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
         
            <div id="Cards" class="row" runat="server" />
            <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->
    </div>
    
    <!-- /.container -->
</asp:Content>
