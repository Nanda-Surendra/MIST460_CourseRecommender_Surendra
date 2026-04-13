import pymssql

from get_db_connection import get_db_connection

def get_course_sections_for_specified_course(
    subject_code: str = None,
    course_number: str = None,
):
    conn = get_db_connection()
    #1
    cursor = conn.cursor(as_dict=True)#explicitly request dictionary results so we can use column names instead of indices
    
    #2 (two options)
    #cursor.execute("{CALL procGetCourseSectionsForSpecifiedCourse(?, ?)}", (subject_code, course_number))    
    #cursor.callproc("procGetCourseSectionsForSpecifiedCourse", (subject_code, course_number))
    cursor.execute("EXEC procGetCourseSectionsForSpecifiedCourse %s, %s", (subject_code, course_number))
    
    #3
    try:
        rows = cursor.fetchall()
    except pymssql.Error:
        rows = []

    conn.close()

    #Convert rows to list of dictionaries

    #4
    results = [
        {
            "SubjectCode": row["SubjectCode"],
            "CourseNumber": row["CourseNumber"],
            "SectionNumber": row["SectionNumber"],
            "SectionSemester": row["SectionSemester"],
            "SectionYear": row["SectionYear"],
            "RemainingOpenings": row["RemainingOpenings"],
            "InstructorName": row["InstructorName"]
        }
        for row in rows
    ]

    return {"data": results}