using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Common;
using System.Collections;

/// <summary>
/// Summary description for DataLayer
/// </summary>
public class DataLayer
{
    private static DataLayer onlyInstance = null;

	private DataLayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataLayer GetInst()
    {
        if (onlyInstance == null)
        {
            onlyInstance = new DataLayer();
        }
        return onlyInstance;
    }

    public DataSet GetDataSet(string sql, string db)
    {
        // Get the factory.
        string factory = ConfigurationManager.ConnectionStrings[db].ProviderName;
        DbProviderFactory provider = DbProviderFactories.GetFactory(factory);
        // Use this factory to create a connection.
        DbConnection con = provider.CreateConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings[db].ToString();
        // Create the command.
        DbCommand cmd = provider.CreateCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        // Use datadapter to fill a dataset
        DbDataAdapter adapt = provider.CreateDataAdapter();
        adapt.SelectCommand = cmd;
        DataSet ds = new DataSet();
        adapt.Fill(ds);
        return ds;
    }

    public int ExecuteNonQuery(string sql, string db, Hashtable ht)
    {
        string factory = ConfigurationManager.ConnectionStrings[db].ProviderName;
        DbProviderFactory provider = DbProviderFactories.GetFactory(factory);
        // Use this factory to create a connection.
        DbConnection con = provider.CreateConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings[db].ToString();
        // Create the command.
        DbCommand cmd = provider.CreateCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;

        if (ht != null)
        {
            foreach (DictionaryEntry de in ht)
            {
                DbParameter param = provider.CreateParameter();
                param.ParameterName = de.Key.ToString();
                param.Value = de.Value;
                cmd.Parameters.Add(param);
            }
        }

        con.Open();

        int affectedRows = cmd.ExecuteNonQuery();

        con.Close();

        return affectedRows;

    }
}
