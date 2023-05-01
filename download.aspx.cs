using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;  

public partial class download : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter ad;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["code"] == null){
            Response.Write("<script> alert('Please use a correct link!');</script>");
            Response.Redirect("login.aspx");
        }
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        conn = new SqlConnection(path);

        conn.Open();

        if (!IsPostBack)
        {

            string query = "select * from files where code = '" + Request.QueryString["code"].ToString() + "'";
            ad = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            int rows = ad.Fill(ds);

            if (rows != 0)
            {
                string orignal_fname = ds.Tables[0].Rows[0][2].ToString();
                string saved_fname = ds.Tables[0].Rows[0][3].ToString();
                string filePath = Server.MapPath("~/files/" + saved_fname);

                FileInfo file = new FileInfo(filePath);

                if (file.Exists)
                {
                    Response.Clear();
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + orignal_fname);
                    Response.ContentType = "text/plain";
                    Response.Flush();

                    Response.TransmitFile(file.FullName);
                    Response.End();

                    string q = "update files set downloads = downloads+1 where id='" + ds.Tables[0].Rows[0][0].ToString() + "'";
                    cmd = new SqlCommand(q, conn);
                    cmd.ExecuteNonQuery();

                }
                else Response.Redirect("login.aspx");

            }
            else Response.Write("<script> alert('File not found!');</script>");
        }

    }
}