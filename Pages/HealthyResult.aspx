<%@ Page Title="Healthy Result" Language="C#" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <h1 class="page-title">Scan Result</h1>
    <p class="page-sub">Great news - your plant looks healthy!</p>
</div>

<div class="result-grid">
    <div class="result-visual healthy">
        <span class="big-icon"><span class="ico ico-xl">🌱</span></span>
        <h2>Rose</h2>
        <span class="pill">Healthy &middot; 98%</span>
    </div>
    <div class="tile-grid cols-2" style="align-content:start">
        <div class="tile"><div class="tile-icon"><span class="ico">💧</span></div><div class="tile-value">Every 2-3 days</div><div class="tile-label">Watering</div></div><div class="tile"><div class="tile-icon"><span class="ico">☀️</span></div><div class="tile-value">Full sun</div><div class="tile-label">Sunlight</div></div><div class="tile"><div class="tile-icon"><span class="ico">🌡️</span></div><div class="tile-value">18-24 C</div><div class="tile-label">Temperature</div></div><div class="tile"><div class="tile-icon"><span class="ico">💦</span></div><div class="tile-value">60%</div><div class="tile-label">Humidity</div></div>
    </div>
</div>

<div class="info-line"><span class="ico">✅</span><span>Your plant is thriving! Keep your regular watering routine and give it enough sunlight.</span></div>

<div class="btn-row">
    <a href="ScanPlant.aspx" class="btn btn-outline">Scan Again</a>
    <a href="CareGuide.aspx" class="btn btn-primary">View Care Guide</a>
</div>
</asp:Content>
