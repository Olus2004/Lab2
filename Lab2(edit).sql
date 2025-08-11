CREATE DATABASE LAB2_TODO;

USE LAB2_TODO;

CREATE TABLE Employees (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    role_id ENUM('manager', 'normal') NOT NULL,
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
    user_id INT UNSIGNED NOT NULL,
    mission_status ENUM('pending','done','cannot_complete') DEFAULT 'pending',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (mission_id),
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
    FOREIGN KEY (user_id) REFERENCES Employees(user_id)
);

CREATE TABLE Mission_Status_History (
    history_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    mission_id INT UNSIGNED NOT NULL,
    history_status ENUM('pending','done','cannot_complete') NOT NULL,
    changed_by INT UNSIGNED NOT NULL,
    changed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (history_id),
    FOREIGN KEY (mission_id) REFERENCES Mission(mission_id),
    FOREIGN KEY (changed_by) REFERENCES Employees(user_id)
);
