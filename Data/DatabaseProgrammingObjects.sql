--use [mist460-spring2026-prep-database];

/*

-- Understand concepts: SP, Functions (Scalar, Table-valued) -> modularity, reusability, encapsulation.
-- Use to solve a problem

-- Trigger -> automatic execution in response to certain events (e.g., insert, update, delete) on a table.
-- Enroll student in a section (insert into RegistrationSection)
-- create procedure procEnrollStudentInSection(@StudentID int, @SectionID int)

-- By Noon Monday
-- Group project


*/

go

IF OBJECT_ID('procGetCourseSectionsForSpecifiedCourse') is NOT NULL
    DROP PROCEDURE procGetCourseSectionsForSpecifiedCourse;

IF OBJECT_ID('fnGetSemesterFromMonth') is NOT NULL
    DROP FUNCTION fnGetSemesterFromMonth;

IF OBJECT_ID('procGetCoursePrerequisites') is NOT NULL
    DROP PROCEDURE procGetCoursePrerequisites;

IF OBJECT_ID('fnGetCoursePrerequisites') is NOT NULL
    DROP FUNCTION fnGetCoursePrerequisites;

IF OBJECT_ID('fnGetStudentCourseHistory') is NOT NULL
    DROP FUNCTION fnGetStudentCourseHistory;

IF OBJECT_ID('fnGradePointsFromLetterGrade') is NOT NULL
    DROP FUNCTION fnGradePointsFromLetterGrade;

IF OBJECT_ID('trgDecreaseSectionSeats') is NOT NULL
    DROP TRIGGER trgDecreaseSectionSeats;


-- Need days / times for sections, Location

GO
-- Database Programming Objects (Stored Procedures, User-Defined Functions UDF -> Scalar, Table-valued, Triggers)

-- 1. What are the sections of a specific course (optional entry) offered this semester (spring 2026)?

-- Inputs: SubjectCode and CourseNumber (Course)
-- Conditions: Offered in Spring 2026 (Section)
-- Output: SectionID, InstructorName, SeatsAvailable (Section + Instructor)

go
-- scalar function to get a semester base on month number
create or alter function dbo.fnGetSemesterFromMonth()
returns nvarchar(20)
AS
BEGIN
    declare @MonthNumber int = month(getdate());
    declare @Semester nvarchar(20);

    if @MonthNumber in (1, 2, 3, 4, 5)
        set @Semester = N'Spring';
    else if @MonthNumber in (6, 7)
        set @Semester = N'Summer';
    else
        set @Semester = N'Fall';

    return @Semester;
END;

-- select dbo.GetSemesterFromMonth() as CurrentSemester;

go

create or alter procedure procGetCourseSectionsForSpecifiedCourse
(
    @SubjectCode nvarchar(10) = null, -- parameters are for input from the user
    @CourseNumber nvarchar(10) = null -- optional parameters, so input from user is not required
)
AS
begin
    select
        C.SubjectCode, 
        C.CourseNumber, 
        C.Title, 
        S.SectionID, 
        S.CRN, 
        S.SectionNumber, 
        S.SectionSemester, 
        S.SectionYear, 
        S.RemainingOpenings,
        I.FirstName + ' ' + I.LastName AS InstructorName
    from Section S  
        inner join Course C on S.CourseID = C.CourseID
        inner join Instructor I on S.InstructorID = I.InstructorID
    where S.SectionSemester = dbo.fnGetSemesterFromMonth()
    and S.SectionYear = Year(GetDate())
    and C.SubjectCode = ISNULL(@SubjectCode, C.SubjectCode)
    and C.CourseNumber = ISNULL(@CourseNumber, C.CourseNumber)

end;

/*
execute procGetCourseSectionsForSpecifiedCourse
    @SubjectCode = 'MIST',
    @CourseNumber = '460';
*/

go

--drop function dbo.GetSemesterFromMonth



-- 2. What are the prerequisites for a specific course (optional entry)?

GO

CREATE OR ALTER PROCEDURE procGetCoursePrerequisites
(
    @SubjectCode  VARCHAR(30) = NULL,
    @CourseNumber VARCHAR(30)
)
AS
BEGIN
    IF (@SubjectCode IS NULL AND @CourseNumber IS NOT NULL)
    BEGIN
        RAISERROR('Both @SubjectCode and @CourseNumber must be provided together, or both left NULL.', 16, 1); --I used AI to help me solve this edge case. 
        RETURN;
    END;
    SELECT
        prereq.Title, prereq.SubjectCode, prereq.CourseNumber, CP.MinGradeRequired
            FROM CoursePrerequisite CP
        JOIN Course MainCourse ON CP.CourseID = MainCourse.CourseID
        JOIN Course prereq ON CP.PrerequisiteID = prereq.CourseID
    WHERE
        --(@SubjectCode IS NULL OR c.SubjectCode = @SubjectCode)
        MainCourse.SubjectCode = IsNull(@SubjectCode, MainCourse.SubjectCode)
        AND MainCourse.CourseNumber = @CourseNumber;
END;

--EXEC procGetCoursePrerequisites @SubjectCode = 'MIST', @CourseNumber = '460';

-- Use to a table-valued function instead of a stored procedure if you want to use it in a join or subquery.

go

CREATE OR ALTER function fnGetCoursePrerequisites
(
    @SubjectCode  VARCHAR(30) = NULL,
    @CourseNumber VARCHAR(30)
)
returns @Prerequisites table
(
    Title nvarchar(100),
    SubjectCode nvarchar(10),
    CourseNumber nvarchar(10),
    MinGradeRequired nchar(2)
)
AS
BEGIN
    insert into @Prerequisites
    (Title, SubjectCode, CourseNumber, MinGradeRequired)
    SELECT
        prereq.Title, prereq.SubjectCode, prereq.CourseNumber, CP.MinGradeRequired
            FROM CoursePrerequisite CP
        JOIN Course MainCourse ON CP.CourseID = MainCourse.CourseID
        JOIN Course prereq ON CP.PrerequisiteID = prereq.CourseID
    WHERE
        MainCourse.SubjectCode = IsNull(@SubjectCode, MainCourse.SubjectCode)
        AND MainCourse.CourseNumber = @CourseNumber;

    return;
END;

-- select * from fnGetCoursePrerequisites('MIST', '460');





-- 3. Has a specific student completed the prerequisites for a specific course?

-- Find all the courses that specified student has taken
GO

create or alter function fnGetStudentCourseHistory
(
    @StudentID int
)
returns @CourseHistory table
(
    SubjectCode nvarchar(10),
    CourseNumber nvarchar(10),
    Grade nchar(2)
)
AS
BEGIN
    insert into @CourseHistory
    (SubjectCode, CourseNumber, Grade)
    select 
        C.SubjectCode, 
        C.CourseNumber, 
        RS.LetterGrade
    from Registration R
        join RegistrationSection RS on R.RegistrationID = RS.RegistrationID
        join Section S on RS.SectionID = S.SectionID
        join Course C on S.CourseID = C.CourseID
    where R.StudentID = @StudentID;

    return;
END;
-- select * from fnGetStudentCourseHistory(1);

-- Encapsulate logic inside a stored procedure that 
-- checks if the student has met the prerequisites for a course.
go

create or alter function fnGradePointsFromLetterGrade
(
	@LetterGrade nchar(2)
)
returns int
as
begin
	declare @GradePoints int;
	
	set @GradePoints = case @LetterGrade
		when 'A' then 4
		when 'B' then 3
		when 'C' then 2
		when 'D' then 1
		else 0
	end;

	return @GradePoints;
end;

GO

create or alter function fnGradePointsFromLetterGrade
(
	@LetterGrade nchar(2)
)
returns int
as
begin
	declare @GradePoints int;
	
	set @GradePoints = case @LetterGrade
		when 'A' then 4
		when 'B' then 3
		when 'C' then 2
		when 'D' then 1
		else 0
	end;

	return @GradePoints;
end;

-- select dbo.fnGradePointsFromLetterGrade('A') as GradePoints;
-- select dbo.fnGradePointsFromLetterGrade(null) as GradePoints;

go

create or alter TRIGGER trgDecreaseSectionSeats
ON RegistrationSection
AFTER INSERT -- triggering event
AS
BEGIN -- trigger action -- logic to execute when the trigger is fired
    -- Decrease the RemainingOpenings in the Section table by 1 for the corresponding SectionID
    UPDATE S
    SET RemainingOpenings = RemainingOpenings - 1
    FROM Section S
    JOIN inserted I ON S.SectionID = I.SectionID;
END;

go

/*

select * from fnGetCoursePrerequisites('MIST', '460') as Prerequisites
join fnGetStudentCourseHistory(1) as History
    on Prerequisites.SubjectCode = History.SubjectCode
    and Prerequisites.CourseNumber = History.CourseNumber

*/

go