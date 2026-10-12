using System;

namespace PlantDoctorAI.Pages
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFullName.Text = (Session["FullName"] ?? "Arjun Patel").ToString();
                txtEmail.Text = (Session["Email"] ?? "arjun@example.com").ToString();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) { return; }

            Session["FullName"] = txtFullName.Text.Trim();
            Session["UserName"] = txtFullName.Text.Trim().Split(' ')[0];
            Session["Email"] = txtEmail.Text.Trim();

            lblMessage.CssClass = "alert alert-success";
            lblMessage.Text = "Profile updated successfully.";
        }
    }
}
