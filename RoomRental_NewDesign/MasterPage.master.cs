using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        hfUser.Value = Login1.UserName;
        hfPwd.Value = Login1.Password;

        if (hfUser.Value == "admin" && hfPwd.Value == "admin")
        {
            Response.Redirect("admin/Default.aspx");
        }
        else
        {

            DataView dv = (DataView)SqlDataLogin.Select(new DataSourceSelectArguments());
            if (dv.Count == 1)
            {
                Session.Add("userid", hfUser.Value);
                Session.Add("pwd", hfPwd.Value);
                string usertype=dv[0][2].ToString();

                if (usertype == "User")
                {
                    Response.Redirect("users/Default.aspx");
                }
                else
                {
                    Response.Redirect("admin/Default.aspx");
                }

            }
            else
            {
                Login1.FailureText = "Invalid username and password !";
            }

        }
    }
}
