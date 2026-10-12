using System;

namespace PlantDoctorAI.Pages
{
    public partial class HelpSupport : System.Web.UI.Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) { return; }

            txtMessage.Text = "";
            lblMessage.CssClass = "alert alert-success";
            lblMessage.Text = "Thank you! We will reply to you soon.";
        }
    }
}
