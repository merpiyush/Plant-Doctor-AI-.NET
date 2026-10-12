<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="profile-layout">
    <div class="card profile-card">
        <div class="profile-avatar" style="background:linear-gradient(135deg,#66BB6A,#1B5E20);display:flex;align-items:center;justify-content:center;color:#fff;font-size:30px;font-weight:700">A</div>
        <h3><%= Session["FullName"] ?? "Arjun Patel" %></h3>
        <p><%= Session["Email"] ?? "arjun@example.com" %></p>
    </div>
    <div>
        <div class="tile-grid cols-3">
            <div class="tile"><div class="tile-icon"><span class="ico">🌿</span></div><div class="tile-value">12</div><div class="tile-label">My Plants</div></div><div class="tile"><div class="tile-icon"><span class="ico">📷</span></div><div class="tile-value">28</div><div class="tile-label">Total Scans</div></div><div class="tile"><div class="tile-icon"><span class="ico">✅</span></div><div class="tile-value">5</div><div class="tile-label">Treated</div></div>
        </div>
        <a href="EditProfile.aspx" class="menu-row"><span class="menu-row-left"><span class="menu-icon"><span class="ico">✏️</span></span>Edit Profile</span>&rsaquo;</a>
        <a href="ScanHistory.aspx" class="menu-row"><span class="menu-row-left"><span class="menu-icon"><span class="ico">🕘</span></span>Scan History</span>&rsaquo;</a>
        <a href="HelpSupport.aspx" class="menu-row"><span class="menu-row-left"><span class="menu-icon"><span class="ico">❓</span></span>Help &amp; Support</span>&rsaquo;</a>
        <a href="Login.aspx" class="menu-row danger"><span class="menu-row-left"><span class="menu-icon"><span class="ico">🚪</span></span>Logout</span>&rsaquo;</a>
    </div>
</div>
</asp:Content>
