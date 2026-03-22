from get_db_connection import get_db_connection

def get_course_prerequisites(
    subject_code: str = None,
    course_number: str = None,
):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("{CALL procGetCoursePrerequisites(?, ?)}", (subject_code, course_number))
    rows = cursor.fetchall()
    conn.close()

    #Convert rows to list of dictionaries

    results = [
        {
            "MainCourseTitle": row.MainCourseTitle,
            "MainCourseSubjectCode": row.MainCourseSubjectCode,
            "MainCourseNumber": row.MainCourseNumber,
            "PrerequisiteTitle": row.PrerequisiteTitle,
            "PrerequisiteSubjectCode": row.PrerequisiteSubjectCode,
            "PrerequisiteCourseNumber": row.PrerequisiteCourseNumber,
            "MinGradeRequired": row.MinGradeRequired
        }
        for row in rows
    ]

    return {"data": results}