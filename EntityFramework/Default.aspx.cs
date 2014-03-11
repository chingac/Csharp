using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //NorthwindEntities ctx = new NorthwindEntities();
        //var qry = from c in ctx.Regions
        //          select c;

        //GridView1.DataSource = qry.ToList();
        //GridView1.DataBind();
    }
    protected void add_Click(object sender, EventArgs e)
    {
        NorthwindEntities ctx = new NorthwindEntities();
        Region r = new Region();
        r.RegionDescription = tbdesc.Text;
        ctx.Regions.Add(r);
        ctx.SaveChanges();

        //var qry = from c in ctx.Regions
        //          select c;

        //GridView1.DataSource = qry.ToList();
        //GridView1.DataBind();
    }
    protected void display_Click(object sender, EventArgs e)
    {
        NorthwindEntities ctx = new NorthwindEntities();
        var qry = from c in ctx.Regions
                  select c;

        GridView1.DataSource = qry.ToList();
        GridView1.DataBind();
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        NorthwindEntities ctx = new NorthwindEntities();
        Region r = ctx.Regions.Find(Convert.ToInt32(tbid.Text));
     //   Territory t = ctx.Territories.Find(tb.Text.ToString());
        ctx.Regions.Remove(r);
       // ctx.Territories.Remove(t);
        ctx.SaveChanges();

    }
    protected void edit_Click(object sender, EventArgs e)
    {
        NorthwindEntities ctx = new NorthwindEntities();
        Region r = ctx.Regions.Find(Convert.ToInt32(tbid.Text));

        r.RegionDescription = tbdesc.Text.ToString();
        r.RegionID = Convert.ToInt32(tbid.Text);
        ctx.SaveChanges();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}