using System;
using System.Collections.Generic;

namespace PlantDoctorAI.Pages
{
    public partial class ScanHistory : System.Web.UI.Page
    {
        // CLASS: one row of the history
        public class ScanRecord
        {
            public string PlantName { get; set; }
            public string Status { get; set; }       // Healthy, Warning or Disease
            public string Diagnosis { get; set; }
            public string ScanDate { get; set; }
            public string Image { get; set; }

            public ScanRecord(string plant, string slug, string status, string diagnosis, string date)
            {
                PlantName = plant; Status = status; Diagnosis = diagnosis; ScanDate = date;
                Image = "../Assets/Images/plants/" + slug + ".svg";
            }

            // METHODS of the class: they decide the badge colour and the result page
            public string BadgeClass
            {
                get
                {
                    if (Status == "Healthy") { return "badge-healthy"; }
                    if (Status == "Warning") { return "badge-warning"; }
                    return "badge-disease";
                }
            }

            public string ResultPage
            {
                get { return Status == "Healthy" ? "HealthyResult.aspx" : "DiseaseResult.aspx"; }
            }
        }

        // DELEGATE: holds a rule that says yes/no for one ScanRecord
        public delegate bool ScanRule(ScanRecord record);

        protected string Selected = "All";

        protected void Page_Load(object sender, EventArgs e)
        {
            // COLLECTION: List of ScanRecord objects
            List<ScanRecord> all = new List<ScanRecord>();
            all.Add(new ScanRecord("Rose", "rose", "Healthy", "Healthy - 98% sure", "Today, 10:24 AM"));
            all.Add(new ScanRecord("Basil", "basil", "Warning", "Needs attention - Leaf Spot", "Today, 8:05 AM"));
            all.Add(new ScanRecord("Snake Plant", "snake-plant", "Healthy", "Healthy - 96% sure", "Yesterday, 6:40 PM"));
            all.Add(new ScanRecord("Rose", "rose", "Disease", "Black Spot detected", "05 Oct, 9:15 AM"));
            all.Add(new ScanRecord("Tulsi", "tulsi", "Healthy", "Healthy - 99% sure", "03 Oct, 7:30 AM"));
            all.Add(new ScanRecord("Money Plant", "money-plant", "Warning", "Needs attention - Yellow leaves", "01 Oct, 5:10 PM"));

            // tab clicked? (address: ScanHistory.aspx?status=Healthy)
            Selected = Request.QueryString["status"] ?? "All";

            // the delegate holds the rule - written here as a LAMBDA expression
            ScanRule rule = record => Selected == "All" || record.Status == Selected;

            rptScans.DataSource = Filter(all, rule);
            rptScans.DataBind();
        }

        private List<ScanRecord> Filter(List<ScanRecord> list, ScanRule rule)
        {
            List<ScanRecord> result = new List<ScanRecord>();
            foreach (ScanRecord r in list)
            {
                if (rule(r)) { result.Add(r); }
            }
            return result;
        }

        protected string Tab(string status)
        {
            return status == Selected ? "tab active" : "tab";
        }
    }
}
