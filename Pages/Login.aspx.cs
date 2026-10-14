using System;

namespace PlantDoctorAI.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // VALIDATION only (this project uses INSERT only, so no database check here)
            if (!Page.IsValid) { return; }

            Session["UserName"] = "Arjun";
            Session["FullName"] = "Arjun Patel";
            Session["Email"] = txtEmail.Text.Trim();
            Response.Redirect("Dashboard.aspx");
        }
    }
}
