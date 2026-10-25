CREATE DATABASE ar_learning;

USE ar_learning;

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
            email VARCHAR(100) UNIQUE NOT NULL,
                password_hash VARCHAR(255) NOT NULL,
                    role VARCHAR(20) DEFAULT 'STUDENT'
                    );

                    CREATE TABLE Subjects (
                        subject_id INT PRIMARY KEY AUTO_INCREMENT,
                            subject_name VARCHAR(100) NOT NULL,
                                description TEXT
                                );

                                CREATE TABLE Learning_Content (
                                    content_id INT PRIMARY KEY AUTO_INCREMENT,
                                        subject_id INT NOT NULL,
                                            title VARCHAR(150) NOT NULL,
                                                content_type VARCHAR(50),
                                                    resource_path VARCHAR(255),
                                                        FOREIGN KEY (subject_id)
                                                                REFERENCES Subjects(subject_id)
                                                                );