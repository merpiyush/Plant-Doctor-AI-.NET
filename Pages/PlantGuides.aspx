<%@ Page Title="Plant Guides" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlantGuides.aspx.cs" Inherits="PlantDoctorAI.Pages.PlantGuides" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <h1 class="page-title">Plant Guides</h1>
    <p class="page-sub">Tap a category to filter the plants.</p>
</div>

<div class="search-bar">
    <div class="input-wrap"><span class="input-icon"><span class="ico">🔍</span></span>
        <input type="text" class="pd-input has-icon" placeholder="Search plants..." /></div>
</div>

<div class="tabs">
    <a href="PlantGuides.aspx" class="<%= Tab("All") %>">All</a>
    <a href="PlantGuides.aspx?cat=Indoor" class="<%= Tab("Indoor") %>">Indoor</a>
    <a href="PlantGuides.aspx?cat=Flowering" class="<%= Tab("Flowering") %>">Flowering</a>
    <a href="PlantGuides.aspx?cat=Succulents" class="<%= Tab("Succulents") %>">Succulents</a>
    <a href="PlantGuides.aspx?cat=Herbs" class="<%= Tab("Herbs") %>">Herbs</a>
</div>

<div class="plant-grid cols-4">
    <asp:Repeater ID="rptPlants" runat="server">
        <ItemTemplate>
            <a class="plant-card" href="PlantDetails.aspx">
                <img src='<%# Eval("Image") %>' alt='<%# Eval("Name") %>' />
                <div class="plant-card-body">
                    <div class="plant-card-name"><%# Eval("Name") %></div>
                    <div class="plant-card-sub"><%# Eval("Latin") %></div>
                    <div class="plant-card-meta"><%# Eval("Category") %></div>
                </div>
            </a>
        </ItemTemplate>
    </asp:Repeater>
</div>
</asp:Content>
