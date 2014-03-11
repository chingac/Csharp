using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WritingToTextFile_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  

        // Get fully qualified location of virtual directory
        string fn = MapPath("./") + "suggestions.txt";
        System.IO.StreamWriter wrtr = new System.IO.StreamWriter(fn, false);
        wrtr.Write(txtSuggestions.Text);
        wrtr.Close();
        spanMessage.InnerText = "Text has been saved to: " + fn;
  
    }
}