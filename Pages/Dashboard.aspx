<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Main" ContentPlaceHolderID="MainContent" runat="server">
<div class="page-head">
    <h1 class="page-title">Hi, <%= Session["UserName"] ?? "Arjun" %>!</h1>
    <p class="page-sub">Here is how your garden is doing today.</p>
</div>

<div class="search-bar">
    <div class="input-wrap"><span class="input-icon"><span class="ico">🔍</span></span>
        <input type="text" class="pd-input has-icon" placeholder="Search plants, diseases, care tips..." /></div>
    <a href="PlantGuides.aspx" class="btn btn-primary">Search</a>
</div>

<div class="banner">
    <div>
        <h2>Scan your plant with AI</h2>
        <p>Take a photo of a leaf and get an instant health check, disease name and treatment steps.</p>
        <a href="ScanPlant.aspx" class="btn btn-white btn-sm"><span class="ico">📷</span> Scan Now</a>
    </div>
    <div class="banner-bubble"><span class="ico ico-xl">🌱</span></div>
</div>

<div class="section-head"><h2 class="section-title">Popular Plants</h2><a href="PlantGuides.aspx" class="section-link">View all &rsaquo;</a></div>
<div class="plant-grid cols-5">
    <a class="plant-card" href="PlantDetails.aspx">
        <img src="../Assets/Images/plants/rose.svg" alt="Rose" />
        <div class="plant-card-body"><div class="plant-card-name">Rose</div><div class="plant-card-sub">Rosa rubiginosa</div><div class="plant-card-meta">Flowering &middot; Every 2-3 days</div></div>
    </a>
    <a class="plant-card" href="PlantDetails.aspx">
        <img src="../Assets/Images/plants/aloe-vera.svg" alt="Aloe Vera" />
        <div class="plant-card-body"><div class="plant-card-name">Aloe Vera</div><div class="plant-card-sub">Aloe barbadensis</div><div class="plant-card-meta">Succulents &middot; Every 2 weeks</div></div>
    </a>
    <a class="plant-card" href="PlantDetails.aspx">
        <img src="../Assets/Images/plants/money-plant.svg" alt="Money Plant" />
        <div class="plant-card-body"><div class="plant-card-name">Money Plant</div><div class="plant-card-sub">Epipremnum aureum</div><div class="plant-card-meta">Indoor &middot; Weekly</div></div>
    </a>
    <a class="plant-card" href="PlantDetails.aspx">
        <img src="../Assets/Images/plants/mint.svg" alt="Mint" />
        <div class="plant-card-body"><div class="plant-card-name">Mint</div><div class="plant-card-sub">Mentha spicata</div><div class="plant-card-meta">Herbs &middot; Every 2 days</div></div>
    </a>
    <a class="plant-card" href="PlantDetails.aspx">
        <img src="../Assets/Images/plants/marigold.svg" alt="Marigold" />
        <div class="plant-card-body"><div class="plant-card-name">Marigold</div><div class="plant-card-sub">Tagetes erecta</div><div class="plant-card-meta">Flowering &middot; Every 2-3 days</div></div>
    </a>
</div>

<div class="section-head"><h2 class="section-title">Recent Scans</h2><a href="ScanHistory.aspx" class="section-link">Full history &rsaquo;</a></div>
<div class="row-list">
    <div class="row-card">
        <div class="row-left"><img class="row-thumb" src="../Assets/Images/plants/rose.svg" alt="Rose" />
            <div><div class="row-title">Rose</div><div class="row-sub">Today, 10:24 AM</div></div></div>
        <div class="row-right"><span class="badge badge-healthy">Healthy</span><a class="btn btn-outline btn-sm" href="HealthyResult.aspx">View</a></div>
    </div>
    <div class="row-card">
        <div class="row-left"><img class="row-thumb" src="../Assets/Images/plants/basil.svg" alt="Basil" />
            <div><div class="row-title">Basil</div><div class="row-sub">Today, 8:05 AM</div></div></div>
        <div class="row-right"><span class="badge badge-warning">Needs attention</span><a class="btn btn-outline btn-sm" href="DiseaseResult.aspx">View</a></div>
    </div>
</div>
</asp:Content>
