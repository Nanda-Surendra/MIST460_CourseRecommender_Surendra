def format_context(semantically_similar_courses):
    formatted = []
    for each_similar_course in semantically_similar_courses:
        formatted.append(
            f"Course: {each_similar_course['SubjectCode']} {each_similar_course['CourseNumber']} — {each_similar_course['Title']}\n"
            f"Section: {each_similar_course['SectionSemester']} {each_similar_course['SectionYear']} {each_similar_course['SectionNumber']}\n" 
            f"{each_similar_course['CRN']} {each_similar_course['RemainingOpenings']}"
            f"(SectionID {each_similar_course['SectionID']})\n"
            f"Match score (cosine distance): {float(each_similar_course['Distance']):.3f}  "
            f"[lower = better, flag if above 0.4]\n"
            f"Description: {each_similar_course['CourseDescription']}"
        )
    return "\n\n---\n\n".join(formatted)