using System;

namespace PlantDoctorAI.Pages
{
    public partial class VerifyCode : System.Web.UI.Page
    {
        protected void btnVerify_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) { return; }
            Response.Redirect("ResetPassword.aspx");
        }
    }
}
