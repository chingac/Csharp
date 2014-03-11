using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReadingDirectories_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] arrDirs = Directory.GetDirectories(@"c:\");
        for (int ndx = 0; ndx < arrDirs.Length; ndx++)
        {
            string strDir = arrDirs[ndx];
            strDir = strDir.Substring(strDir.LastIndexOf("\\") + 1);
            lstFiles.Items.Add(strDir);
        }

    }
}