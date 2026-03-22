from get_db_connection import get_db_connection

def get_course_sections_for_specified_course(
    subject_code: str = None,
    course_number: str = None,
):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("{CALL procGetCourseSectionsForSpecifiedCourse(?, ?)}", (subject_code, course_number))
    rows = cursor.fetchall()
    conn.close()

    #Convert rows to list of dictionaries

    results = [
        {
            "SubjectCode": row.SubjectCode,
            "CourseNumber": row.CourseNumber,
            "SectionNumber": row.SectionNumber,
            "SectionSemester": row.SectionSemester,
            "SectionYear": row.SectionYear,
            "RemainingOpenings": row.RemainingOpenings,
            "InstructorName": row.InstructorName
        }
        for row in rows
    ]

    return {"data": results}