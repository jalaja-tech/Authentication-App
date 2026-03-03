# Authentication App
A simple web-based Authentication System built using HTML, CSS, JSP, Java, and MySQL. This project demonstrates user registration, login validation, session management, and secure logout functionality using server-side processing.

## -> Project Overview

This project demonstrates a complete authentication workflow:

* New user registration
* Login validation with database
* Session-based access control
* Logout functionality
* Protected Home page

It is designed to run on **localhost using Apache Tomcat server**.

---

## -> Tech Stack

* **Frontend:** HTML, CSS
* **Backend:** JSP (Java Server Pages)
* **Database:** MySQL
* **Connectivity:** JDBC
* **Server:** Apache Tomcat

---

## -> Features

* User Signup with password confirmation
* Password stored using MD5 hashing
* Login authentication using PreparedStatement
* Session management using HttpSession
* Redirect protection for unauthorized access
* Logout button with session invalidation

---

## -> Project Structure

auth_app/
│
├── index.jsp
├── signup.jsp
├── home.jsp
│
├── css/
│   └── mystyle1.css
│
├── database/
│   └── schema.sql
│
└── README.md

---


## -> Application Workflow

### Signup

1. User enters username and password
2. Password confirmation is validated
3. Data stored in MySQL (hashed)
4. User redirected to Home page

### Login

1. User enters credentials
2. Credentials validated from database
3. Session created
4. User redirected to Home page

### Home Page

* Accessible only if session exists
* Displays welcome message
* Logout button destroys session

### Logout

* Session invalidated
* Redirects to Login page

---

## -> How to Run

1. Install MySQL and Apache Tomcat
2. Place project folder inside Tomcat `webapps` directory
3. Add MySQL Connector JAR in `lib` folder
4. Start Tomcat
5. Open browser and visit:

```
http://localhost:8080/auth_app/
```

---

## -> Security Notes

* Uses PreparedStatement to prevent SQL Injection
* Passwords stored using MD5 hashing
* Session validation prevents unauthorized access

---

## -> Learning Outcomes

* Understanding of JSP lifecycle
* JDBC database integration
* HTTP session handling
* Form handling and POST requests
* Authentication workflow design

---

## -> Future Improvements

* Use stronger hashing (e.g., BCrypt)
* Add input validation
* Implement role-based authentication
* Convert to Servlet + MVC structure
* Deploy on cloud server

---

## -> Author

Developed as a beginner full-stack authentication project to strengthen backend fundamentals and database integration concepts.
