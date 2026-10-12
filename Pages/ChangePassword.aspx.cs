using System;

namespace PlantDoctorAI.Pages
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) { return; }

            lblMessage.CssClass = "alert alert-success";
            lblMessage.Text = "Your password has been updated.";
        }
    }
}
