using System;

namespace PlantDoctorAI.Pages
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) { return; }
            Response.Redirect("VerifyCode.aspx");
        }
    }
}
