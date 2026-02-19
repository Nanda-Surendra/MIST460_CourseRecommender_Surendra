USE MIST460_RDB_Lastname; 

go

-- Major rows

INSERT INTO Major (MajorName) VALUES
 (N'MIS'),
 (N'Computer Science'),
 (N'Data Analytics'),
 (N'Cybersecurity'),
 (N'Finance');

go

-- Course rows

INSERT INTO Course 
(SubjectCode, CourseNumber, Title, CourseDescription, Credits, Capacity)
VALUES
-- 1
('MIST', '320', 'Managing Information Technology',
N'This course provides a comprehensive overview of information technology management within modern organizations. Students explore the strategic role of IT in achieving business objectives, covering topics such as IT governance, infrastructure management, technology adoption, and digital transformation. The course emphasizes the alignment of IT strategies with organizational goals, risk management, and the effective use of technology to create competitive advantages. Through case studies and real-world applications, students develop skills in evaluating IT investments and managing technology-driven change.',
3.0, 100),

-- 2
('MIST', '351', 'Database Management Systems',
N'An introduction to the theory, design, and implementation of database systems. Students learn relational database concepts, SQL programming, normalization techniques, and database design methodologies. The course covers data modeling using entity-relationship diagrams, query optimization, transaction management, and database security. Practical laboratory work involves designing and implementing databases for business applications. Students gain hands-on experience with industry-standard database management systems and develop skills essential for managing organizational data assets effectively and efficiently.',
3.0, 60),

-- 3
('MIST', '352', 'Business Application Programming',
N'This course introduces fundamental programming concepts and techniques for developing business applications. Students learn programming logic, data structures, object-oriented programming principles, and application development using modern programming languages. Topics include user interface design, event-driven programming, data validation, and integration with databases. Through hands-on projects, students develop skills in creating practical business solutions, emphasizing code quality, maintainability, and user experience. The course prepares students to translate business requirements into functional software applications.',
3.0, 60),

-- 4
('MIST', '353', 'Advanced Information Technology',
N'An advanced exploration of cutting-edge information technologies and their business applications. The course covers emerging technologies including cloud computing, mobile platforms, API integration, microservices architecture, and DevOps practices. Students examine technology trends, evaluate their potential business impact, and develop strategies for technology adoption. Practical projects involve implementing modern IT solutions and exploring tools that enhance organizational efficiency. The course emphasizes critical thinking about technology selection and the practical skills needed to work with contemporary IT infrastructures.',
3.0, 55),

-- 5
('MIST', '355', 'Data Communications',
N'A comprehensive study of data communications and computer networking fundamentals. Students explore network architectures, protocols, transmission media, and networking devices. Topics include the OSI and TCP/IP models, IP addressing, routing, network security, wireless technologies, and network management. The course combines theoretical foundations with practical applications, including network design, configuration, and troubleshooting. Students gain hands-on experience with network simulation tools and real networking equipment, preparing them for roles in network administration and infrastructure management.',
3.0, 50),

-- 6
('MIST', '450', 'Systems Analysis',
N'This course focuses on the early phases of the systems development life cycle, emphasizing requirements gathering, analysis, and system planning. Students learn structured and object-oriented analysis techniques, process modeling using data flow diagrams and UML, and requirements specification methods. The course covers stakeholder analysis, feasibility studies, and project initiation. Through team-based projects, students practice eliciting requirements from users, documenting system specifications, and creating analysis models. The course develops critical thinking and communication skills essential for successful systems analysis roles.',
3.0, 35),

-- 7
('MIST', '452', 'Systems Design and Development',
N'Building on systems analysis concepts, this course covers the later phases of the SDLC including system design, implementation, testing, and deployment. Students learn architectural design patterns, user interface design principles, data design techniques, and implementation strategies. Topics include system integration, quality assurance, testing methodologies, and change management. Through capstone projects, students design and develop complete information systems, applying best practices in software engineering. The course emphasizes practical skills in creating robust, scalable, and user-centered systems.',
3.0, 35),

-- 8
('MIST', '455', 'Introduction to Machine Learning',
N'An introduction to fundamental machine learning concepts, algorithms, and applications in business contexts. Students explore supervised and unsupervised learning techniques including regression, classification, clustering, and dimensionality reduction. The course covers data preprocessing, feature engineering, model evaluation, and performance metrics. Practical labs involve implementing ML algorithms using Python and popular libraries such as scikit-learn and pandas. Students learn to identify appropriate ML techniques for business problems and develop skills in building, training, and deploying predictive models for data-driven decision making.',
3.0, 35),

-- 9
('MIST', '460', 'Analysis and Design of AI and ML Systems',
N'An advanced course focusing on analyzing, designing, and implementing enterprise systems that integrate artificial intelligence and machine learning capabilities. Students explore AI system architectures, ML pipeline design, model deployment strategies, and production ML systems. Topics include MLOps practices, model monitoring, A/B testing, ethical AI considerations, and responsible AI development. The course covers agentic AI systems, prompt engineering, and integration of large language models into business applications. Through projects, students design end-to-end AI solutions addressing real business challenges.',
3.0, 30),

-- 10
('CS', '110', 'Introduction to Computer Science',
N'A foundational course introducing computer science principles and programming fundamentals. Students learn computational thinking, algorithm development, problem-solving strategies, and basic programming constructs including variables, control structures, functions, and data structures. The course uses a high-level programming language to teach core concepts such as abstraction, modularity, and code organization. Students develop programs to solve computational problems and gain exposure to fundamental computer science topics including recursion, searching, and sorting. This course provides the foundation for advanced computer science studies.',
3.0, 80),

-- 11
('CS', '111', 'Introduction to Data Structures',
N'This course explores fundamental data structures and their applications in algorithm development. Students study arrays, linked lists, stacks, queues, trees, graphs, and hash tables, learning their implementation, analysis, and appropriate use cases. The course emphasizes algorithm complexity analysis, including Big O notation, and covers classic algorithms for searching, sorting, and traversal. Through programming assignments, students implement data structures and algorithms, developing skills in writing efficient, well-structured code. The course builds a foundation for advanced topics in computer science and software development.',
3.0, 40),

-- 12
('CS', '210', 'Intermediate Programming',
N'An intermediate-level course covering object-oriented programming principles and advanced programming techniques. Students explore design patterns, inheritance, polymorphism, encapsulation, and abstraction in depth. Topics include exception handling, file I/O, collections framework, generic programming, and software testing strategies. The course emphasizes code quality, maintainability, and professional software development practices. Students work on substantial programming projects, learning to design and implement complex applications using industry-standard development tools and version control systems. This course prepares students for advanced software engineering roles.',
3.0, 30),

-- 13
('DH', '310', 'Foundations of Digital Health',
N'This course provides a comprehensive introduction to digital health technologies and their applications in modern healthcare. Students explore electronic health records, health information systems, telemedicine platforms, and mobile health applications. Topics include healthcare data standards, interoperability, patient engagement technologies, and digital health policy. The course examines how technology transforms healthcare delivery, improves patient outcomes, and enhances care coordination. Students analyze real-world digital health implementations and develop an understanding of the opportunities and challenges in deploying health information technologies across diverse healthcare settings.',
3.0, 45),

-- 14
('DH', '420', 'AI in Healthcare',
N'An advanced course exploring artificial intelligence and machine learning applications in healthcare and medicine. Students examine AI techniques for medical imaging analysis, clinical decision support, predictive analytics, precision medicine, and drug discovery. Topics include deep learning for diagnostic imaging, natural language processing for clinical documentation, and ML models for patient risk stratification. The course covers ethical considerations, regulatory frameworks, and validation requirements for AI in healthcare. Students work on projects applying AI to real healthcare datasets, learning to develop, evaluate, and deploy responsible AI solutions in clinical environments.',
3.0, 30),

-- 15
('DH', '425', 'Health Data Analytics',
N'This course focuses on analyzing healthcare data to generate actionable insights for improving patient care and operational efficiency. Students learn statistical methods, data mining techniques, and visualization strategies specific to healthcare datasets. Topics include population health analytics, clinical outcomes analysis, healthcare quality metrics, and predictive modeling for hospital readmissions. The course covers working with electronic health records, claims data, and public health datasets. Students gain practical experience using analytics tools to identify trends, evaluate interventions, and support evidence-based decision making in healthcare organizations.',
3.0, 35),

-- 16
('DH', '430', 'Healthcare Information Security',
N'A comprehensive course on protecting sensitive health information and ensuring compliance with healthcare privacy regulations. Students explore HIPAA requirements, security risk assessment methodologies, encryption techniques, access controls, and incident response planning. Topics include protecting electronic health records, securing medical devices, preventing data breaches, and managing third-party risks. The course covers emerging threats to healthcare organizations including ransomware, phishing attacks, and insider threats. Through case studies and practical exercises, students develop skills in implementing security controls and maintaining patient data confidentiality in healthcare environments.',
3.0, 40),

-- 17
('MKTG', '350', 'Digital Marketing Strategy',
N'This course examines digital marketing strategies and tactics in the contemporary business environment. Students explore search engine optimization, social media marketing, content marketing, email campaigns, and digital advertising. Topics include marketing analytics, customer journey mapping, conversion optimization, and marketing automation. The course emphasizes data-driven decision making and ROI measurement for digital marketing initiatives. Students develop integrated digital marketing campaigns, learning to leverage multiple channels to reach target audiences effectively. Practical projects involve using industry-standard marketing tools and platforms to execute and measure campaign performance.',
3.0, 50),

-- 18
('MKTG', '450', 'AI-Powered Marketing Analytics',
N'An advanced course exploring how artificial intelligence and machine learning transform marketing analytics and customer insights. Students learn to apply AI techniques for customer segmentation, predictive analytics, recommendation systems, and personalization at scale. Topics include natural language processing for sentiment analysis, computer vision for brand monitoring, and ML models for customer lifetime value prediction. The course covers marketing mix modeling, attribution analysis, and AI-driven campaign optimization. Students work with real marketing datasets, implementing AI solutions that enhance targeting, improve customer engagement, and maximize marketing effectiveness.',
3.0, 35),

-- 19
('MKTG', '455', 'Consumer Behavior and Analytics',
N'This course integrates consumer behavior theory with modern analytics techniques to understand and predict customer decision-making. Students explore psychological, social, and cultural factors influencing consumer choices, while learning to analyze behavioral data from digital touchpoints. Topics include customer journey analysis, A/B testing, behavioral segmentation, and experience design. The course covers emerging areas such as neuromarketing, behavioral economics, and the impact of AI on consumer interactions. Students develop skills in translating consumer insights into actionable marketing strategies using data analytics and research methodologies.',
3.0, 45),

-- 20
('MKTG', '460', 'Marketing Automation and AI Agents',
N'An innovative course exploring marketing automation platforms and the emerging role of AI agents in customer engagement. Students learn to design and implement automated marketing workflows, chatbots, conversational AI, and agentic systems for customer service and sales. Topics include marketing automation strategy, lead nurturing, behavioral triggers, and multi-channel campaign orchestration. The course covers building AI-powered chatbots using natural language understanding, deploying virtual assistants, and creating autonomous agents for personalized customer interactions. Students gain hands-on experience with leading marketing automation platforms and AI development tools.',
3.0, 30),

-- 21
('ENTR', '300', 'Foundations of Entrepreneurship',
N'This course introduces the fundamental principles and practices of entrepreneurship and new venture creation. Students explore opportunity recognition, business model design, market validation, and startup strategies. Topics include lean startup methodology, customer development, competitive analysis, and value proposition design. The course emphasizes entrepreneurial thinking, creativity, and problem-solving skills applicable to startups, corporate innovation, and social entrepreneurship. Through case studies and guest speakers, students learn from successful entrepreneurs and develop their own venture concepts. Projects involve pitching business ideas and conducting feasibility analyses.',
3.0, 55),

-- 22
('ENTR', '410', 'Technology Venture Creation',
N'An advanced course focusing on launching and scaling technology-based ventures. Students explore technology commercialization, intellectual property strategy, product development, and go-to-market strategies for tech startups. Topics include platform business models, growth hacking, venture financing, and building technical teams. The course covers emerging technology trends and their entrepreneurial opportunities. Students work in teams to develop technology venture concepts, create prototypes, and develop comprehensive business plans. The course includes interactions with venture capitalists, angel investors, and technology entrepreneurs to provide real-world perspectives on building successful tech companies.',
3.0, 35),

-- 23
('ENTR', '450', 'AI Entrepreneurship and Innovation',
N'This cutting-edge course explores entrepreneurial opportunities in artificial intelligence and guides students in building AI-powered ventures. Students examine successful AI startups, identify market opportunities for AI solutions, and learn to develop AI products from concept to market. Topics include AI business models, ethics in AI entrepreneurship, regulatory considerations, and responsible AI development. The course covers building with foundation models, developing AI applications, and creating autonomous agent systems. Students work on AI venture projects, developing prototypes and business strategies for AI-driven products and services addressing real market needs.',
3.0, 30),

-- 24
('ENTR', '455', 'Social Entrepreneurship',
N'This course examines entrepreneurship as a vehicle for social change and sustainable development. Students explore business models that create both social value and financial returns, including social enterprises, B-Corps, and nonprofit innovation. Topics include impact measurement, sustainable business practices, stakeholder management, and funding strategies for social ventures. The course covers social innovation methodologies, systems thinking, and collaborative approaches to addressing societal challenges. Students develop social venture concepts, learning to balance mission and margin while creating meaningful impact. Real-world case studies demonstrate how entrepreneurship can address pressing social and environmental issues.',
3.0, 40);


 go

 -- AppUser rows

 -- Students (12)

INSERT INTO AppUser (Firstname, LastName, Email, PasswordHash, UserRole)
VALUES
 (N'Michael', N'Jordan', N'mjordan@wvu.edu', 0x01, N'Student'),
 (N'Sarah', N'Lee', N'slee@wvu.edu', 0x01, N'Student'),
 (N'Alex', N'Kim', N'akim@wvu.edu', 0x01, N'Student'),
 (N'Priya', N'Patel', N'ppatel@wvu.edu', 0x01, N'Student'),
 (N'Daniel', N'Smith', N'dsmith@wvu.edu', 0x01, N'Student'),
 (N'Emily', N'Chen', N'echen@wvu.edu', 0x01, N'Student'),
 (N'Juan', N'Garcia', N'jgarcia@wvu.edu', 0x01, N'Student'),
 (N'Hannah', N'Nguyen', N'hnguyen@wvu.edu', 0x01, N'Student'),
 (N'Robert', N'Brown', N'rbrown@wvu.edu', 0x01, N'Student'),
 (N'Olivia', N'Davis', N'odavis@wvu.edu', 0x01, N'Student'),
 (N'Liam', N'Wilson', N'lwilson@wvu.edu', 0x01, N'Student'),
 (N'Zoe', N'Martinez', N'zmartinez@wvu.edu', 0x01, N'Student');

-- Alumni (10)
INSERT INTO AppUser (Firstname, LastName, Email, PasswordHash, UserRole)
VALUES
 (N'Alice', N'Warren', N'awarren@alum.wvu.edu', 0x03, N'Alum'),
 (N'Brian', N'Young', N'byoung@alum.wvu.edu',  0x03, N'Alum'),
 (N'Carla', N'Ruiz', N'cruiz@alum.wvu.edu',   0x03, N'Alum'),
 (N'David', N'O''Neil', N'doneil@alum.wvu.edu',  0x03, N'Alum'),
 (N'Ethan', N'Brooks', N'ebrooks@alum.wvu.edu', 0x03, N'Alum'),
 (N'Fatima', N'Ali', N'fali@alum.wvu.edu',    0x03, N'Alum'),
 (N'George', N'King', N'gking@alum.wvu.edu',   0x03, N'Alum'),
 (N'Helen', N'Zhao', N'hzhao@alum.wvu.edu',   0x03, N'Alum'),
 (N'Ian', N'Clark', N'iclark@alum.wvu.edu',  0x03, N'Alum'),
 (N'Julia', N'Rossi', N'jrossi@alum.wvu.edu',  0x03, N'Alum');

------------------------------------------------------------
-- Subtype rows
------------------------------------------------------------
-- Students: map all student AppUsers to Student
INSERT INTO Student (StudentID, TotalCreditsCompleted, GraduationSemesterYear, OverallGPA, MajorGPA)
values
(1, 105, N'Fall 2026', 3.5, 3.6),
(2, 60, N'Spring 2027', 3.8, 3.9),
(3, 15, N'Fall 2028', 3.2, 3.4),
(4, 90, N'Spring 2026', 3.9, 4.0),
(5, 45, N'Fall 2027', 3.6, 3.7),
(6, 60, N'Spring 2027', 3.7, 3.8),
(7, 75, N'Fall 2026', 3.8, 3.9),
(8, 20, N'Spring 2028', 3.4, 3.5),
(9, 60, N'Fall 2027', 3.7, 3.8),
(10,30,N'Spring 2027',3.5,3.6),
(11,15,N'Fall 2028',3.2,3.4),
(12,45,N'Fall 2027',3.6,3.7);


-- Alumni
INSERT INTO Alum (AlumID, GraduationSemesterYear)
values
(13, 'spring 2010'),
(14, 'fall 2012'),
(15, 'spring 2015'),
(16, 'fall 2018'),
(17, 'spring 2020'),
(18, 'fall 2021'),
(19, 'spring 2023'),
(20, 'fall 2024'),
(21, 'spring 2025'),
(22, 'fall 2025');

go

-- Instructors (5)

INSERT INTO Instructor (Firstname, LastName)
VALUES
 ('Karen', 'Evans'),
 ('Thomas', 'Reed'),
 ('Linda', 'Park'),
 ('James', 'Carter'),
 ('Sophia', 'Turner');

 go

-- Sections

INSERT INTO Section
(
    CourseID,
    InstructorID,
    CRN,
    SectionSemester,
    SectionYear,
    SectionNumber,
    RemainingOpenings,
    SectionAverageRating
)
VALUES
(1,  1, 10001, N'Fall', 2021, N'001', 45, 4.50),
(2,  1, 10002, N'Spring', 2022, N'001', 30, 4.60),
(3,  2, 10003, N'Fall', 2022, N'001', 25, 4.70),
(4,  2, 10004, N'Spring', 2023, N'001', 20, 4.40),
(5,  1, 10005, N'Fall', 2023, N'001', 35, 4.50),
(6,  4, 10006, N'Spring', 2024, N'001', 18, 4.80),
(7,  5, 10007, N'Fall', 2024, N'001', 15, 4.60),
(8,  2, 10008, N'Spring', 2025, N'001', 22, 4.70),
(1,  1, 20001, N'Spring', 2024, N'001', 45, 4.50),
(2,  1, 20002, N'Spring', 2024, N'001', 30, 4.60),
(3,  2, 20003, N'Spring', 2025, N'001', 25, 4.70),
(4,  2, 20004, N'Spring', 2025, N'001', 20, 4.40),
(5,  1, 20005, N'Spring', 2025, N'001', 35, 4.50),
(6,  4, 20006, N'Spring', 2025, N'001', 18, 4.80),
(7,  5, 20007, N'Fall', 2025, N'001', 15, 4.60),
(8,  2, 20008, N'Fall', 2025, N'001', 22, 4.70),
(9,  3, 20009, N'Fall', 2025, N'001', 12, 4.90),
(10, 3, 20010, N'Fall', 2025, N'001', 50,  4.30),
(11, 3, 20011, N'Spring', 2026, N'001', 28,  0),
(12, 1, 20012, N'Spring', 2026, N'001', 20, 0),
(13, 3, 20013, N'Spring', 2026, N'001', 30, 0),
(14, 3, 20014, N'Spring', 2026, N'001', 18, 0),
(15, 3, 20015, N'Spring', 2026, N'001', 25,  0),
(16, 3, 20016, N'Spring', 2026, N'001', 28,  0),
(17, 5, 20017, N'Spring', 2026, N'001', 35,  0),
(18, 5, 20018, N'Spring', 2026, N'001', 22,  0),
(19, 5, 20019, N'Spring', 2026, N'001', 30,  0),
(20, 5, 20020, N'Spring', 2026, N'001', 20,  0),
(21, 4, 20021, N'Spring', 2026, N'001', 38,  0),
(22, 2, 20022, N'Spring', 2026, N'001', 25,  0),
(23, 2, 20023, N'Spring', 2026, N'001', 18,  0),
(24, 5, 20024, N'Spring', 2026, N'001', 28,  0),
(1,  1, 20025, N'Spring', 2026, N'001', 45, 0),
(2,  1, 20026, N'Spring', 2026, N'001', 30, 0),
(3,  2, 20027, N'Spring', 2026, N'001', 25, 0),
(4,  2, 20028, N'Spring', 2026, N'001', 20, 0),
(5,  1, 20029, N'Spring', 2026, N'001', 35, 0),
(6,  4, 20030, N'Spring', 2026, N'001', 18, 0),
(7,  5, 20031, N'Spring', 2026, N'001', 15, 0),
(8,  2, 20032, N'Spring', 2026, N'001', 22, 0),
(9,  3, 20033, N'Spring', 2026, N'001', 0, 0),
(9,  3, 20034, N'Spring', 2026, N'002', 5, 0),
(7,  5, 30001, N'Fall', 2026, N'001', 15, 0),
(8,  2, 30002, N'Fall', 2026, N'001', 22, 0),
(9,  3, 30003, N'Fall', 2026, N'001', 12, 0),
(10, 3, 30004, N'Fall', 2026, N'001', 50,  0);

GO

-- select * from Section;

-- Prerequisite rows

INSERT INTO CoursePrerequisite (CourseID, PrerequisiteCourseID, MinGradeRequired) VALUES
(2, 1, N'C'),
 (3, 1, N'C'),
 (4, 2, N'C'),
 (4, 3, N'C'),
 (6, 2, N'B'),
 (6, 3, N'C'),
 (7, 4, N'B'),
 (7, 6, N'B'),
 (9, 7, N'B'),
 (9, 8, N'B');

go

-- Registration rows

insert into Registration (StudentID, RegistrationDate, RegistrationSemester, RegistrationYear)
values
(1, '2021-08-01', N'Fall', 2021),
(1, '2022-01-01', N'Spring', 2022),
(1, '2022-08-01', N'Fall', 2022),
(1, '2023-01-01', N'Spring', 2023),
(1, '2023-08-01', N'Fall', 2023),
(1, '2024-01-01', N'Spring', 2024),
(1, '2024-08-01', N'Fall', 2024),
(1, '2025-01-01', N'Spring', 2025),
(1, '2025-08-01', N'Fall', 2025),
(2, '2024-08-01', N'Fall', 2024),
(2, '2025-01-01', N'Spring', 2025),
(2, '2025-08-01', N'Fall', 2025);

GO

-- RegistrationSection rows

insert into RegistrationSection (RegistrationID, SectionID, EnrollmentStatus, LetterGrade)
VALUES
(1, 1, N'Completed', N'A'),
(2, 2, N'Completed', N'B'),
(3, 3, N'Completed', N'C'),
(4, 4, N'Completed', N'B'),
(5, 5, N'Completed', N'A'),
(6, 6, N'Completed', N'A'),
(7, 7, N'Completed', N'B'),
(8, 8, N'Completed', N'A'),
(9, 9, N'Completed', N'A'),
(10, 10, N'Completed', N'B'),
(11, 11, N'Completed', N'C'),
(12, 12, N'Completed', N'C');