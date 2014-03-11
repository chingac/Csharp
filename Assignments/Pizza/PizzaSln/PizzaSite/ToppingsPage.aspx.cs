using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaryPizzaLibrary;

public partial class ToppingsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        MaryPizzaEntities ctx = new MaryPizzaEntities();
        string newToppingName = tbToppingName.Text.ToString();
        string active = "no";
        
        if (cbActive.Checked)
        {
            active = "yes";
        }

        // make the new topping
        Topping topping = new Topping();
        topping.name = newToppingName;
        topping.active = active;

        // save the new topping to db
        ctx.Toppings.Add(topping);
        ctx.SaveChanges();

        // refresh page
        gvToppings.DataBind();
        tbToppingName.Text = "";
        cbActive.Checked = false;
    }
}