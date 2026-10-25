🎓 AR-Based Educational Learning System
📌 Project Overview
The AR-Based Educational Learning System is a Java GUI-based application designed to make education more interactive and engaging. The application provides a platform where students can log in, explore educational subjects, and access learning resources.
The project uses Java Swing for the graphical user interface, MySQL for database management, and JDBC for database connectivity.
The application provides the foundation for integrating Augmented Reality (AR) technology to help students visualize complex educational concepts through interactive 3D models.
Current Status: The application includes student registration and login, subject browsing, learning resource management, and database integration. Actual camera-based AR and 3D model rendering are planned future enhancements.

🎯 Project Objectives

Develop a user-friendly educational desktop application.


Implement student registration and login functionality.


Organize educational subjects and learning resources.


Integrate MySQL using JDBC.


Apply Object-Oriented Programming (OOP) principles.


Use Java Collections and Generics to manage application data.


Implement background data loading to maintain UI responsiveness.


Establish a foundation for future AR-based interactive learning.


✨ Features
1. Student Registration

Create a student account.


Enter name, email, and password.


Validate registration inputs.


Store account information in the database.

2. Student Login

Authenticate registered users.


Validate email and password.


Display an error message for invalid credentials.

3. Student Dashboard

Display a personalized welcome message.


Browse available educational subjects.


View learning resources associated with each subject.


Refresh subject information.


Log out of the application.

4. Learning Resource Management

Display resource titles and descriptions.


Show resource types and file paths.


Organize resources by subject.


Prepare for future 3D and AR integration.

5. Database Integration

Connect Java to MySQL using JDBC.


Execute SQL queries using PreparedStatement.


Retrieve and display database records.


Handle database exceptions.

6. Responsive User Interface

Built using Java Swing.


Uses SwingWorker to load data in the background.


Separates UI components from database operations.


🛠️ Technologies Used
Technology	Purpose
Java	Application programming
Java Swing	Graphical user interface
MySQL	Relational database
JDBC	Database connectivity
SQL	Database creation and queries
OOP	Modular application design
Collections Framework	Managing retrieved records
Generics	Type-safe collections
SwingWorker	Background data loading
Git	Version control
GitHub	Source code hosting

🏗️ Project Architecture
The application follows a modular, MVC-style architecture with separate data access classes.
User Interface
      |
      v
Java Swing Views
      |
      v
Application Logic
      |
      v
DAO Classes
      |
      v
JDBC Connection
      |
      v
MySQL Database
Architecture Components

Model: Represents users, subjects, and learning resources.


View: Provides login and dashboard screens.


Controller/Application Logic: Handles user interactions and validation.


DAO: Executes database operations.


Database: Stores users, subjects, and learning content.


Service: Contains utility functions such as password hashing.


📂 Project Structure
AR-Educational-Learning-System/
│
├── src/
│   └── com/
│       └── arlearning/
│           ├── Main.java
│           │
│           ├── model/
│           │   ├── User.java
│           │   ├── Subject.java
│           │   └── LearningContent.java
│           │
│           ├── view/
│           │   ├── LoginFrame.java
│           │   └── DashboardFrame.java
│           │
│           ├── dao/
│           │   ├── UserDAO.java
│           │   ├── SubjectDAO.java
│           │   └── LearningContentDAO.java
│           │
│           ├── database/
│           │   └── DBConnection.java
│           │
│           └── service/
│               └── PasswordUtil.java
│
├── database/
│   └── schema.sql
│
├── resources/
│   ├── images/
│   └── models/
│
├── screenshots/
│
├── README.md
└── .gitignore

🗄️ Database Design
The application uses a MySQL database named ar_learning.
1. Users Table
Stores student account information.
Column	Data Type	Description
user_id	INT	Primary key
name	VARCHAR(100)	Student name
email	VARCHAR(100)	Unique email address
password_hash	CHAR(64)	Demonstration password hash
role	VARCHAR(20)	User role
2. Subjects Table
Stores educational subjects.
Column	Data Type	Description
subject_id	INT	Primary key
subject_name	VARCHAR(100)	Subject name
description	TEXT	Subject description
3. Learning_Content Table
Stores learning resources for each subject.
Column	Data Type	Description
content_id	INT	Primary key
subject_id	INT	Foreign key
title	VARCHAR(150)	Resource title
content_type	VARCHAR(50)	Resource type
resource_path	VARCHAR(255)	Resource location
description	TEXT	Resource description
Database Relationship
One subject can contain multiple learning resources.
SUBJECTS
   |
   | 1
   |
   |------< Many
             |
             v
      LEARNING_CONTENT
The subject_id column in learning_content references the subject_id column in subjects.

⚙️ System Requirements
Before running the application, install:
1.
JDK 17 or later
2.
3.
MySQL Server 8.x
4.
5.
MySQL Connector/J
6.
7.
A Java IDE, such as:
8.
o
Visual Studio Code
o
o
IntelliJ IDEA
o
o
Eclipse
o
o
NetBeans
o
9.
MySQL Workbench (recommended for database management)
10.

🚀 Installation and Setup
Step 1: Clone the Repository
Open a terminal and execute:
git clone https://github.com/rkhero47/Augmented-Reality-AR-Applications-AR-Based-Educational-Learning-System

Navigate to the project folder:
cd AR-Educational-Learning-System
Step 2: Create the Database
1.
Open MySQL Workbench.
2.
3.
Connect to your MySQL server.
4.
5.
Open the database/schema.sql file.
6.
7.
Execute the SQL script.
8.
The script creates the database, tables, and sample educational resources.
Step 3: Configure Database Credentials
The application reads database configuration from environment variables.
Default database URL:
jdbc:mysql://localhost:3306/ar_learning?serverTimezone=UTC
Default username:
root
Set the password according to your local MySQL configuration.
Windows PowerShell:
$env:DB_USER="root"
$env:DB_PASSWORD="your_mysql_password"
Replace your_mysql_password with your actual MySQL password.
These commands apply to the current PowerShell session.
Step 4: Add MySQL Connector/J
Download MySQL Connector/J from the official MySQL website:
https://dev.mysql.com/downloads/connector/j/
Add the downloaded JAR file to your Java project's classpath.
If you use an IDE, configure the JAR as a project library or dependency.
Step 5: Compile the Java Files
If the MySQL Connector/J JAR is available in a lib directory, open PowerShell in the project root and execute:
New-Item -ItemType Directory -Force out

$files = Get-ChildItem src -Recurse -Filter *.java |
    ForEach-Object { $_.FullName }

javac -cp ".;lib\mysql-connector-j-VERSION.jar" `
    -d out $files
Replace VERSION with the version in your downloaded JAR filename.
Step 6: Run the Application
Execute:
java -cp "out;lib\mysql-connector-j-VERSION.jar" com.arlearning.Main
Replace VERSION with the same Connector/J version used during compilation.
Step 7: Use the Application
1.
Launch the application.
2.
3.
Select Create Student Account.
4.
5.
Enter your name, email, and password.
6.
7.
Register your account.
8.
9.
Sign in using the registered credentials.
10.
11.
Browse subjects on the dashboard.
12.
13.
Select a subject to view its learning resources.
14.
15.
Select a resource to view its details.
16.
17.
Use Log Out to return to the login screen.
18.

🧠 Java Concepts Implemented
Object-Oriented Programming

Encapsulation: Model classes keep their fields private.


Abstraction: DAO classes provide methods for database operations.


Modularity: Different application components are separated into packages.

Collections and Generics

ArrayList<Subject> stores subject records.


List<LearningContent> stores learning resources.


DefaultListModel manages items displayed in Swing lists.

Exception Handling

SQLException handles database errors.


Input validation prevents incomplete registration and login requests.


Error dialogs provide feedback to users.

Multithreading
SwingWorker retrieves subject and learning-resource data in the background, keeping the Swing user interface responsive.
JDBC
The application uses:

Connection


DriverManager


PreparedStatement


ResultSet


SQLException


🔐 Security Considerations

Database credentials should be configured through environment variables.


Never upload passwords or other secrets to GitHub.


SQL queries use PreparedStatement to reduce SQL injection risks.


The demonstration uses SHA-256 for password hashing.

Important: SHA-256 alone is not appropriate for production password storage. A real deployment should use a password-hashing algorithm such as BCrypt or Argon2 with a unique salt.


🔮 Future Enhancements
The following features can be added in future versions:

Camera-based augmented reality.


Interactive 3D educational models.


AR marker recognition.


Quiz and assessment modules.


Student progress tracking.


Administrator dashboard.


Learning analytics and reports.


Improved authentication and authorization.

Actual AR functionality requires integrating a suitable 3D rendering, camera, or AR framework.

🎓 Academic Project Information
Project Title: AR-Based Educational Learning System
Project Category: Java GUI-Based Application
Programming Language: Java
GUI Technology: Java Swing
Database: MySQL
Connectivity: JDBC
Project Purpose: To develop a foundation for interactive educational learning through a desktop application and prepare for future AR integration.
Developed By: [Rajnish kumar,utkarsh verma,Akand singh,Ashutosh]
Department: [CSE]
University: [Galgotias University]
Semester: [03]

📄 License
This project is developed for educational and academic purposes.

🙏 Acknowledgement
I would like to thank my faculty members and university for providing the opportunity to develop this project and apply concepts of Java programming, database management, and user interface design.
