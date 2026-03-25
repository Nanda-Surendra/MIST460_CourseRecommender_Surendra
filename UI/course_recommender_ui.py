import streamlit as st

with st.sidebar:
    st.title("Course Recommender System")

    #Drop down for course recommendation functionalities
    api_end_point = st.selectbox(
        "Select a course recommendation functionality:",
        [
            "Get Course Sections for Specified Course",
            "Get Course Prerequisites"
        ]
    )

    # if api_end_point == "Get Course Sections for Specified Course":
    #     get_course_sections_for_specified_course_ui()
    # elif api_end_point == "Get Course Prerequisites":
    #     get_course_prerequisites_ui()
