# 🌿 Plant Doctor AI

An ASP.NET Web Forms application (.NET Framework 4.7.2) that helps users scan plants, see disease results, browse plant guides and manage their account.

---

## 🛠 Tech Stack

| Part | Technology |
|------|-----------|
| Front end | ASP.NET Web Forms (`.aspx`), HTML, CSS |
| Back end | C# (.NET Framework 4.7.2) |
| Database | Microsoft SQL Server LocalDB (`PlantDoctorDB`) |
| Data access | ADO.NET (`System.Data.SqlClient`) |
| IDE | Visual Studio |

---

## 🗄 Database Structure

The database is **not pushed to GitHub** (no `.mdf` / `.ldf` files). Instead, the full structure is documented here and the creation script is available at `PlantDoctorAI/App_Data/Database.sql`. Anyone can recreate the database by running that script.

- **Database name:** `PlantDoctorDB`
- **Server:** `(LocalDB)\MSSQLLocalDB`
- **Total tables:** 1

### Table: `Users`

Stores the registered users (filled by the *Create Account* page).

| # | Column | Data Type | Constraint | Description |
|---|--------|-----------|-----------|-------------|
| 1 | `UserId` | `INT` | **PRIMARY KEY**, `IDENTITY(1,1)` | Auto-generated unique id of the user |
| 2 | `FullName` | `NVARCHAR(100)` | `NOT NULL` | Full name of the user |
| 3 | `Email` | `NVARCHAR(150)` | `NOT NULL`, `UNIQUE` | Email address (one account per email) |
| 4 | `PasswordHash` | `NVARCHAR(200)` | `NOT NULL` | SHA-256 hash of the password (Base64). The plain password is never stored |
| 5 | `CreatedOn` | `DATETIME` | `NOT NULL`, `DEFAULT GETDATE()` | Date and time of registration |

### SQL Script

```sql
IF DB_ID(N'PlantDoctorDB') IS NULL CREATE DATABASE PlantDoctorDB;
GO
USE PlantDoctorDB;
GO
CREATE TABLE Users (
    UserId       INT IDENTITY(1,1) PRIMARY KEY,
    FullName     NVARCHAR(100) NOT NULL,
    Email        NVARCHAR(150) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(200) NOT NULL,
    CreatedOn    DATETIME NOT NULL DEFAULT GETDATE()
);
GO
```

### Query used by the project

```sql
INSERT INTO Users (FullName, Email, PasswordHash) VALUES (@name, @email, @pass)
```

> Used in `Pages/CreateAccount.aspx.cs`. A duplicate email raises SQL error `2627/2601`, which the page shows as *"This email is already registered."*

### Connection String (`Web.config`)

```xml
<add name="PlantDoctorDB"
     connectionString="Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=PlantDoctorDB;Integrated Security=True"
     providerName="System.Data.SqlClient" />
```

### Data that is NOT in the database (in-memory C# classes)

These are currently stored as C# `List<T>` collections inside the page code-behind, so they are **not database tables**:

| Class | File | Fields |
|-------|------|--------|
| `Plant` | `Pages/PlantGuides.aspx.cs` | `Name`, `Latin`, `Category`, `Image` |
| `ScanRecord` | `Pages/ScanHistory.aspx.cs` | `PlantName`, `Status`, `Diagnosis`, `ScanDate`, `Image` |

---

## ▶️ How to Run the Project

1. Clone the repository
   ```bash
   git clone https://github.com/merpiyush/Plant-Doctor-AI-.NET.git
   ```
2. Open **Visual Studio** → *View → SQL Server Object Explorer* → `(localdb)\MSSQLLocalDB`.
3. Right-click **Databases → Add New Database** (name: `PlantDoctorDB`).
4. Right-click the new database → **New Query** → paste the contents of `PlantDoctorAI/App_Data/Database.sql` → **Execute**.
5. Open `PlantDoctorAI.sln` and press **F5**.
6. Start page: `Pages/Splash.aspx` (right-click → *Set As Start Page*).

To check saved registrations:

```sql
SELECT * FROM Users;
```

---

## 📁 Project Structure

```
PlantDoctorAI/
├── App_Data/Database.sql     # database creation script
├── Assets/Images/plants/     # plant images (.svg)
├── Css/Site.css              # styling
├── Pages/                    # all web forms (.aspx + .aspx.cs)
├── Auth.Master               # master page for login screens
├── Site.Master               # master page (top bar + sidebar)
├── Web.config                # settings + connection string
└── PlantDoctorAI.sln         # Visual Studio solution
```

---

## 📄 Pages

Splash, Login, Create Account, Forgot Password, Verify Code, Reset Password, Dashboard, Scan Plant, Analyzing, Healthy Result, Disease Result, Scan History, Plant Guides, Plant Details, Care Guide, Profile, Edit Profile, Change Password, Help & Support.

---

## 👥 Team

- Piyush (`merpiyush`)
- Member 2 – *add name*
- Member 3 – *add name*
