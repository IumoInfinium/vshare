using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Landing_upload : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        conn = new SqlConnection(path);
        conn.Open();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        if (FileUpload.HasFile)
        {
            string strFolder;
            string opath= "";
            string dir_struct = "~/files/";
            string fname = FileUpload.FileName;

            strFolder = Server.MapPath(dir_struct);

            string ext = System.IO.Path.GetExtension(fname);
            ext.ToLower();

            if (ext == ".exe"){
                Response.Write("<script> alert('You cannot upload any executable file!')</script>");
                Response.Redirect("landing.aspx");
            }
            
            long file_size = FileUpload.FileContent.Length;
            if (file_size >= 1024 * 1024 * 512){
                Response.Write("<script> alert('You cannot upload files larger than 500 MB!')</script>");
                Response.Redirect("landing.aspx");
            }

            if(!Directory.Exists(Server.MapPath(dir_struct))){
                Directory.CreateDirectory(dir_struct);
            }
            string path = Server.MapPath(dir_struct + fname);
            string append_name="";

            if(File.Exists(Server.MapPath(dir_struct + fname)))
                append_name += DateTime.Now.ToString("yyyy-MM-dd-HH-mm");

            FileUpload.SaveAs(Server.MapPath(dir_struct + append_name+ fname));
            opath = dir_struct + append_name + fname;

            string generatedCode = generateCode(8);
            string pname = append_name + fname;
            string query = "insert into files values(1, '" + fname + "', '" + pname + "', '" + generatedCode + "','" + DateTime.Now.ToString("yyy-MM-dd HH:mm") +"')";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('File Uploaded!')</script>");
            Response.Redirect("uploads.aspx");
        }
    }
    protected string generateCode(int size){
        Random rand = new Random();

        string result="";
        for(int i=0; i<size; i++){
            int randomValue = rand.Next(0, 26);
            char c = Convert.ToChar(randomValue + 97);
            result += c;
        }
        string query = "select count(*) from files where code='" + result +"'";
        SqlDataAdapter ad = new SqlDataAdapter(query, conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);

        if (ds.Tables[0].Rows[0][0].ToString() == "0") return result;
        else return generateCode(8);
    }
}
