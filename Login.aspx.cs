using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
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
        string s = "select name,email, password from accounts where email='" + TextBox1.Text + "'";
        ad = new SqlDataAdapter(s, con);

        DataSet ds = new DataSet();
        ad.Fill(ds);


        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>alert('Invalid Email')</script>");
        }
        else
        {
            if (TextBox2.Text != ds.Tables[0].Rows[0][2].ToString())
            {
                Response.Write("<script>alert('Invalid password')</script>");
            }
            else
            {
                Session["email"] = TextBox1.Text;
                Response.Redirect("landing.aspx");

            }

        }
    }
}