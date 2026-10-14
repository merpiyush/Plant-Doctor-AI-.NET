<%@ Page Title="Create Account" Language="C#" MasterPageFile="~/Auth.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="PlantDoctorAI.Pages.CreateAccount" %>
<asp:Content ID="Hero" ContentPlaceHolderID="HeroContent" runat="server">
    <h2>Join thousands growing smarter, healthier plants.</h2>
    <p>Create your free account and let AI help you diagnose and care for every plant you own.</p>
</asp:Content>

<asp:Content ID="Form" ContentPlaceHolderID="FormContent" runat="server">
<h3>Create Account</h3>
<p class="auth-sub">Sign up to start scanning your plants.</p>
<asp:Label ID="lblMessage" runat="server" />

<div class="form-group">
  <label class="form-label">Full Name</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">👤</span></span>
    <asp:TextBox ID="txtFullName" runat="server" CssClass="pd-input has-icon" MaxLength="60" placeholder="Arjun Patel" />
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
<div class="form-group">
  <label class="form-label">Password</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">🔒</span></span>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="pd-input has-icon" TextMode="Password" MaxLength="50" placeholder="At least 6 characters" />
  </div>
  <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{6,50}$" ErrorMessage="Use 6+ characters with a letter and a number." CssClass="field-error" Display="Dynamic" />
</div>

<asp:Button ID="btnRegister" runat="server" Text="Sign Up" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnRegister_Click" />
<p class="auth-foot">Already have an account? <a href="Login.aspx">Log in</a></p>
</asp:Content>
