using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace B10Recnik
{
    public partial class recnik : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=B10;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!="" || TextBox2.Text !="")
            {
                Label5.Text = "";
                try
                {
                    con.Open();
                    string upit = "";
                    if(DropDownList1.SelectedValue=="SE")
                    {
                        upit = "SELECT Engleski,Opis FROM Reci WHERE Srpski='" + TextBox2.Text + "'";
                    }
                    else if(DropDownList1.SelectedValue =="ES")
                    {
                        upit = "SELECT Srpski,Opis FROM Reci WHERE Engleski='" + TextBox1.Text + "'";

                    }
                    else
                    {
                        Label5.Text = "Niste selektovali smer prevodjenja!";
                        TextBox2.Text = TextBox3.Text="";
                        return;
                    }
                    SqlCommand cmd = new SqlCommand(upit, con);
                    SqlDataReader dr= cmd.ExecuteReader();
                    if(dr.HasRows)
                    {
                        dr.Read();
                        if(DropDownList1.SelectedValue=="SE")
                            TextBox1.Text = dr[0].ToString();
                        else
                            TextBox2.Text = dr[0].ToString();

                        TextBox3.Text = dr[1].ToString();
                    }
                    else
                    {
                        Label5.Text = "Ne postoji uneta rec!";
                        TextBox2.Text = TextBox3.Text = "";
                    }
                    dr.Close();
                }
                catch(Exception ex)
                {
                    Label5.Text = ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                Label5.Text = "Niste uneli rec za prevodjenje!";
                TextBox2.Text = TextBox3.Text = "";
            }
        }
    }
}