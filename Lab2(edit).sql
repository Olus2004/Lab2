CREATE DATABASE LAB2_TODO;

USE LAB2_TODO;

CREATE TABLE Employees (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    role_id ENUM('admin', 'user') NOT NULL,
    birthday DATE,
    phone VARCHAR(15),
    email VARCHAR(255),
    PRIMARY KEY (user_id)
);

CREATE TABLE Task (
    task_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    task_name VARCHAR(100) NOT NULL,
    task_description TEXT,
    user_create INT UNSIGNED NOT NULL,
    date_start DATETIME,
    date_end DATETIME,
    PRIMARY KEY (task_id),
    FOREIGN KEY (user_create) REFERENCES Employees(user_id)
);

CREATE TABLE Mission (
    mission_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    task_id INT UNSIGNED NOT NULL,
    user_id INT UNSIGNED,
    mission_status ENUM('pending','done','cannot_complete') DEFAULT 'pending',
    update_time DATETIME,
    PRIMARY KEY (mission_id),
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
    FOREIGN KEY (user_id) REFERENCES Employees(user_id)
);
