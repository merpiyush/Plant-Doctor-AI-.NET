<%@ Page Title="Scan History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ScanHistory.aspx.cs" Inherits="PlantDoctorAI.Pages.ScanHistory" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <h1 class="page-title">Scan History</h1>
    <p class="page-sub">All your plant check-ups in one place.</p>
</div>

<div class="tabs">
    <a href="ScanHistory.aspx" class="<%= Tab("All") %>">All</a>
    <a href="ScanHistory.aspx?status=Healthy" class="<%= Tab("Healthy") %>">Healthy</a>
    <a href="ScanHistory.aspx?status=Warning" class="<%= Tab("Warning") %>">Needs Attention</a>
    <a href="ScanHistory.aspx?status=Disease" class="<%= Tab("Disease") %>">Disease</a>
</div>

<div class="row-list">
    <asp:Repeater ID="rptScans" runat="server">
        <ItemTemplate>
            <div class="row-card">
                <div class="row-left">
                    <img class="row-thumb" src='<%# Eval("Image") %>' alt='<%# Eval("PlantName") %>' />
                    <div><div class="row-title"><%# Eval("PlantName") %></div><div class="row-sub"><%# Eval("ScanDate") %></div></div>
                </div>
                <div class="row-right">
                    <span class='badge <%# Eval("BadgeClass") %>'><%# Eval("Diagnosis") %></span>
                    <a class="btn btn-outline btn-sm" href='<%# Eval("ResultPage") %>'>View</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
</asp:Content>
