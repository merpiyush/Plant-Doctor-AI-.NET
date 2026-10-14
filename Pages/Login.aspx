<%@ Page Title="Login" Language="C#" MasterPageFile="~/Auth.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PlantDoctorAI.Pages.Login" %>
<asp:Content ID="Hero" ContentPlaceHolderID="HeroContent" runat="server">
    <h2>Every leaf tells a story. Let AI help you read it.</h2>
    <p>Log in to see your garden overview, scan history and care reminders.</p>
</asp:Content>

<asp:Content ID="Form" ContentPlaceHolderID="FormContent" runat="server">
<h3>Welcome Back</h3>
<p class="auth-sub">Log in to continue to your garden.</p>
<asp:Label ID="lblMessage" runat="server" />

<div class="form-group">
  <label class="form-label">Email</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">✉️</span></span>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="pd-input has-icon" MaxLength="150" placeholder="you@example.com" />
  </div>
  <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]{2,}$" ErrorMessage="Enter a valid email address." CssClass="field-error" Display="Dynamic" />
</div>
<div class="form-group">
  <label class="form-label">Password</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">🔒</span></span>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="pd-input has-icon" TextMode="Password" MaxLength="50" placeholder="Enter your password" />
  </div>
  <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="^.{6,50}$" ErrorMessage="Password must be at least 6 characters." CssClass="field-error" Display="Dynamic" />
</div>

<p style="text-align:right;margin:-6px 0 16px"><a href="ForgotPassword.aspx" class="link-green" style="font-size:13px">Forgot password?</a></p>
<asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnLogin_Click" />
<p class="auth-foot">Don't have an account? <a href="CreateAccount.aspx">Sign up</a></p>
</asp:Content>
