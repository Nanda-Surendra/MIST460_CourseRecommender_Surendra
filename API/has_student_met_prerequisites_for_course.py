from get_db_connection import get_db_connection

def has_student_met_prerequisites_for_course(
    student_id: int,
    subject_code: str,
    course_number: str,
):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("{CALL procHasStudentMetPrerequisitesForCourse(?, ?, ?)}", (student_id, subject_code, course_number))
    rows = cursor.fetchall()
    conn.close()

    #Convert rows to list of dictionaries

    results = [
        {
            "SubjectCode": row.SubjectCode,
            "CourseNumber": row.CourseNumber,
            "MinimumGradeRequired": row.MinimumGradeRequired,
            "StudentGrade": row.StudentGrade
        }
        for row in rows
    ]

    return {"data": results}