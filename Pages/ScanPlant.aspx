<%@ Page Title="Scan Plant" Language="C#" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <h1 class="page-title">Scan Plant</h1>
    <p class="page-sub">Take a clear photo of the leaf or upload one from your gallery.</p>
</div>

<div class="scan-wrap">
    <div class="viewfinder"><div class="viewfinder-inner">
        <span class="ico ico-xl">🌿</span>
        <div style="font-size:14px">Place the plant inside the frame</div>
    </div></div>

    <div class="scan-hints">
        <span class="hint-chip"><span class="ico">☀️</span> Good lighting</span>
        <span class="hint-chip"><span class="ico">🎯</span> Focus on the leaf</span>
        <span class="hint-chip"><span class="ico">✅</span> Keep steady</span>
    </div>

    <div class="scan-controls">
        <a href="Analyzing.aspx" class="round-btn" title="Gallery"><span class="ico">🖼️</span></a>
        <a href="Analyzing.aspx" class="round-btn round-btn-main" title="Scan now"><span class="ico ico-lg">📷</span></a>
        <a href="ScanPlant.aspx" class="round-btn" title="Flip camera"><span class="ico">🔄</span></a>
    </div>
    <p class="page-sub" style="text-align:center">Tap the green button to start the scan</p>
</div>
</asp:Content>
