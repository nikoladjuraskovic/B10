using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace B10Recnik
{
    public partial class dodavanjeNovihReci : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=B10;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!="" && TextBox2.Text!="")
            {
                Label4.Text = "";
                try
                {
                    con.Open();
                    string upit = "INSERT INTO Reci VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                    SqlCommand cmd = new SqlCommand(upit, con);
                    cmd.ExecuteNonQuery();
                }
                catch(Exception ex)
                {
                    Label4.Text = ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                Label4.Text = "Niste uneli reci!";
            }
        }
    }
}