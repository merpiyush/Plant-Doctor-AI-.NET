<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/Auth.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="PlantDoctorAI.Pages.ForgotPassword" %>
<asp:Content ID="Hero" ContentPlaceHolderID="HeroContent" runat="server">
    <h2>We've got you covered.</h2>
    <p>Tell us your email and we will help you get back into your account in a minute.</p>
</asp:Content>

<asp:Content ID="Form" ContentPlaceHolderID="FormContent" runat="server">
<a href="Login.aspx" class="auth-back">&larr; Back to login</a>
<div class="auth-icon-badge"><span class="ico">🔒</span></div>
<h3>Forgot Password?</h3>
<p class="auth-sub">Enter your email and we will send you a 6 digit code.</p>

<div class="form-group">
  <label class="form-label">Email</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">✉️</span></span>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="pd-input has-icon" MaxLength="150" placeholder="you@example.com" />
  </div>
  <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]{2,}$" ErrorMessage="Enter a valid email address." CssClass="field-error" Display="Dynamic" />
</div>

<asp:Button ID="btnSend" runat="server" Text="Send Code" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnSend_Click" />
<p class="auth-foot">Remembered it? <a href="Login.aspx">Log in</a></p>
</asp:Content>
