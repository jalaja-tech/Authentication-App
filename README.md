## Authentication App

A simple web-based Authentication System built using HTML, CSS, JSP, JDBC, and MySQL. This project demonstrates user registration, login validation, session management, alert messaging, and secure logout functionality using server-side processing.

---

## → Project Overview

This project implements a complete authentication workflow:

* New user registration
* Login validation with database
* Session-based access control
* Alert messages for user actions
* Logout functionality
* Protected Home page

The application runs locally using **Apache Tomcat Server**.

---

## → Tech Stack

* **Frontend:** HTML, CSS
* **Backend:** JSP (Java Server Pages)
* **Database:** MySQL
* **Connectivity:** JDBC
* **Server:** Apache Tomcat

---

## → Features

* User Signup with password confirmation validation
* Password stored using MD5 hashing
* Login authentication using `PreparedStatement`
* Session management using `HttpSession`
* Redirect protection for unauthorized access
* Logout button with session invalidation
* Alert message on:

  * Successful Login
  * Successful Signup

---

## → Project Structure

```
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
```

---

## → Application Workflow

### Signup

1. User enters username and password
2. Password confirmation is validated
3. Password is hashed using MD5
4. Data is stored in MySQL database
5. User redirected to Home page
6. “Signup Successful” alert is displayed

---

### Login

1. User enters username and password
2. If password field is empty → alert message shown
3. Credentials validated using database query
4. If valid → session created
5. User redirected to Home page
6. “Login Successful” alert is displayed

---

### Home Page

* Accessible only if valid session exists
* Displays authentication success message
* Shows logout button
* Displays alert message based on action parameter

---

### Logout

* Session invalidated
* Redirects to Login page

---

## → How to Run

1. Install MySQL and Apache Tomcat
2. Create database using `database/schema.sql`
3. Add MySQL Connector JAR in Tomcat `lib` folder
4. Place project folder inside Tomcat `webapps` directory
5. Start Tomcat
6. Open browser and visit:

```
http://localhost:8080/k18_auth_app/
```

---

## → Security Notes

* Uses `PreparedStatement` to prevent SQL Injection
* Passwords stored using MD5 hashing (basic level security)
* Session validation prevents unauthorized page access

---

## → Learning Outcomes

* Understanding JSP request-response lifecycle
* JDBC database integration
* Session tracking using `HttpSession`
* Server-side form validation
* Client-side alert messaging
* Authentication workflow implementation

---

## → Future Improvements

* Add stronger input validation
* Implement role-based access control
* Separate business logic using Servlets (MVC architecture)
* Deploy on cloud platform

---

## → Author

Developed as a beginner, backend authentication project to strengthen understanding of JSP, JDBC, session handling, and database-driven login systems.
