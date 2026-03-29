import streamlit as st
import requests
import pandas as pd

FASTAPI_BASE_URL = "http://localhost:8000"  # Change this to your FastAPI server URL

def fetch_data(endpoint: str, input_params: dict, method: str = "GET") -> pd.DataFrame:

    if method == "GET":
        response = requests.get(f"{FASTAPI_BASE_URL}/{endpoint}", params=input_params)
    
    if response.status_code == 200:
        payload = response.json()
        rows = payload.get("data", [])
        df = pd.DataFrame(rows)
        return df
    else:
        st.error(f"Error fetching data: {response.status_code} - {response.text}")
        return None
