use MIST460_RDB_Lastname;

GO

-- Drop tables if they exist to avoid conflicts
if object_id('Student') IS NOT NULL
    DROP TABLE Student;

if OBJECT_ID('AppUser') IS NOT NULL
    DROP TABLE AppUser;

GO

create table AppUser
(
    AppUserID int identity(1,1) 
        constraint PK_AppUser primary key,
    Firstname NVARCHAR(50) not null,
    Lastname NVARCHAR(50) not null,
    Email NVARCHAR(100) not null
        CONSTRAINT UK_AppUser_Email UNIQUE,
    PhoneNumber NVARCHAR(20) null,
    PasswordHash VARBINARY(255) not null,
    UserRole NVARCHAR(20) not null
        CONSTRAINT CK_AppUser_UserRole CHECK (UserRole IN ('Student', 'Advisor', 'Alum'))
);

go

create table Student
(
    StudentID int  
        constraint PK_Student primary key
        constraint FK_Student_AppUserID foreign key references AppUser(AppUserID),
    TotalCreditsCompleted int not null 
        constraint DF_Student_CreditsCompleted DEFAULT 0,
    GraduationYear NVARCHAR(25) not null,
    OverallGPA decimal(3,2) not null 
        constraint DF_Student_OverallGPA DEFAULT 0.00,
    MajorGPA decimal(3,2) not null 
        constraint DF_Student_MajorGPA DEFAULT 0.00
);