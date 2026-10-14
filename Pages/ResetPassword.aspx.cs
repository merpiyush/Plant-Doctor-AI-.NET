using System;

namespace PlantDoctorAI.Pages
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void btnReset_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) { return; }
            Response.Redirect("Login.aspx");
        }
    }
}
