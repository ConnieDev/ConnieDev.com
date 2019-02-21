<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="ConnieDev1.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <li class="nav-item">
              <a class="nav-link" href="Default.aspx">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="About.aspx">About</a>
            </li>
            
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

      <!-- Heading Row -->
      <div class="row my-4">
          <div class="col-lg-8">
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
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-4">
          <h1>Connie Development</h1>
          <p>Connie Development is the developer name I use for the Google Play store. This is mainly for fun and experimenting with different technologies, and growing my skills as a programmer</p>
          <a class="btn btn-primary btn-lg" href="Default.aspx">Back to Home</a>
        </div>
        <!-- /.col-md-4 -->
      </div>
      <!-- /.row -->

      <!-- Call to Action Well -->
      <div class="card text-white bg-secondary my-4 text-center">
        <div class="card-body">
          <p class="text-white m-0">Meet The Team</p>
        </div>
      </div>

      <!-- Content Row -->
      <div class="row">
        <div class="col-md-4 mb-4">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">Conrad Provan</h2>
              <p class="card-text">I am the main programmer for my applications. I enjoy playing tennis and rock climbing in my spare time. As well as programming and sports, I also dabble in automotive repair. My Toyota MK1 MR2 is my baby.</p>
            </div>
            <div class="card-footer">
              
            </div>
          </div>
        </div>
        <!-- /.col-md-4 -->
    
      </div>
      <!-- /.row -->

    </div>
</asp:Content>
