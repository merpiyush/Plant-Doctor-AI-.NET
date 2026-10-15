<%@ Page Title="Analyzing" Language="C#" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="analyze-card">
    <div class="ring">
        <svg viewBox="0 0 150 150">
            <circle class="ring-bg" cx="75" cy="75" r="60" />
            <circle id="ringFill" class="ring-fill" cx="75" cy="75" r="60" />
        </svg>
        <div class="ring-text"><span id="ringPercent">0%</span><small>Analyzing</small></div>
    </div>
    <div class="steps">
        <div class="step now"><span class="step-dot">&#10003;</span> Detecting leaf</div>
        <div class="step"><span class="step-dot">&#10003;</span> Analyzing texture</div>
        <div class="step"><span class="step-dot">&#10003;</span> Finding diseases</div>
    </div>
    <p style="font-size:13px;opacity:.85">Almost there... this only takes a few seconds.</p>
</div>
</asp:Content>

<asp:Content ID="Scripts" ContentPlaceHolderID="ScriptContent" runat="server">
<script>
    // fake progress, then go to the result page
    var pct = 0;
    var timer = setInterval(function () {
        pct += 2;
        document.getElementById('ringFill').style.strokeDashoffset = 377 - (377 * pct / 100);
        document.getElementById('ringPercent').textContent = pct + '%';
        var steps = document.querySelectorAll('.step');
        for (var i = 0; i < steps.length; i++) {
            steps[i].className = 'step' + (pct >= (i + 1) * 33 ? ' done' : (pct >= i * 33 ? ' now' : ''));
        }
        if (pct >= 100) { clearInterval(timer); window.location.href = 'HealthyResult.aspx'; }
    }, 80);
</script>
</asp:Content>
