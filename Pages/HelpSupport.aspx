<%@ Page Title="Help & Support" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HelpSupport.aspx.cs" Inherits="PlantDoctorAI.Pages.HelpSupport" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <h1 class="page-title">Help &amp; Support</h1>
    <p class="page-sub">We are happy to help you and your plants.</p>
</div>

<div class="help-grid">
    <div class="tile"><div class="tile-icon"><span class="ico">✉️</span></div><div class="tile-value">Email us</div><div class="tile-label">support@plantdoctor.ai</div></div>
    <div class="tile"><div class="tile-icon"><span class="ico">💬</span></div><div class="tile-value">Live chat</div><div class="tile-label">Mon - Sat, 9 AM to 6 PM</div></div>
    <div class="tile"><div class="tile-icon"><span class="ico">📞</span></div><div class="tile-value">Call us</div><div class="tile-label">+91 99999 00000</div></div>
</div>

<div class="help-two">
    <div>
        <h2 class="section-title" style="margin-bottom:12px">Frequently asked questions</h2>
        <div class="faq open"><button type="button" class="faq-q" onclick="this.parentNode.classList.toggle('open')"><span>How accurate is the AI scan?</span>&rsaquo;</button><div class="faq-a">Clear, well lit leaf photos give the best results. Always confirm serious problems with a local nursery.</div></div>
        <div class="faq"><button type="button" class="faq-q" onclick="this.parentNode.classList.toggle('open')"><span>Which photo works best?</span>&rsaquo;</button><div class="faq-a">A sharp photo of one leaf in daylight, with the leaf filling most of the frame.</div></div>
        <div class="faq"><button type="button" class="faq-q" onclick="this.parentNode.classList.toggle('open')"><span>Can I scan more than one plant?</span>&rsaquo;</button><div class="faq-a">Yes. Scan as many plants as you like - every scan is saved in Scan History.</div></div>
        <div class="faq"><button type="button" class="faq-q" onclick="this.parentNode.classList.toggle('open')"><span>Is my data safe?</span>&rsaquo;</button><div class="faq-a">Passwords are saved as a hash, never as plain text.</div></div>
    </div>

    <div class="card card-pad">
        <h2 class="section-title" style="margin-bottom:12px">Send us a message</h2>
        <asp:Label ID="lblMessage" runat="server" />

        <div class="form-group">
  <label class="form-label">Your Name</label>
  <div class="input-wrap">
    <span class="input-icon"><span class="ico">👤</span></span>
    <asp:TextBox ID="txtName" runat="server" CssClass="pd-input has-icon" MaxLength="60" placeholder="Your name" />
  </div>
  <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." CssClass="field-error" Display="Dynamic" />
  <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName" ValidationExpression="^[A-Za-z][A-Za-z .'-]{1,59}$" ErrorMessage="Use letters only (2 to 60 characters)." CssClass="field-error" Display="Dynamic" />
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
            <label class="form-label">Message</label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="pd-input" placeholder="How can we help?" />
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Please write a message." CssClass="field-error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revMessage" runat="server" ControlToValidate="txtMessage" ValidationExpression="^[\s\S]{10,1000}$" ErrorMessage="Message must be 10 to 1000 characters." CssClass="field-error" Display="Dynamic" />
        </div>
        <asp:Button ID="btnSend" runat="server" Text="Send Message" CssClass="btn btn-primary btn-block" OnClick="btnSend_Click" />
    </div>
</div>
</asp:Content>
