-- Create Database
CREATE DATABASE IF NOT EXISTS users_25sep25;

-- Select Database
USE users_25sep25;

-- Create Users Table
CREATE TABLE IF NOT EXISTS users (
    un VARCHAR(30) PRIMARY KEY,
    pw VARCHAR(300) NOT NULL
);
