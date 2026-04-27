def format_context(rows):
    formatted = []
    for row in rows:
        formatted.append(
            f"Course: {row['SubjectCode']} {row['CourseNumber']} — {row['Title']}\n"
            f"Section: {row['SectionSemester']} {row['SectionYear']} "
            f"(SectionID {row['SectionID']})\n"
            f"Match score (cosine distance): {float(row['Distance']):.3f}  "
            f"[lower = better, flag if above 0.4]\n"
            f"Description: {row['CourseDescription']}"
        )
    return "\n\n---\n\n".join(formatted)