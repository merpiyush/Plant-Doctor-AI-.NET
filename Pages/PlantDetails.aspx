<%@ Page Title="Plant Details" Language="C#" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<a href="PlantGuides.aspx" class="back-btn" title="Back">&larr;</a>

<div class="plant-hero">
    <img src="../Assets/Images/plants/snake-plant.svg" alt="Snake Plant" />
    <div class="plant-hero-text"><h2>Snake Plant</h2><span>Sansevieria trifasciata</span></div>
    <span class="plant-hero-badge">Indoor</span>
</div>

<p class="plant-desc">Snake Plant is a nearly indestructible indoor plant that cleans the air and needs very little care.</p>

<div class="tile-grid cols-4">
    <div class="tile"><div class="tile-icon"><span class="ico">💧</span></div><div class="tile-value">Every 10-14 days</div><div class="tile-label">Watering</div></div><div class="tile"><div class="tile-icon"><span class="ico">☀️</span></div><div class="tile-value">Low to bright</div><div class="tile-label">Sunlight</div></div><div class="tile"><div class="tile-icon"><span class="ico">🌡️</span></div><div class="tile-value">15-29 C</div><div class="tile-label">Temperature</div></div><div class="tile"><div class="tile-icon"><span class="ico">💦</span></div><div class="tile-value">40-50%</div><div class="tile-label">Humidity</div></div>
</div>

<h2 class="section-title" style="margin-bottom:10px">Quick care tips</h2>
<div class="card card-pad" style="margin-bottom:18px">
    <ul class="check-list" style="margin:0">
        <li><span class="ico">✅</span><span>Never let it sit in water</span></li>
        <li><span class="ico">✅</span><span>Tolerates low light</span></li>
        <li><span class="ico">✅</span><span>Wipe the leaves once a month</span></li>
    </ul>
</div>

<h2 class="section-title" style="margin-bottom:10px">Common diseases</h2>
<div class="tags"><span class="tag">Root Rot</span><span class="tag">Mealybugs</span><span class="tag">Leaf Spot</span></div>

<a href="CareGuide.aspx" class="btn btn-primary btn-block btn-lg">View Full Care Guide</a>
</asp:Content>
