from get_db_connection import get_db_connection
import pymssql

def has_student_met_prerequisites_for_course(
    student_id: int,
    subject_code: str,
    course_number: str,
):
    conn = get_db_connection()
    cursor = conn.cursor(as_dict=True)
    #cursor.execute("{CALL procHasStudentMetPrerequisitesForCourse(?, ?, ?)}", (student_id, subject_code, course_number))
    cursor.callproc("procHasStudentMetPrerequisitesForCourse", (student_id, subject_code, course_number))


    try:
        rows = cursor.fetchall()
    except pymssql.Error:
        rows = []
    
    conn.close()

    #Convert rows to list of dictionaries

    results = [
        {
            "SubjectCode": row["SubjectCode"],
            "CourseNumber": row["CourseNumber"],
            "MinimumGradeRequired": row["MinimumGradeRequired"],
            "StudentGrade": row["StudentGrade"]
        }
        for row in rows
    ]

    return {"data": results}