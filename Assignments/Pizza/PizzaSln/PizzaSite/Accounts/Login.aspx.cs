using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Accounts_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginControl_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string username = loginControl.UserName.Trim();
        string password = loginControl.Password;

        if (Membership.ValidateUser(username, password))
        {
            FormsAuthentication.SetAuthCookie(username, false);
            FormsAuthentication.RedirectFromLoginPage(username, false);
            
        
        } else { 

        }
    }
}