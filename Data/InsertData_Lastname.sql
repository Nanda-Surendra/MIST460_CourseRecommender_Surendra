--USE MIST460_RDB_Lastname;

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

-- Another 16 Course rows to make a total of 40 courses for testing purposes

INSERT INTO Course (SubjectCode, CourseNumber, Title, CourseDescription, Credits, Capacity) VALUES

('MIST', '301', 'IT Service Management',
N'This course covers the principles and practices of IT service management using the ITIL framework. Students explore service design, service transition, service operation, and continual service improvement processes. Topics include incident management, problem management, change management, and service level agreements. Students learn to align IT services with business needs, manage service portfolios, and implement service desk operations. Through case studies and simulations, students develop skills in delivering high-quality IT services and managing the complete lifecycle of IT services within organizations.',
3.0, 40),

('MIST', '302', 'Enterprise Architecture',
N'An exploration of enterprise architecture frameworks and their role in aligning business strategy with IT infrastructure. Students study the Zachman Framework, TOGAF, and other architectural approaches for designing cohesive enterprise systems. Topics include business architecture, application architecture, data architecture, and technology architecture. The course covers architecture governance, roadmap development, and managing architectural change. Students analyze real enterprise architecture case studies and develop architectural models for organizations, learning to balance business agility with technical standardization and long-term strategic planning.',
3.0, 35),

('MIST', '410', 'IT Governance and Compliance',
N'This course examines frameworks and practices for governing information technology and ensuring regulatory compliance. Students explore COBIT, ISO 27001, SOX compliance, and industry-specific regulatory requirements. Topics include IT risk management, audit processes, policy development, and compliance monitoring. The course covers data governance, privacy regulations including GDPR and CCPA, and building organizational compliance programs. Students develop governance frameworks and compliance strategies through practical exercises, learning to balance regulatory requirements with operational efficiency while managing IT-related risks in modern organizations.',
3.0, 35),

('CS', '315', 'Software Engineering Principles',
N'A comprehensive study of software engineering methodologies, tools, and best practices for developing large-scale software systems. Students explore software development life cycles, requirements engineering, software architecture, design patterns, and quality assurance. Topics include Agile and Scrum methodologies, continuous integration and deployment, version control, and code review practices. The course emphasizes collaborative development through team projects where students experience the full software engineering process from requirements through deployment. Students develop skills in writing maintainable, testable, and well-documented code for professional software development environments.',
3.0, 35),

('CS', '320', 'Operating Systems',
N'An in-depth study of operating system concepts, design, and implementation. Students explore process management, memory management, file systems, and input/output systems. Topics include CPU scheduling algorithms, deadlock prevention, virtual memory, and concurrency control. The course covers both theoretical foundations and practical aspects of modern operating systems including Linux and Windows architectures. Laboratory work involves programming exercises in process synchronization, memory allocation, and file system implementation. Students gain a deep understanding of how operating systems manage hardware resources and provide services to application software.',
3.0, 30),

('CS', '410', 'Algorithms and Complexity',
N'An advanced study of algorithm design techniques and computational complexity theory. Students explore dynamic programming, greedy algorithms, divide and conquer strategies, graph algorithms, and network flow problems. The course covers NP-completeness, approximation algorithms, and randomized algorithms. Students analyze algorithm correctness and efficiency, applying asymptotic analysis to evaluate performance. Through rigorous problem sets and programming assignments, students develop strong algorithmic thinking and problem-solving skills. The course prepares students for technical interviews, competitive programming, and advanced research in computer science.',
3.0, 30),

('DH', '315', 'Clinical Informatics',
N'This course examines the application of informatics principles within clinical healthcare settings. Students explore clinical decision support systems, electronic health record optimization, clinical workflow analysis, and health data standards including HL7 and FHIR. Topics include medication management systems, computerized physician order entry, nursing informatics, and patient safety technologies. The course covers the role of clinical informaticists in bridging healthcare and information technology. Students analyze clinical information systems and develop strategies for improving clinical workflows, patient safety, and care quality through effective use of health information technologies.',
3.0, 40),

('DH', '350', 'Telehealth and Remote Care',
N'A comprehensive examination of telehealth technologies, policies, and practices transforming healthcare delivery. Students explore synchronous and asynchronous telehealth modalities, remote patient monitoring, virtual care platforms, and mobile health interventions. Topics include telehealth regulatory frameworks, reimbursement policies, technology infrastructure requirements, and patient engagement strategies. The course examines telehealth implementation across specialties including behavioral health, chronic disease management, and acute care. Students analyze telehealth program outcomes and develop implementation plans, gaining practical understanding of how remote care technologies expand healthcare access and improve patient outcomes.',
3.0, 35),

('MKTG', '300', 'Marketing Research Methods',
N'This course provides a systematic introduction to marketing research design, data collection, and analysis. Students learn both qualitative and quantitative research methodologies including surveys, focus groups, observational research, and experimental design. Topics include questionnaire design, sampling strategies, statistical analysis of marketing data, and research report writing. The course emphasizes translating research findings into actionable marketing insights. Students conduct original research projects, applying learned methodologies to real marketing questions. The course develops critical evaluation skills for assessing research quality and interpreting findings to support strategic marketing decisions.',
3.0, 45),

('MKTG', '360', 'Brand Management',
N'An in-depth exploration of brand strategy, development, and management in contemporary markets. Students examine brand identity, brand equity, positioning strategies, and brand architecture decisions. Topics include brand storytelling, visual identity systems, brand extensions, co-branding, and managing brand reputation in digital environments. The course covers global branding challenges, brand revitalization strategies, and measuring brand performance. Through brand audit projects and case analyses of iconic brands, students develop skills in building, managing, and protecting brand assets. The course prepares students for brand management roles in consumer goods, services, and technology companies.',
3.0, 40),

('ENTR', '320', 'Design Thinking and Innovation',
N'This course introduces design thinking as a human-centered approach to innovation and problem solving. Students learn the five stages of design thinking including empathize, define, ideate, prototype, and test through hands-on projects. Topics include user research techniques, journey mapping, rapid prototyping, and iterative testing with end users. The course explores how design thinking applies to product development, service design, organizational change, and social innovation. Students work in multidisciplinary teams to tackle real-world challenges, developing creative confidence and practical skills in applying design thinking methodologies to generate innovative solutions.',
3.0, 45),

('ENTR', '360', 'Venture Finance and Funding',
N'A comprehensive course on financing strategies for new and growing ventures. Students explore bootstrapping, angel investment, venture capital, crowdfunding, and alternative financing mechanisms. Topics include financial modeling for startups, valuation methodologies, term sheet negotiation, and managing investor relationships. The course covers the stages of venture financing from pre-seed through IPO, examining the perspectives of both entrepreneurs and investors. Through financial modeling exercises and pitch preparation, students develop skills in communicating financial narratives, structuring funding rounds, and making strategic financing decisions for early-stage and growth ventures.',
3.0, 35),

('ENTR', '380', 'Global Entrepreneurship',
N'This course examines entrepreneurship in international and cross-cultural contexts. Students explore the challenges and opportunities of building ventures across different markets, regulatory environments, and cultural settings. Topics include international market entry strategies, cross-cultural team management, global supply chain considerations, and adapting business models for diverse markets. The course covers emerging market opportunities, global startup ecosystems, and the impact of geopolitical factors on international ventures. Students develop global venture strategies through case analyses and projects, gaining skills in navigating the complexities of building and scaling businesses in the global marketplace.',
3.0, 40),

('MIST', '330', 'Human-Computer Interaction',
N'This course examines the design and evaluation of user interfaces and interactive systems. Students explore usability principles, user-centered design processes, accessibility standards, and interaction design patterns. Topics include user research methods, wireframing, prototyping tools, usability testing, and cognitive aspects of human-computer interaction. The course covers designing for diverse users across web, mobile, and emerging platforms including voice interfaces and augmented reality. Students complete design projects involving the full UCD process from user research through prototype evaluation, developing practical skills in creating intuitive, accessible, and effective digital experiences.',
3.0, 35),

('MIST', '340', 'Big Data Technologies',
N'An introduction to big data concepts, architectures, and processing frameworks for handling large-scale datasets. Students explore the Hadoop ecosystem, Apache Spark, distributed storage systems, and stream processing technologies. Topics include data ingestion pipelines, batch and real-time processing, data lake architectures, and NoSQL databases. The course covers practical applications of big data technologies in business intelligence, analytics, and machine learning workflows. Through hands-on lab exercises, students gain experience working with distributed computing environments, developing skills in processing and analyzing massive datasets to extract meaningful business insights.',
3.0, 30),

('CS', '450', 'Computer Vision and Image Processing',
N'An advanced course covering fundamental and applied concepts in computer vision and digital image processing. Students explore image acquisition, filtering, edge detection, feature extraction, and object recognition techniques. Topics include convolutional neural networks for visual recognition, image segmentation, object detection frameworks, and video analysis. The course covers applications in autonomous systems, medical imaging, surveillance, and augmented reality. Through programming projects using Python and deep learning frameworks, students implement computer vision pipelines and develop practical skills in building systems that can interpret and analyze visual information from the real world.',
3.0, 30);





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

-- Jobs (6)

INSERT INTO Job (JobTitle, Industry, JobDescription) VALUES
(N'Agentic Engineer', N'Technology', N'Agentic Engineers design, build, and maintain autonomous AI systems that can perform complex tasks with minimal human intervention. They develop AI agents capable of learning, reasoning, and decision-making across various domains. Responsibilities include designing agent architectures, implementing machine learning algorithms, ensuring ethical AI behavior, and integrating agents into real-world applications. Agentic Engineers work on cutting-edge technologies to create intelligent systems that can operate independently while adhering to safety and ethical standards.'),
 (N'Software Engineer', N'Technology', N'Software Engineers design, develop, test, and maintain software applications and systems. They write clean, efficient code, collaborate with cross-functional teams, participate in code reviews, and solve complex technical problems while following best practices in software development, version control, and agile methodologies.'),
 (N'Business Systems Analyst', N'Consulting', N'Business Systems Analysts bridge the gap between business needs and technology solutions by gathering requirements, analyzing processes, and recommending system improvements. They work with stakeholders to document workflows, create specifications, and ensure IT solutions align with organizational objectives and deliver measurable business value.'),
 (N'Cybersecurity Analyst', N'Cybersecurity', N'Cybersecurity Analysts protect organizations from cyber threats by monitoring networks for security breaches, investigating incidents, implementing security measures, and conducting vulnerability assessments. They analyze security logs, respond to incidents, develop security policies, and stay current with emerging threats and defense technologies.'),
 (N'Product Manager',   N'Technology', N'Product Managers define product vision and strategy, prioritize features, and guide development teams to create successful products. They conduct market research, gather user feedback, create roadmaps, make data-driven decisions, and coordinate with engineering, design, and marketing teams to deliver products that meet customer needs and business goals.'),
 (N'Database Administrator', N'Technology', N'Database Administrators ensure the performance, security, and availability of organizational databases. They install and configure database systems, perform backups and recovery, optimize queries, manage user access, monitor performance metrics, and implement security measures to protect sensitive data while maintaining system reliability.');


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
-- select * from CoursePrerequisite;
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
(1,  1, N'10001', N'Fall', 2021, N'001', 45, 4.50),
(2,  1, N'10002', N'Spring', 2022, N'001', 30, 4.60),
(3,  2, N'10003', N'Fall', 2022, N'001', 25, 4.70),
(4,  2, N'10004', N'Spring', 2023, N'001', 20, 4.40),
(5,  1, N'10005', N'Fall', 2023, N'001', 35, 4.50),
(6,  4, N'10006', N'Spring', 2024, N'001', 18, 4.80),
(7,  5, N'10007', N'Fall', 2024, N'001', 15, 4.60),
(8,  2, N'10008', N'Spring', 2025, N'001', 22, 4.70),
(1,  1, N'10009', N'Spring', 2024, N'001', 45, 4.50),
(2,  1, N'10010', N'Spring', 2024, N'001', 30, 4.60),
(3,  2, N'10011', N'Spring', 2025, N'001', 25, 4.70),
(4,  2, N'10012', N'Spring', 2025, N'001', 28, 4.45),
(5,  1, N'10013', N'Spring', 2025, N'001', 35, 4.50),
(6,  4, N'10014', N'Spring', 2025, N'001', 18, 4.80),
(7,  5, N'10015', N'Fall', 2025, N'001', 15, 4.60),
(8,  2, N'10016', N'Fall', 2025, N'001', 22, 4.70),
(9,  3, N'10017', N'Fall', 2025, N'001', 12, 4.90),
(10, 3, N'10018', N'Fall', 2025, N'001', 50,  4.30),
(17, 5, N'10019', N'Fall', 2025, N'001', 35, 4.60),
(18, 5, N'10020', N'Fall', 2025, N'001', 22, 4.70),
(21, 4, N'10023', N'Fall', 2025, N'001', 38, 4.50),
(22, 2, N'10024', N'Fall', 2025, N'001', 25, 4.60),
(23, 2, N'10025', N'Fall', 2025, N'001', 18, 4.70),
(24, 5, N'10026', N'Fall', 2025, N'001', 28, 4.80),
(1 ,1 ,N'10027' ,N'Spring',2026 ,N'001',45 ,4.50),
(2 ,1 ,N'10028' ,N'Spring',2026 ,N'001',30 ,4.60),
(3 ,2 ,N'10029' ,N'Spring',2026 ,N'001',25 ,4.70),
(4 ,2 ,N'10030 ' ,N'Spring',2026,N'001',35, 4.45),
(5 ,1 ,N'10031 ',N'Spring ',2026, N'001 ',35, 4.50),
(12, 1, N'10032', N'Spring', 2026, N'001', 20, 0),
(13, 3, N'10033', N'Spring', 2026, N'001', 30, 0),
(14, 3, N'10034', N'Spring', 2026, N'001', 18, 0),
(15, 3, N'10035', N'Spring', 2026, N'001', 25,  0),
(16, 3, N'10036', N'Spring', 2026, N'001', 28,  0),
(17, 5, N'10037', N'Spring', 2026, N'001', 35,  0),
(18, 5, N'10038', N'Spring', 2026, N'001', 22,  0),
(19, 5, N'10039', N'Spring', 2026, N'001', 30,  0),
(20, 5, N'10041', N'Spring', 2026, N'001', 20,  0),
(21, 4, N'10042', N'Spring', 2026, N'001', 38,  0),
(22, 2, N'10043', N'Spring', 2026, N'001', 25,  0),
(23, 2, N'10044', N'Spring', 2026, N'001', 18,  0),
(24, 5, N'10045', N'Spring', 2026, N'001',35, 0),
(1 ,1 , N'10046 ',N'Spring ', 2026, N'001', 45, 0),
(1 ,1 , N'10047 ',N'Spring ', 2026,	N'002', 21, 0),
(3, 2, N'10048', N'Spring', 2026, N'001', 25, 0),
(4, 2, N'10049', N'Spring', 2026, N'001', 28, 0),
(5, 1, N'10050',N'Spring',2026,N'001 ',35, 0),
(6,  4, N'10051', N'Spring', 2026, N'001', 18, 0),
(7,  5, N'10052', N'Spring', 2026, N'001', 15, 0),
(8,  2, N'10053', N'Spring', 2026, N'001', 22, 0),
(9,  3, N'10054', N'Spring', 2026, N'001', 0, 0),
(9,  3, N'10055', N'Spring', 2026, N'002', 5, 0),
(7,  5, N'10056', N'Fall', 2026, N'001', 15, 0),
(8,  2, N'10057', N'Fall', 2026, N'001', 22, 0),
(9,  3, N'10058', N'Fall', 2026, N'001', 12, 0),
(10, 3, N'10059', N'Fall', 2026, N'001', 50,  0);

GO

INSERT INTO Section (CourseID, InstructorID, CRN, SectionSemester, SectionYear, SectionNumber, RemainingOpenings, SectionAverageRating)
VALUES
-- CourseID 10
(10, 1, '10101', 'Spring', 2026, '001', 12, 4.20),

-- CourseID 11
(11, 2, '10102', 'Spring', 2026, '001', 8,  3.95),

-- CourseID 28
(28, 3, '10103', 'Spring', 2026, '001', 15, 4.50),

-- CourseID 29
(29, 4, '10104', 'Spring', 2026, '001', 5,  4.10),

-- CourseID 30
(30, 5, '10105', 'Spring', 2026, '001', 20, 3.75),

-- CourseID 40
(40, 1, '10106', 'Spring', 2026, '001', 10, 4.35),

-- CourseID 31
(31, 2, '10107', 'Spring', 2026, '001', 7,  4.00),

-- CourseID 32
(32, 3, '10108', 'Spring', 2026, '001', 18, 4.60),

-- CourseID 35
(35, 4, '10109', 'Spring', 2026, '001', 3,  3.85),

-- CourseID 36
(36, 5, '10110', 'Spring', 2026, '001', 14, 4.25),

-- CourseID 37
(37, 1, '10111', 'Spring', 2026, '001', 9,  4.45),

-- CourseID 25
(25, 2, '10112', 'Spring', 2026, '001', 11, 3.90),

-- CourseID 26
(26, 3, '10113', 'Spring', 2026, '001', 6,  4.15),

-- CourseID 38
(38, 4, '10114', 'Spring', 2026, '001', 16, 4.55),

-- CourseID 39
(39, 5, '10115', 'Spring', 2026, '001', 4,  3.70),

-- CourseID 27
(27, 1, '10116', 'Spring', 2026, '001', 13, 4.30),

-- CourseID 33
(33, 2, '10117', 'Spring', 2026, '001', 22, 4.05),

-- CourseID 34
(34, 3, '10118', 'Spring', 2026, '001', 17, 4.40);

go

-- select * from Section;

-- select * from Course;
-- Prerequisite rows

INSERT INTO CoursePrerequisite (CourseID, PrerequisiteID, MinGradeRequired) VALUES
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

-- select * from CoursePrerequisite;

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
(2, '2025-08-01', N'Fall', 2025),
(3, '2025-01-01', N'Spring', 2025),
(3, '2025-08-01', N'Fall', 2025);
-- select * from Registration;
-- select * from Course;
-- select SectionID, SubjectCode, CourseNumber from Section S join Course C on S.CourseID = C.CourseID;
GO

-- RegistrationSection rows

insert into RegistrationSection 
(RegistrationID, SectionID, EnrollmentStatus, LetterGrade)
VALUES
(1, 1, N'Completed', N'A'),
(2, 2, N'Completed', N'B'),
(3, 3, N'Completed', N'C'),
(4, 4, N'Completed', N'B'),
(5, 5, N'Completed', N'A'),
(6, 6, N'Completed', N'A'),
(7, 7, N'Completed', N'B'),
(8, 8, N'Completed', N'A'),
(9, 21, N'Completed', N'A'),
(9, 23, N'Completed', N'B'),
(10, 10, N'Completed', N'B'),
(11, 11, N'Completed', N'C'),
(12, 12, N'Completed', N'C'),
(13, 7, N'Enrolled', N'B'),
(14, 8, N'Enrolled', N'C');

-- select * from RegistrationSection;

