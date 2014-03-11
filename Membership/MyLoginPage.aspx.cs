using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

//Create a empty website
//Enable forms based authentication
//Add a Default.aspx page to the root of your website with a hello message
//Create a login page named "MyLoginPage.aspx"
//Add a login control to the "MyLoginPage.aspx" page
//Create a folder named "Members" 
//Add a "Restricted.aspx" page to the Members folder
//Add a "NotRestricted.aspx" page also to the Members folder
//On the Restricted.aspx page display the user name with a welcome message
//The Restricted.aspx page needs to require authentication
//The NotRestricted.aspx page will not need authentication
//Assume the UID=guest and the PWD=P@$$word
//TIP: Remember that you need authentication and authorization sections in the appropriate web.config files
public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //let us assume that the UID=guest and PWD:secret
        if (Login1.UserName == "guest" && Login1.Password == "P@$$word")
        {
            //legit
            //FormsAuthentication.RedirectFromLoginPage(Login1.UserName, PersistChildrenAttribute.Yes);
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            //Response.Redirect("~/Members/Restricted.aspx");

        }
        else
        {
           Login1.FailureText= "Access Denied";
        }
    }

}