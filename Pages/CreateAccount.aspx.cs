using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace PlantDoctorAI.Pages
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // 1. VALIDATION: all validators on the page must pass
            if (!Page.IsValid) { return; }

            // 2. never save a plain password - save its SHA256 hash
            byte[] bytes = SHA256.Create().ComputeHash(Encoding.UTF8.GetBytes(txtPassword.Text));
            string passwordHash = Convert.ToBase64String(bytes);

            // 3. DATABASE: connection string comes from Web.config
            string cs = ConfigurationManager.ConnectionStrings["PlantDoctorDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                // INSERT query with parameters
                string query = "INSERT INTO Users (FullName, Email, PasswordHash) VALUES (@name, @email, @pass)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim().ToLower());
                cmd.Parameters.AddWithValue("@pass", passwordHash);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                    // remember the name and open the dashboard
                    Session["FullName"] = txtFullName.Text.Trim();
                    Session["UserName"] = txtFullName.Text.Trim().Split(' ')[0];
                    Session["Email"] = txtEmail.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                catch (SqlException ex)
                {
                    lblMessage.CssClass = "alert alert-error";
                    if (ex.Number == 2627 || ex.Number == 2601)
                    {
                        lblMessage.Text = "This email is already registered.";   // UNIQUE Email
                    }
                    else
                    {
                        lblMessage.Text = "Database error: " + ex.Message;
                    }
                }
            }
        }
    }
}
