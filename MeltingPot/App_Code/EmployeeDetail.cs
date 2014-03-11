using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for CategoryDetail
/// </summary>
public class EmployeeDetail
{
	public EmployeeDetail()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private int employeeId;
    public int EmployeeId
    {
        get { return employeeId; }
        set { employeeId = value; }
    }

    private string firstName;
    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }

    private string lastName;
    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }

    private string title;
    public string Title
    {
        get { return title; }
        set { title = value; }
    }

}
