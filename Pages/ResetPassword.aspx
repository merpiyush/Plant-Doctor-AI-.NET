<%@ Page Title="Reset Password" Language="C#" MasterPageFile="~/Auth.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="PlantDoctorAI.Pages.ResetPassword" %>
<asp:Content ID="Hero" ContentPlaceHolderID="HeroContent" runat="server">
    <h2>A fresh start for your account.</h2>
    <p>Set a new password and you are ready to get back to your plants.</p>
</asp:Content>

<asp:Content ID="Form" ContentPlaceHolderID="FormContent" runat="server">
<div class="auth-icon-badge"><span class="ico">🔒</span></div>
<h3>Create Your Password</h3>
<p class="auth-sub">Choose a strong password you have not used before.</p>

<div class="form-group">
  <label class="form-label">New Password</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">🔒</span></span>
    <asp:TextBox ID="txtNewPassword" runat="server" CssClass="pd-input has-icon" TextMode="Password" MaxLength="50" placeholder="New password" />
  </div>
  <asp:RequiredFieldValidator ID="rfvNew" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revNew" runat="server" ControlToValidate="txtNewPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{6,50}$" ErrorMessage="Use 6+ characters with a letter and a number." CssClass="field-error" Display="Dynamic" />
</div>
<div class="form-group">
  <label class="form-label">Confirm Password</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">🔒</span></span>
    <asp:TextBox ID="txtConfirm" runat="server" CssClass="pd-input has-icon" TextMode="Password" MaxLength="50" placeholder="Repeat password" />
  </div>
  <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Please confirm your password." CssClass="field-error" Display="Dynamic" />
  <asp:CompareValidator ID="cmpConfirm" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtNewPassword" Operator="Equal" ErrorMessage="Passwords do not match." CssClass="field-error" Display="Dynamic" />
</div>

<asp:Button ID="btnReset" runat="server" Text="Save Password" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnReset_Click" />
</asp:Content>
