using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "select * from accounts where email='" + TextBox2.Text + "'";
        ad = new SqlDataAdapter(s, con);

        DataSet ds = new DataSet();
        ad.Fill(ds);
        Session["email"] = TextBox2.Text;

        if (Session["email"] != null)
        {
            Response.Redirect("landing.aspx");
        }

        else
        {
            if (ds.Tables[0].Rows.Count == 0)
            {
                string query = "insert into accounts values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('user already registered')</script>");
            }
        }
        
    }
}