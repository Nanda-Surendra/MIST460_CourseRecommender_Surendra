from datetime import datetime
from langchain_openai import OpenAIEmbeddings
from get_db_connection import get_db_connection
import json
import pprint
import os

def get_course_recommendations_for_selected_job(job_description: str) -> str:

    #openai_key = os.getenv("OPENAI_API_KEY")
    year_value = datetime.now().year
    semester_value = "Spring"
    user_query = f"Based on the following job description, recommend relevant courses from our database offered in {semester_value} {year_value}: {job_description}"

    #Use the openAI embeddings model to create an embedding for the job description
    embedding_model = OpenAIEmbeddings(model="text-embedding-3-small")

    job_description_embedding = embedding_model.embed_query(job_description)

    conn = get_db_connection()
    cursor = conn.cursor(as_dict=True)

    cursor.execute("EXEC procGetCourseRecommendationsForJobDescription %s, %s, %s", 
                   (json.dumps(job_description_embedding), semester_value, year_value))
    
    semantically_similar_courses = cursor.fetchall()

    #The second openAI model is a generative model.
    generative_model = OpenAIEmbeddings(model="gpt-4o-mini", temperature=0)