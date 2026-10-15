using System;
using System.Collections.Generic;

namespace PlantDoctorAI.Pages
{
    public partial class PlantGuides : System.Web.UI.Page
    {
        // CLASS: one plant
        public class Plant
        {
            public string Name { get; set; }
            public string Latin { get; set; }
            public string Category { get; set; }
            public string Image { get; set; }

            // constructor: builds a Plant OBJECT
            public Plant(string name, string latin, string category, string slug)
            {
                Name = name; Latin = latin; Category = category;
                Image = "../Assets/Images/plants/" + slug + ".svg";
            }
        }

        // DELEGATE: a variable that holds a rule (a method that takes a Plant and returns true/false)
        public delegate bool PlantRule(Plant plant);

        protected string Selected = "All";

        protected void Page_Load(object sender, EventArgs e)
        {
            // COLLECTION: a List of Plant objects
            List<Plant> all = new List<Plant>();
            all.Add(new Plant("Rose", "Rosa rubiginosa", "Flowering", "rose"));
            all.Add(new Plant("Aloe Vera", "Aloe barbadensis", "Succulents", "aloe-vera"));
            all.Add(new Plant("Hibiscus", "Hibiscus rosa-sinensis", "Flowering", "hibiscus"));
            all.Add(new Plant("Tulsi", "Ocimum tenuiflorum", "Herbs", "tulsi"));
            all.Add(new Plant("Money Plant", "Epipremnum aureum", "Indoor", "money-plant"));
            all.Add(new Plant("Mint", "Mentha spicata", "Herbs", "mint"));
            all.Add(new Plant("Snake Plant", "Sansevieria trifasciata", "Indoor", "snake-plant"));
            all.Add(new Plant("Basil", "Ocimum basilicum", "Herbs", "basil"));
            all.Add(new Plant("Marigold", "Tagetes erecta", "Flowering", "marigold"));
            all.Add(new Plant("Lavender", "Lavandula angustifolia", "Herbs", "lavender"));
            all.Add(new Plant("Jade Plant", "Crassula ovata", "Succulents", "jade-plant"));
            all.Add(new Plant("Peace Lily", "Spathiphyllum wallisii", "Indoor", "peace-lily"));

            // which tab was clicked? (comes from the address: PlantGuides.aspx?cat=Herbs)
            Selected = Request.QueryString["cat"] ?? "All";

            // the delegate holds the rule
            PlantRule rule = delegate (Plant p) { return Selected == "All" || p.Category == Selected; };

            rptPlants.DataSource = Filter(all, rule);
            rptPlants.DataBind();
        }

        // METHOD: keeps only the plants that pass the rule
        private List<Plant> Filter(List<Plant> list, PlantRule rule)
        {
            List<Plant> result = new List<Plant>();
            foreach (Plant p in list)
            {
                if (rule(p)) { result.Add(p); }   // calling the delegate
            }
            return result;
        }

        protected string Tab(string category)
        {
            return category == Selected ? "tab active" : "tab";
        }
    }
}
