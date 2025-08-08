CREATE DATABASE LAB2_TODO;

USE LAB2_TODO;

CREATE TABLE Employees(
	user_id int NOT NULL AUTO_INCREMENT,
    username varchar(50) NOT NULL,
    role_id enum("admin" ,"user") NOT NULL,
    birthday date ,
    phone varchar(13),
    email text,
    PRIMARY KEY (user_id)
    
);
CREATE TABLE Task(
	task_id int NOT NULL AUTO_INCREMENT,
    task_name varchar(100),
    task_description text,
    user_create int NOT NULL,
    date_start datetime,
    date_end datetime,
    PRIMARY KEY (task_id),
    FOREIGN KEY (user_create) REFERENCES Employees(user_id)
);
CREATE TABLE Mission(
	mission_id int NOT NULL AUTO_INCREMENT,
    task_id int NOT NULL,
    user_id int, 
    mission_status enum("pending","done","can't complete"),
    update_time datetime,
    PRIMARY KEY (mission_id),
    FOREIGN KEY (task_id) REFERENCES Task(task_id),
    FOREIGN KEY (user_id) REFERENCES Employees(user_id)
);
