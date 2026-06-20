# Student Management System API

A simple Student Management System built with **Java, Spring MVC, Hibernate, JSP, and MySQL** that allows users to perform complete CRUD (Create, Read, Update, Delete) operations on student records.

## Features

* Add a new student
* View student details by ID
* Update existing student information
* Delete student records
* Form handling using Spring MVC
* Database persistence with Hibernate ORM
* JSP views for displaying and managing student data
* MySQL database integration

## Tech Stack

* Java 17
* Spring MVC
* Hibernate ORM
* MySQL
* JSP
* Apache Tomcat 9
* Maven
* IntelliJ IDEA
* Git & GitHub

## Project Structure

```text
src
├── controller
│   └── StudentController.java
├── dao
│   └── StudentDao.java
├── model
│   └── Student.java
├── resources
└── webapp
    ├── WEB-INF
    │   ├── views
    │   │   ├── index.jsp
    │   │   ├── result.jsp
    │   │   └── updateStudent.jsp
    │   └── student-servlet.xml
    └── WEB-INF/web.xml
```

## Database Schema

```sql
CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
```

## Setup Instructions

### 1. Clone the repository

```bash
git clone <your-repository-url>
cd Student-Management-System
```

### 2. Configure MySQL

Create a database:

```sql
CREATE DATABASE student_management;
```

Create the `student` table using the schema above.

### 3. Update Database Configuration

Configure your database credentials inside your Spring configuration file:

* Database URL
* Username
* Password
* MySQL Driver

### 4. Build the project

```bash
mvn clean install
```

### 5. Run the application

Deploy the `war exploded` artifact on Apache Tomcat and start the server.

Visit:

```text
http://localhost:8080/Student_Management_Api_war_exploded/
```

## What I Learned

While building this project, I learned:

* Configuring Spring MVC and Hibernate from scratch
* Connecting Java applications to MySQL
* Managing dependencies and version compatibility
* Using Hibernate for CRUD operations
* Working with JSP and Spring Model attributes
* Understanding Tomcat deployment and WAR artifacts
* Debugging 404, 500, and database constraint errors
* Reading stack traces and solving real-world configuration issues

## Future Improvements

* Add form validation
* Implement exception handling
* Add search by email and course
* Improve UI styling with Bootstrap
* Build a REST API version using Spring Boot
* Add authentication and authorization

## Author

**Onatade Abdulmajeed**

Software Engineering Student at NIIT, Nigeria
Backend-heavy Full-Stack Developer passionate about Java, Spring, and building scalable applications.

Connect with me on LinkedIn and X (Twitter) to follow my #100DaysOfCode journey.
