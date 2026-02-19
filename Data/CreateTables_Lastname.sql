use MIST460_RDB_Lastname; 

-- Order matters (Why?)
-- Updated on Feb 18

IF OBJECT_ID('RegistrationSection') IS NOT NULL DROP TABLE RegistrationSection;
IF OBJECT_ID('Registration') IS NOT NULL DROP TABLE Registration;
IF OBJECT_ID('Section') IS NOT NULL DROP TABLE Section;
IF OBJECT_ID('Instructor') IS NOT NULL DROP TABLE Instructor;
if OBJECT_ID('CoursePrerequisite') IS NOT NULL DROP TABLE CoursePrerequisite;
IF OBJECT_ID('Course')         IS NOT NULL DROP TABLE Course;
IF OBJECT_ID('Major')         IS NOT NULL DROP TABLE Major;
IF OBJECT_ID('Alum')           IS NOT NULL DROP TABLE Alum;
IF OBJECT_ID('Advisor')     IS NOT NULL DROP TABLE Advisor;
IF OBJECT_ID('Student')        IS NOT NULL DROP TABLE Student;
IF OBJECT_ID('AppUser')        IS NOT NULL DROP TABLE AppUser;

-- create CoursePrerequisite table
-- create Registration
-- create RegistrationSection


GO

CREATE TABLE AppUser (
    AppUserID       INT IDENTITY(1,1) 
        CONSTRAINT PK_AppUser PRIMARY KEY,
    Firstname        NVARCHAR(50)  NOT NULL,
    Lastname        NVARCHAR(50)  NOT NULL,
    Email           NVARCHAR(100)  NOT NULL 
        CONSTRAINT UK_AppUser_Email UNIQUE,
    PhoneNumber     NVARCHAR(20)   NULL,
    PasswordHash    VARBINARY(256)  NOT NULL,      -- store salted hash
    UserRole        NVARCHAR(20)   NOT NULL
        CONSTRAINT CK_AppUser_UserRole CHECK (UserRole IN (N'Student', N'Advisor',N'Alum')
    )
);
GO

/*
alter table AppUser
	nocheck constraint CK_AppUser_UserRole;

alter table AppUser
	check constraint CK_AppUser_UserRole;
*/

CREATE TABLE Student (
    StudentID               INT 
        CONSTRAINT PK_Student PRIMARY KEY
        CONSTRAINT FK_Student_AppUser FOREIGN KEY (StudentID)
        REFERENCES AppUser(AppUserID) ON DELETE CASCADE,
    TotalCreditsCompleted   INT NOT NULL
        CONSTRAINT DF_Student_Credits DEFAULT (0)
        CONSTRAINT CK_Student_TCC CHECK (TotalCreditsCompleted >= 0),
    GraduationSemesterYear NVARCHAR(25) not null,
    OverallGPA decimal(3,2) not null 
        constraint DF_Student_OverallGPA DEFAULT 0.00,
    MajorGPA decimal(3,2) not null 
        constraint DF_Student_MajorGPA DEFAULT 0.00
);

GO

CREATE TABLE Advisor (
    AdvisorID   INT CONSTRAINT PK_Advisor PRIMARY KEY,
    CONSTRAINT FK_Advisor_AppUser FOREIGN KEY (AdvisorID)
        REFERENCES AppUser(AppUserID) ON DELETE CASCADE
);
GO

CREATE TABLE Alum (
    AlumID              INT CONSTRAINT PK_Alum PRIMARY KEY,
    GraduationSemesterYear      NVARCHAR(25) NOT NULL,
    CONSTRAINT FK_Alum_AppUser FOREIGN KEY (AlumID)
        REFERENCES AppUser(AppUserID) ON DELETE CASCADE
);
GO


CREATE TABLE Major (
    MajorID     INT IDENTITY(1,1) CONSTRAINT PK_Major PRIMARY KEY,
    MajorName   NVARCHAR(200) NOT NULL CONSTRAINT UK_Major_Name UNIQUE
);
GO

CREATE TABLE Course (
    CourseID        INT IDENTITY(1,1) CONSTRAINT PK_Course PRIMARY KEY,
    SubjectCode     NVARCHAR(10)   NOT NULL,      -- e.g., 'MIST'
    CourseNumber    NVARCHAR(10)   NOT NULL,      -- e.g., '460'
    Title           NVARCHAR(200)  NOT NULL,
    CourseDescription     NVARCHAR(MAX)  NULL,
    Credits         DECIMAL(4,1)   NOT NULL CONSTRAINT DF_Course_Credits DEFAULT (3.0),
	Capacity int not null default(0),
    CONSTRAINT UK_Course_SubjectNumber UNIQUE (SubjectCode, CourseNumber),
    CONSTRAINT CK_Course_Credits CHECK (Credits > 0 AND Credits <= 12.0)
);
GO


create table Instructor (
    InstructorID int identity(1,1) not null,
    FirstName nvarchar(50) not null,
    LastName nvarchar(50) not null,
    constraint pkInstructor primary key(InstructorID)
);

go

CREATE TABLE Section (
    SectionID            INT IDENTITY(1,1) CONSTRAINT PK_Section PRIMARY KEY,
    CourseID                    INT NOT NULL,
    InstructorID                INT NOT NULL,
    CRN                         NCHAR(5) NOT NULL,
    SectionSemester      NVARCHAR(12) NOT NULL, -- 'Spring','Summer','Fall','Winter'
    SectionYear          int NOT NULL,
    SectionNumber               NVARCHAR(10) NULL,
    RemainingOpenings           INT NOT NULL CONSTRAINT DF_Section_Seats DEFAULT (0),
    SectionAverageRating DECIMAL(4,2) NOT NULL CONSTRAINT DF_Section_Avg DEFAULT (0.0),
    CONSTRAINT FK_Section_Course FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID) ON DELETE CASCADE,
    CONSTRAINT FK_Section_Instructor FOREIGN KEY (InstructorID)
        REFERENCES Instructor(InstructorID) ON DELETE NO ACTION,
    CONSTRAINT CK_Section_Sem CHECK (SectionSemester IN (N'Spring',N'Summer',N'Fall',N'Winter')),
    CONSTRAINT CK_Section_Seats CHECK (RemainingOpenings >= 0),
    CONSTRAINT CK_CourseOffering_Avg CHECK (SectionAverageRating >= 0 AND SectionAverageRating <= 5)
);

GO

create table CoursePrerequisite (
    CoursePrerequisiteID int identity(1,1) not null
        CONSTRAINT PK_CoursePrerequisite PRIMARY KEY,
    CourseID int not null
        CONSTRAINT FK_CP_Course FOREIGN KEY (CourseID) REFERENCES Course(CourseID),-- ON DELETE CASCADE,
    PrerequisiteCourseID int not null
        CONSTRAINT FK_CP_PrerequisiteCourse FOREIGN KEY (PrerequisiteCourseID) REFERENCES Course(CourseID),-- ON DELETE CASCADE,
    constraint UK_CoursePrerequisite UNIQUE(CourseID, PrerequisiteCourseID),
    MinGradeRequired nchar(2) not null
        constraint CK_CoursePrerequisite_Grade CHECK (MinGradeRequired IN (N'A', N'B', N'C', N'D')),
    CONSTRAINT CK_CoursePrereq_NotSelf CHECK (CourseID <> PrerequisiteCourseID)
);

GO

create table Registration (
    RegistrationID int identity(1,1) not null
        constraint PK_Registration primary key,
    StudentID int not null
        constraint FK_Registration_Student foreign key(StudentID) references Student(StudentID) on delete cascade,
    RegistrationDate datetime not null default getdate(),
    RegistrationSemester nvarchar(12) not null
        constraint CK_Registration_Sem CHECK (RegistrationSemester IN (N'Spring',N'Summer',N'Fall',N'Winter')),
    RegistrationYear int not null
        constraint DF_Registration_Year DEFAULT (YEAR(getdate())),
    constraint UK_Student_Registration UNIQUE(StudentID, RegistrationSemester, RegistrationYear)
);

GO

create table RegistrationSection (
    RegistrationSectionID int identity(1,1) not null
        constraint PK_RegistrationSection primary key,
    RegistrationID int not null
        constraint FK_RS_Registration foreign key(RegistrationID) references Registration(RegistrationID) on delete cascade,
    SectionID int not null
        constraint FK_RS_Section foreign key(SectionID) references Section(SectionID),
    constraint UK_RegistrationSection UNIQUE(RegistrationID, SectionID),
    EnrollmentStatus NVARCHAR(20) not null
        constraint CK_Enrollment_Status CHECK (EnrollmentStatus IN (N'Enrolled', N'Waitlisted', N'Dropped', N'Completed')),
    LetterGrade nchar(2) null
        constraint CK_RegistrationSection_Grade CHECK (LetterGrade IN (N'A', N'B', N'C', N'D', N'F', N'W', null))
);

