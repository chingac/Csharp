using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (ViewState["charac"] == null)
            {
                List<CartoonCharacter> c = new List<CartoonCharacter>();
                string[] st = System.IO.File.ReadAllLines(MapPath("~/files/CSV.txt"));



                for (int i = 1; i < st.Length; i++)
                {
                    string[] str = st[i].Split(',');

                    string[] lbl = st[0].Split(',');
                    Label6.Text = lbl[0].Trim();
                    Label7.Text = lbl[1].Trim();
                    Label8.Text = lbl[2].Trim();
                    Label9.Text = lbl[3].Trim();
                    Label10.Text = lbl[4].Trim();


                    c.Add(new CartoonCharacter()
                    {
                        Id = Convert.ToInt32(str[0].Trim()),
                        FirstName = str[1].Trim(),
                        LastName = str[2].Trim(),
                        DateOfBirth = Convert.ToDateTime(str[3].Trim()),
                        Salary = Convert.ToDouble(str[4].Trim()),
                        Picture = str[5].Trim()
                    });

                }
                ViewState.Add("charac", c);
                var charac = (List<CartoonCharacter>)ViewState["charac"];
                int p = 0;
                string[] fn = new string[7];
                List<string> ff = new List<string>();
                foreach (CartoonCharacter character in charac)
                {

                    ff.Add(character.FirstName + " " + character.LastName);
                }
                ddlFlintstones.DataSource = ff;
                ddlFlintstones.DataBind();

                // imgFlintstone.ImageUrl=;
                imgFlintstone.ImageUrl = charac[0].Picture;


                Label1.Text = charac[0].Id.ToString();
                Label2.Text = charac[0].FirstName;
                Label3.Text = charac[0].LastName;
                Label4.Text = charac[0].DateOfBirth.ToShortDateString();
                Label5.Text = charac[0].Salary.ToString();
                //string[] colors = { "White", "Blue", "Gray", "Yellow" };
                //ddlBackground.DataSource = colors;
                //ddlBackground.DataBind();
            }
        }

    }
    protected void ddlFlintstones_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Label1.Text=
        var charac = (List<CartoonCharacter>)ViewState["charac"];
        foreach (CartoonCharacter character in charac)
        {
            if (ddlFlintstones.Text == character.FirstName + " " + character.LastName)
            {
                Label1.Text = character.Id.ToString();
                Label2.Text = character.FirstName;
                Label3.Text = character.LastName;
                Label4.Text = character.DateOfBirth.ToShortDateString();
                Label5.Text = character.Salary.ToString();
                imgFlintstone.ImageUrl = character.Picture;
            }
        }
        //c.
        // lstBox.Text = "";
    }
    [Serializable]
    public class CartoonCharacter
    {
        public int Id { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public DateTime DateOfBirth { get; set; }

        public double Salary { get; set; }

        public string Picture { get; set; }


    }


}