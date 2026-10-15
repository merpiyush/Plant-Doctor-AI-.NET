<%@ Page Title="Disease Result" Language="C#" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <h1 class="page-title">Scan Result</h1>
    <p class="page-sub">We found a problem - but it can be treated.</p>
</div>

<div class="result-grid">
    <div class="result-visual disease">
        <span class="big-icon"><span class="ico ico-xl">🌱</span></span>
        <h2>Rose</h2>
        <span class="pill">Disease detected</span>
    </div>
    <div class="card card-pad">
        <div class="diag-title">
            <span class="tile-icon" style="margin:0;background:var(--red-soft)"><span class="ico">🐛</span></span>
            <div><h3>Black Spot</h3><span class="page-sub">Fungal infection</span></div>
        </div>
        <div class="sev-meta"><span>Severity</span><strong>Moderate</strong></div>
        <div class="severity"><span></span></div>
        <div class="tags"><span class="tag">Moderate</span><span class="tag">Contagious</span><span class="tag tag-green">Treatable</span></div>
        <ul class="check-list">
            <li><span class="ico">✅</span><span>Remove and bin all spotted leaves</span></li>
            <li><span class="ico">✅</span><span>Spray a fungicide every 7 days</span></li>
            <li><span class="ico">✅</span><span>Water at the root, never on the leaves</span></li>
            <li><span class="ico">✅</span><span>Improve air flow around the plant</span></li>
        </ul>
    </div>
</div>

<div class="tile-grid cols-2">
    <div class="tile left"><span class="tile-icon"><span class="ico">⚠️</span></span><div><div class="tile-value">Isolate</div><div class="tile-label">Keep away from other plants</div></div></div>
    <div class="tile left"><span class="tile-icon"><span class="ico">🕘</span></span><div><div class="tile-value">Daily check</div><div class="tile-label">Look for new spots every day</div></div></div>
</div>

<div class="btn-row">
    <a href="ScanPlant.aspx" class="btn btn-outline">Scan Again</a>
    <a href="CareGuide.aspx" class="btn btn-primary">View Care Guide</a>
</div>
</asp:Content>
