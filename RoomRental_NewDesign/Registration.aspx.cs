using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, ImageClickEventArgs e)
    {

        // Code to find latitude and longitide.     
        hfDate.Value = DateTime.Now.ToShortDateString();
       
        // save image in project.
        string upath = Server.MapPath("users");
        String ppath = upath + "\\photos" + "\\" + fuphoto.FileName.ToString();
        fuphoto.SaveAs(ppath);
        
        SqlDataInsert.Insert();
        //lblmsg.Text = "Registration is Completed ! you Can Login Now !";

        Response.Redirect("Success.aspx");

    }
   
}