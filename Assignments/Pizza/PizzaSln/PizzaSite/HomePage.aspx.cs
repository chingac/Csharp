using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hlReports.Visible= false;
        hlToppings.Visible = false;
        //admin and sales can only see Reports link
        if (HttpContext.Current.User.IsInRole("admin") | HttpContext.Current.User.IsInRole("sales"))
        {
            hlReports.Visible = true;
        }
        //only admin can see Toppings link
        if (HttpContext.Current.User.IsInRole("admin")){
            hlToppings.Visible = true;
        }
    }
}