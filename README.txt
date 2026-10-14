PLANT DOCTOR AI  -  ASP.NET Web Forms (.NET Framework 4.7.2)

RUN
 1. Create the database: open App_Data/Database.sql in Visual Studio (SQL Server Object Explorer > New Query) and Execute.
 2. Open PlantDoctorAI.sln and press F5. Start page: Pages/Splash.aspx (right-click > Set As Start Page).

FOLDERS
 (root)          Auth.Master  (login screens)      Site.Master (top bar + sidebar)      Web.config
 Pages/          all 19 web forms (.aspx + .aspx.cs)
 Css/            Site.css
 Assets/Images/  plants/*.svg
 App_Data/       Database.sql

WHERE TO LEARN
 Register validation + database INSERT : Pages/CreateAccount.aspx  +  CreateAccount.aspx.cs   (connection string = Web.config)
 Login validation                      : Pages/Login.aspx          +  Login.aspx.cs
 Other validation                      : ForgotPassword, VerifyCode, ResetPassword (CompareValidator), EditProfile, ChangePassword, HelpSupport
 Collection + delegate + class + method: Pages/PlantGuides.aspx.cs   (List<Plant>, PlantRule delegate, Filter method)
 All other pages are UI only: buttons and links redirect to the next page.
 Default user name is Arjun.
