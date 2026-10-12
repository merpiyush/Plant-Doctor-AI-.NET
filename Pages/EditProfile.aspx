<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="PlantDoctorAI.Pages.EditProfile" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<a href="Profile.aspx" class="back-btn" title="Back">&larr;</a>
<div class="center-head"><h1 class="page-title">Edit Profile</h1><p class="page-sub">Update your personal details.</p></div>

<div class="card form-card">
    <div class="profile-avatar" style="background:linear-gradient(135deg,#66BB6A,#1B5E20);display:flex;align-items:center;justify-content:center;color:#fff;font-size:32px;font-weight:700">A</div>
    <asp:Label ID="lblMessage" runat="server" />

    <div class="form-group">
  <label class="form-label">Full Name</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">👤</span></span>
    <asp:TextBox ID="txtFullName" runat="server" CssClass="pd-input has-icon" MaxLength="60" placeholder="Your name" />
  </div>
  <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full name is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtFullName" ValidationExpression="^[A-Za-z][A-Za-z .'-]{1,59}$" ErrorMessage="Use letters only (2 to 60 characters)." CssClass="field-error" Display="Dynamic" />
</div>
    <div class="form-group">
  <label class="form-label">Email</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">✉️</span></span>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="pd-input has-icon" MaxLength="150" placeholder="you@example.com" />
  </div>
  <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]{2,}$" ErrorMessage="Enter a valid email address." CssClass="field-error" Display="Dynamic" />
</div>

    <p style="text-align:right;margin:-6px 0 18px"><a href="ChangePassword.aspx" class="link-green" style="font-size:13px">Change password</a></p>
    <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnSave_Click" />
</div>
</asp:Content>
