﻿using System;
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
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "insert into user values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("Login.aspx");
    }
}