using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class uploads : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null) Response.Redirect("Login.aspx");

        string email = Session["email"].ToString();

        
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        conn = new SqlConnection(path);
        conn.Open();

        
        string query = "select TOP 10 * from files where userID = (SELECT id from accounts where email= '"+ email +"') order by uploadedOn desc";
        ad = new SqlDataAdapter(query, conn);
        DataSet ds = new DataSet();
        int rows = ad.Fill(ds);

        if (rows != 0)
        {
            fileRepeater.DataSource = ds;
            fileRepeater.DataBind();
        }
        else
        {
            NoUploads_Label.Style.Remove("display");
        }
    }
    protected void ViewFile(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "view-file")
        {
            Response.Redirect("Default.aspx");
        }
        else if (e.CommandName == "file-link")
        {
            Response.Write("<script> alert(Link to the file :'"+e.CommandArgument+"');</script>");
        }
    }
}