using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

/// <summary>
/// Summary description for Category
/// </summary>
public class Employee : EmployeeDetail, IStoreable
{
    public Employee() 
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataSet GetDataSet()
    {
        string sql = "SELECT employeeId, firstName, lastName, title FROM employees";
        return DataLayer.GetInst().GetDataSet(sql, "nw");
    }

    #region IStoreable Members

    public int Delete(object obj)
    {
        EmployeeDetail detail = (EmployeeDetail)obj;
        string sql = "DELETE FROM employees";
        sql += " WHERE employeeId=@employeeId";

        Hashtable ht = new Hashtable();
        ht.Add("@employeeId", detail.EmployeeId);

        return DataLayer.GetInst().ExecuteNonQuery(sql, "nw", ht);
    }

    public int Delete(EmployeeDetail det)
    {
        object obj = det;
        return Delete(obj);
    }


    public int Update(object obj)
    {
        EmployeeDetail detail = (EmployeeDetail)obj;
        string sql = "UPDATE employees";
        sql += " SET";
        sql += "    FirstName=@FirstName,";
        sql += "    LastName=@LastName,";
        sql += "    Title=@Title";
        sql += " WHERE employeeId=@employeeId";

        Hashtable ht = new Hashtable();
        ht.Add("@employeeId", detail.EmployeeId);
        ht.Add("@FirstName", detail.FirstName);
        ht.Add("@LastName", detail.LastName);
        ht.Add("@Title", detail.Title);

        return DataLayer.GetInst().ExecuteNonQuery(sql, "nw", ht);
    }

    public int Update(EmployeeDetail det)
    {
        object obj = det;
        return Update(obj);
    }


    public int Create(object obj)
    {
        EmployeeDetail detail = (EmployeeDetail)obj;
        string sql = "INSERT INTO employees";
        sql += " (FirstName, LastName, Title)";
        sql += " VALUES";
        sql += " (@FirstName, @LastName, @Title)";

        Hashtable ht = new Hashtable();
        ht.Add("@FirstName", detail.FirstName);
        ht.Add("@LastName", detail.LastName);
        ht.Add("@Title", detail.Title);

        return DataLayer.GetInst().ExecuteNonQuery(sql, "nw", ht);
    }

    public int Create(EmployeeDetail det)
    {
        object obj = det;
        return Create(obj);
    }

    public System.Collections.IEnumerable Get()
    {
        DataSet ds = GetDataSet();
        EmployeeDetail[] all = new EmployeeDetail[ds.Tables[0].Rows.Count];
        int ndx = 0;
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            EmployeeDetail detail = new EmployeeDetail();
            detail.EmployeeId = Convert.ToInt32(row["employeeId"]);
            detail.FirstName = row["FirstName"].ToString();
            detail.LastName = row["LastName"].ToString();
            detail.Title = row["Title"].ToString();
            all[ndx++] = detail;
        }
        return all;
    }

    public object GetOne(string pk)
    {
        throw new Exception("The method or operation is not implemented.");
    }

    #endregion
}
