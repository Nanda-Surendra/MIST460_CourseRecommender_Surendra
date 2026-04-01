import streamlit as st
from fetch_data import fetch_data

def has_student_met_prerequisites_for_course_ui():
    
    st.header("Has Student Met Prerequisites for Course")

    student_id  = st.text_input("Student ID", value=st.session_state.app_user_id, disabled=True)
    subject_code = st.text_input("Enter Subject Code (e.g., CS)")
    course_number = st.text_input("Enter Course Number (e.g., 101)")

    if st.button("Check If Student Has Met Prerequisites"):
        input_params = {}
        if student_id.strip():
            input_params["student_id"] = student_id.strip()
        if subject_code.strip():
            input_params["subject_code"] = subject_code.strip()
        if course_number.strip():
            input_params["course_number"] = course_number.strip()

        df = fetch_data("has_student_met_prerequisites_for_course/", input_params)

        if df is not None:
            if df.empty:
                st.success("The student has met the prerequisites for the specified course.")
            else:
                st.warning("The student has NOT met the prerequisites for the specified course. Missing prerequisites:")
                st.dataframe(df, use_container_width=True, hide_index=True)
        else:
            st.info("No course prerequisites found for the specified course.")