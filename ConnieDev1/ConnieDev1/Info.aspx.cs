using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnieDev1
{
    public partial class Info : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand cmd;
            SqlDataReader rdr;
            String connectionPath = "";
            string myHTML = "";
            string itemnum = Request.QueryString.Get("ID").ToString();
            


            if (IsPostBack == false)
            {
                connectionPath = @"Data Source=SQL5002.site4now.net;Initial Catalog=DB_A391AC_Cprovan;User Id=DB_A391AC_Cprovan_admin;Password=Blue1917;";
                conn = new SqlConnection(connectionPath);
                try
                {
                    conn.Open();
                    cmd = new SqlCommand();
                    cmd.Connection = conn;

                    cmd.CommandText = "SELECT * FROM projects WHERE ID = " + itemnum;

                    rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        myHTML = "<div class='card mt-4'>" +
                                    "<div class='row'>" +
                                        "<div class='col-lg-4'>" +
                                            "<img class='d-block img-fluid' src='CDImages/" + rdr["Title"].ToString() + "SS1.png'>" +
                                        "</div>" +
                                        "<div class='col-lg-4'>" +
                                            "<img class='d-block img-fluid' src='CDImages/" + rdr["Title"].ToString() + "SS2.png'>" +
                                        "</div>" +
                                        "<div class='col-lg-4'>" +
                                            "<img class='d-block img-fluid' src='CDImages/" + rdr["Title"].ToString() + "SS3.png'>" +
                                        "</div>" +
                                    "</div>" +
                                    "<div class='card-body'>" +
                                        "<h3 class='card-title'>" + rdr["Title"].ToString() + "</h3>" +
                                        "<p class='card-text'>" + rdr["LongDes"].ToString() + "</p>" +
                                        "<span class='text-warning'>&#9733; &#9733; &#9733; &#9733; &#9734;</span>" +
                                        "4.0 stars" +
                                    "</div>" +
                                "</div>";

                        this.Card.InnerHtml = myHTML;

                    }
                    
                    rdr.Close();
                    conn.Close();
                }
                catch (Exception)
                {
                    myHTML = "<div class='card mt-4'>" +
                                        "<div class='card-body'>" +
                                          "<span class='text-warning'>&#9733; &#9733; &#9733; &#9733; &#9734;</span>" +
                                          "4.0 stars" +
                                        "</div>" +
                                      "</div>";

                    this.Card.InnerHtml = myHTML;
                }
            }
        }
        public void Page_PreRender(Object sender, EventArgs e)
        {
            
        }
        
    }

    [Serializable]
    public class Item
    {
        private int itemNum;
        private string itemName;
        private double itemPrice;
        private string itemDescriptionShort;
        private string itemDescriptionLong;
        private string itemImage;
        public int count = 1;

        public int ItemNum
        {
            get
            {
                return itemNum;
            }

            set
            {
                itemNum = value;
            }
        }

        public string ItemName
        {
            get
            {
                return itemName;
            }

            set
            {
                itemName = value;
            }
        }

        public double ItemPrice
        {
            get
            {
                return itemPrice;
            }

            set
            {
                itemPrice = value;
            }
        }

        public string ItemDescriptionShort
        {
            get
            {
                return itemDescriptionShort;
            }

            set
            {
                itemDescriptionShort = value;
            }
        }

        public string ItemDescriptionLong
        {
            get
            {
                return itemDescriptionLong;
            }

            set
            {
                itemDescriptionLong = value;
            }
        }

        public string ItemImage
        {
            get
            {
                return itemImage;
            }

            set
            {
                itemImage = value;
            }
        }


    }

}