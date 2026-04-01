import streamlit as st
from fetch_data import fetch_data

def validate_user_ui():
    st.header("Validate User")

    username = st.text_input("Enter Username")
    password = st.text_input("Enter Password", type="password")

    if st.button("Validate User"):
        input_params = {}
        if not username.strip():
            st.error("Username is required.")
        else:
            input_params["username"] = username.strip()
        if not password.strip():
            st.error("Password is required.")
        else:
            input_params["password"] = password.strip()

        df = fetch_data("validate_user/", input_params)

        if df is not None and not df.empty:
            st.success("User validated successfully!")
            output_string = "App User ID: " + str(df["AppUserID"].values[0]) + ", Full Name: " + df["Fullname"].values[0]
            st.write(output_string)
            st.session_state.app_user_id = df["AppUserID"].values[0]
        else:
            st.info("Invalid username or password.")