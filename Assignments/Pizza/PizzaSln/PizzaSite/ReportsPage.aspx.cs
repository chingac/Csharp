using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MaryPizzaLibrary;

public partial class ReportsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //calendarCtrl.SelectedDates.Clear();
            calendarCtrl.Visible = false;
            tbFromDate.Text      = "";
            tbToDate.Text        = "";

            // Session variables to keep track of which image buttons are clicked
            Session["IsSelectingFromDate"]  = false;
            Session["IsSelectingToDate"]    = false;
        }
    }
    
    protected void ibtnFromDate_Click(object sender, ImageClickEventArgs e)
    {
        if (calendarCtrl.Visible)
        {   
            // If an image button was already clicked, close it and set trackers to false
            calendarCtrl.Visible            = false;
            Session["IsSelectingToDate"]    = false;
            Session["IsSelectingFromDate"]  = false;

        } else {

            calendarCtrl.Visible            = true;
            Session["IsSelectingToDate"]    = false;
            Session["IsSelectingFromDate"]  = true;
        }
    }

    protected void ibtnToDate_Click(object sender, ImageClickEventArgs e)
    {
        if (calendarCtrl.Visible)
        {
            // If an image button was already clicked, close it and set trackers to false
            calendarCtrl.Visible            = false;
            Session["IsSelectingToDate"]    = false;
            Session["IsSelectingFromDate"]  = false;

        } else {

            calendarCtrl.Visible            = true;
            Session["IsSelectingToDate"]    = true;
            Session["IsSelectingFromDate"]  = false;
        }
    }


    protected void calendarCtrl_SelectionChanged(object sender, EventArgs e)
    {
        if ((bool) Session["IsSelectingFromDate"])
        {
            // If selecting From Date - i.e. calendar icon for From Date is clicked
            tbFromDate.Text = calendarCtrl.SelectedDate.ToString("d");
            calendarCtrl.SelectedDates.Clear();     // Clears selected date on calendar control
        
        } else if ((bool)Session["IsSelectingToDate"]) {

            // If selecting To Date - i.e. calendar icon for To Date is clicked
            tbToDate.Text = calendarCtrl.SelectedDate.ToString("d");
            calendarCtrl.SelectedDates.Clear();
        
        } else {
            // This shouldn't happen... ERROR!
            tbToDate.Text = "Weird";
            calendarCtrl.SelectedDates.Clear();
        }

        // Close the calendar and reset trackers
        calendarCtrl.Visible            = false;
        Session["IsSelectingFromDate"]  = false;
        Session["IsSelectingToDate"]    = false;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        // Extract the contents of the textboxes
        string fromDateStr  = tbFromDate.Text;
        string toDateStr    = tbToDate.Text;

        // Do some extra validations if necessary

        // Assume that the following validations are done by ValidationControls:
        // RequiredFieldValidation, CompareValidation to check type, 
        // CompareValidation between the two dates, and RangeValidation

        // Now let's get to work
        DateTime fromDate   = Convert.ToDateTime(fromDateStr);
        DateTime toDate     = Convert.ToDateTime(toDateStr);

        MaryPizzaEntities ctx = new MaryPizzaEntities();

        
        var orders = from o in ctx.Orders
                     where (o.orderDate <= toDate) && (o.orderDate >= fromDate)
                     select o;
      

        gvOrders.DataSource = orders.ToList();
        gvOrders.DataBind();

    }
}