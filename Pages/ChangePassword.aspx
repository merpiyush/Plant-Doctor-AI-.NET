<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="PlantDoctorAI.Pages.ChangePassword" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<a href="Profile.aspx" class="back-btn" title="Back">&larr;</a>
<div class="center-head"><h1 class="page-title">Change Password</h1><p class="page-sub">Keep your account safe.</p></div>

<div class="card form-card">
    <div class="auth-icon-badge" style="margin:0 auto 12px"><span class="ico">🔒</span></div>
    <h3>Update Your Password</h3>
    <p class="center-sub">Use at least 6 characters with a letter and a number.</p>
    <asp:Label ID="lblMessage" runat="server" />

    <div class="form-group">
  <label class="form-label">Current Password</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">🔒</span></span>
    <asp:TextBox ID="txtCurrent" runat="server" CssClass="pd-input has-icon" TextMode="Password" MaxLength="50" placeholder="Current password" />
  </div>
  <asp:RequiredFieldValidator ID="rfvCurrent" runat="server" ControlToValidate="txtCurrent" ErrorMessage="Current password is required." CssClass="field-error" Display="Dynamic" />
</div>
    <div class="form-group">
  <label class="form-label">New Password</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">🔒</span></span>
    <asp:TextBox ID="txtNew" runat="server" CssClass="pd-input has-icon" TextMode="Password" MaxLength="50" placeholder="New password" />
  </div>
  <asp:RequiredFieldValidator ID="rfvNew" runat="server" ControlToValidate="txtNew" ErrorMessage="New password is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revNew" runat="server" ControlToValidate="txtNew" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{6,50}$" ErrorMessage="Use 6+ characters with a letter and a number." CssClass="field-error" Display="Dynamic" />
</div>
    <div class="form-group">
  <label class="form-label">Confirm New Password</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">🔒</span></span>
    <asp:TextBox ID="txtConfirm" runat="server" CssClass="pd-input has-icon" TextMode="Password" MaxLength="50" placeholder="Repeat new password" />
  </div>
  <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Please confirm the new password." CssClass="field-error" Display="Dynamic" />
  <asp:CompareValidator ID="cmpConfirm" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtNew" Operator="Equal" ErrorMessage="Passwords do not match." CssClass="field-error" Display="Dynamic" />
</div>

    <asp:Button ID="btnUpdate" runat="server" Text="Update Password" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnUpdate_Click" />
</div>
</asp:Content>
