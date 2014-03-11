using MaryPizzaLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderPage : System.Web.UI.Page
{
    private List<string> checkedNameItems = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            labelDisplayOff();
            MaryPizzaEntities ctx = new MaryPizzaEntities();
        }
    }

    private void labelDisplayOff()
    {
        lblorderSummary.Visible = false;
        lblfname0.Visible = false;
        lbllname0.Visible = false;
        lblemail0.Visible = false;
        lbltelno0.Visible = false;
        lblsize0.Visible = false;
        lblamount0.Visible = false;
        lbltoppings0.Visible = false;
        lbldelivery0.Visible = false;
        lbldatetime0.Visible = false;
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = cktoppings.SelectedItem != null;
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if ((tbPizzaSize.Text == "small" | tbPizzaSize.Text == "Small") && (tbdelivery.Text == "delivery" | tbdelivery.Text == "Delivery"))
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void tbSubmit_Click(object sender, EventArgs e)
    {
        //if all validations succeed
        if (Page.IsValid == true)
        {
            persistOrderToDatabase();
            //displays the order summary label
            labelDisplay();
            //displays the orders from the filled in form 
            orderDisplay();
        }
    }

    private void persistOrderToDatabase()
    {
        MaryPizzaEntities ctx = new MaryPizzaEntities();
        Order or = new Order();
        or.firstname = tbfname.Text;
        or.lastName = tblname.Text;
        or.noOfPizzas = Convert.ToInt32(tbpizzanum.Text);
        or.phone = tbtelno.Text;
        or.size = tbPizzaSize.Text;
        or.delivery = tbdelivery.Text;

        // Grab the checkedItems' IDs (IDs of the preferred toppings).
        List<int> checkedItems = new List<int>();
        
        foreach (ListItem item in cktoppings.Items)
        {

            if (item.Selected)
            {
                checkedItems.Add(Convert.ToInt32(item.Value));
                checkedNameItems.Add(item.Text);
            }
        }
        //Find the Preferred Toppings using the ids in checkedItems
        List<Topping> preferredToppings = new List<Topping>();
        foreach (int id in checkedItems)
        {
            preferredToppings.Add(ctx.Toppings.Find(id));

        }
        or.Toppings = preferredToppings;


        or.orderDate = DateTime.Now;
        //sets the order date and time to the label
        lbldisplaydatetime.Text = or.orderDate.ToString();
        or.email = tbemail.Text;
        ctx.Orders.Add(or);


        ctx.SaveChanges();
    }

    private void labelDisplay()
    {
        lblorderSummary.Visible = true;
        lblfname0.Visible = true;
        lbllname0.Visible = true;
        lblemail0.Visible = true;
        lbltelno0.Visible = true;
        lblsize0.Visible = true;
        lblamount0.Visible = true;
        lbltoppings0.Visible = true;
        lbldelivery0.Visible = true;
        lbldatetime0.Visible = true;
    }
    private void orderDisplay()
    {
        lbldisplayfname.Text = tbfname.Text;
        lbldisplaylname.Text = tblname.Text;
        lbldisplaytelno.Text = tbtelno.Text;
        lbldisplayemail.Text = tbemail.Text;
        lbldisplaypizzanum.Text = tbpizzanum.Text;
        lbldisplaypizzasize.Text = tbPizzaSize.Text;
        ListView1.DataSource = checkedNameItems;
        ListView1.DataBind();
        lbldisplaydelivery.Text = tbdelivery.Text;
    }
}