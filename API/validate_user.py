from get_db_connection import get_db_connection

def validate_user(
    username: str,
    password: str,
):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("{CALL procValidateUser(?, ?)}", (username, password))
    rows = cursor.fetchall()
    conn.close()

    #Convert rows to list of dictionaries

    results = [
        {
            "AppUserID": row.AppUserID,
            "Fullname": row.Fullname,
        }
        for row in rows
    ]

    return {"data": results}