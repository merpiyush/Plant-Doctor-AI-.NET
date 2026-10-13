using System;
using System.IO;
using System.Web.UI;

namespace PlantDoctorAI
{
    public partial class SiteMaster : MasterPage
    {
        // Gives the sidebar link the "active" look when we are on that page.
        // names = page names separated by comma, e.g. "Profile,EditProfile"
        protected string Active(string names)
        {
            string current = Path.GetFileNameWithoutExtension(Request.Path);
            foreach (string name in names.Split(','))
            {
                if (name == current) { return "side-item active"; }
            }
            return "side-item";
        }
    }
}
