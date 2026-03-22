from fastapi import FastAPI
from get_course_sections_for_specified_course import get_course_sections_for_specified_course
from get_course_prerequisites import get_course_prerequisites

app = FastAPI()

@app.get("/get_course_sections_for_specified_course")
def get_course_sections_for_specified_course_endpoint(subject_code: str = None, course_number: str = None):
    return get_course_sections_for_specified_course(subject_code, course_number)

@app.get("/get_course_prerequisites")
def get_course_prerequisites_endpoint(subject_code: str = None, course_number: str = None):
    return get_course_prerequisites(subject_code, course_number)