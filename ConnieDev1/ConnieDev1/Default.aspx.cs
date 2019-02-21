using System;

using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnieDev1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand cmd;
            SqlDataReader rdr;
            String connectionPath = "";
            string myHTML = "";
            if (IsPostBack == false)
            {
                connectionPath = @"Data Source=SQL5002.site4now.net;Initial Catalog=DB_A391AC_Cprovan;User Id=DB_A391AC_Cprovan_admin;Password=Blue1917;";
                conn = new SqlConnection(connectionPath);
                try
                {
                    
                    conn.Open();
                    cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "Select * From projects";
                    rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        myHTML += "<div class='col-lg-4 col-md-6 mb-4'>" +
                                "<div class='card h-100'>" +
                                  "<a href='Info.aspx?ID=" + rdr["ID"].ToString() + "'><img class='card-img-top' src='CDImages/" + rdr["ImagePath"].ToString() + "' alt=''/></a>" +
                                  "<div class='card-body'>" +
                                      "<h4 class='card-title'>" +
                                      "<a href ='Info.aspx?ID=" + rdr["ID"].ToString() + "'>" + rdr["Title"].ToString() + "</a>" +
                                      "</h4>" +
                                      "<p class='card-text'>" + rdr["ShortDes"].ToString() + "</p>" +
                                  "</div>" + // card body

                                  "</div>" + // card h-100
                              "</div>";  // col-lg-4
                        this.Cards.InnerHtml = myHTML;

                    }

                }
                catch (Exception)
                {
                    myHTML += "<div class='col-lg-4 col-md-6 mb-4'>" +
                                "<div class='card h-100'>" +
                                  
                                  "<div class='card-body'>" +
                                      
                                  "</div>" + // card body

                                  "</div>" + // card h-100
                              "</div>";  // col-lg-4
                    this.Cards.InnerHtml = myHTML;
                }
            }
        }
    }
}