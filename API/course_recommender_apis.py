from fastapi import FastAPI
from get_course_sections_for_specified_course import get_course_sections_for_specified_course
from get_course_prerequisites import get_course_prerequisites
from has_student_met_prerequisites_for_course import has_student_met_prerequisites_for_course
from validate_user import validate_user
from get_course_recommendations_for_selected_job import get_course_recommendations_for_selected_job

app = FastAPI()

@app.get("/get_course_sections_for_specified_course/")
def get_course_sections_for_specified_course_endpoint(subject_code: str = None, course_number: str = None):
    return get_course_sections_for_specified_course(subject_code, course_number)

@app.get("/get_course_prerequisites/")
def get_course_prerequisites_endpoint(subject_code: str = None, course_number: str = None):
    return get_course_prerequisites(subject_code, course_number)

@app.get("/has_student_met_prerequisites_for_course/")
def has_student_met_prerequisites_for_course_endpoint(student_id: int, subject_code: str, course_number: str):
    return has_student_met_prerequisites_for_course(student_id, subject_code, course_number)

@app.get("/validate_user/")
def validate_user_endpoint(username: str, password: str):
    return validate_user(username, password)

@app.get("/get_course_recommendations_for_selected_job/")
def get_course_recommendations_for_selected_job_endpoint(job_description: str):
    return get_course_recommendations_for_selected_job(job_description)