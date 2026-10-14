-- Run this once (Visual Studio: View > SQL Server Object Explorer > (localdb)\MSSQLLocalDB >
-- right-click "Databases" > Add New Database named PlantDoctorDB, then right-click it > New Query > paste > Execute)

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
-- see the saved registrations:
-- SELECT * FROM Users;
