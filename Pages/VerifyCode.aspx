<%@ Page Title="Verify Code" Language="C#" MasterPageFile="~/Auth.Master" AutoEventWireup="true" CodeBehind="VerifyCode.aspx.cs" Inherits="PlantDoctorAI.Pages.VerifyCode" %>
<asp:Content ID="Hero" ContentPlaceHolderID="HeroContent" runat="server">
    <h2>Almost there - just one code away.</h2>
    <p>Enter the code we sent to confirm it is really you.</p>
</asp:Content>

<asp:Content ID="Form" ContentPlaceHolderID="FormContent" runat="server">
<a href="ForgotPassword.aspx" class="auth-back">&larr; Back</a>
<div class="auth-icon-badge"><span class="ico">🛡️</span></div>
<h3>Enter Verification Code</h3>
<p class="auth-sub">We sent a 6 digit code to your email.</p>

<div class="form-group">
  <asp:TextBox ID="txtCode" runat="server" CssClass="pd-input otp-single" MaxLength="6" placeholder="000000" />
  <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode" ErrorMessage="Please enter the 6 digit code." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revCode" runat="server" ControlToValidate="txtCode" ValidationExpression="^\d{6}$" ErrorMessage="The code must be exactly 6 digits." CssClass="field-error" Display="Dynamic" />
</div>

<asp:Button ID="btnVerify" runat="server" Text="Verify" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnVerify_Click" />
<p class="auth-foot">Didn't get a code? <a href="ForgotPassword.aspx">Resend</a></p>
</asp:Content>
