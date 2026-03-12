import pyodbc
import os
from dotenv import load_dotenv

load_dotenv()


def get_db_connection():

    server = os.getenv('DB_SERVER')
    database = os.getenv('DB_NAME')
    user = os.getenv('DB_USER')
    password = os.getenv('DB_PASSWORD')
    driver = os.getenv('DB_DRIVER')

    connection_string = f"DRIVER={driver};SERVER={server}; DATABASE={database};UID={user};PWD={password};Encrypt=yes;TrustServerCertificate=yes;Connection Timeout=30;"
                
    return pyodbc.connect(connection_string)