using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Collections;


public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        ClassCheck cs = new ClassCheck();
        cs.lis(Server.MapPath("MasterPage.master"), Server.MapPath("MasterPage.master.cs"), Server.MapPath("web.config"));
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {              
      
    }

  

   

}