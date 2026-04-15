from get_db_connection import get_db_connection


def create_embeddings_for_chunks():
    conn = get_db_connection()
    cursor = conn.cursor()

    #Initialize the OpenAI model and text splitter
    embedding_model = OpenAIEmbeddings(model="text-embedding-3-small")
    text_splitter = RecursiveCharacterTextSplitter(chunk_size=250, chunk_overlap=20)

    # Fetch all course chunks
    cursor.execute("EXEC procGetAllCourses")
    chunks = cursor.fetchall()

    for chunk in chunks:
        chunk_id = chunk.ChunkID
        course_chunk = chunk.CourseChunk

        # Call OpenAI API to get embedding for the course chunk
        embedding = get_embedding_from_openai(course_chunk)

        # Update the Chunks table with the embedding
        cursor.execute("EXEC procInsertChunk %s, %s, %s", (course_chunk, embedding, course_id))

    conn.commit()
    cursor.close()
    conn.close()