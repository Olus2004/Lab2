DELIMITER //

CREATE PROCEDURE ManageTask(
    IN p_action VARCHAR(20),
    IN p_task_id INT,
    IN p_task_name VARCHAR(100),
    IN p_description TEXT,
    IN p_user_create INT,
    IN p_user_assign INT,
    IN p_date_start DATETIME,
    IN p_date_end DATETIME,
    IN p_status ENUM('pending', 'done', "can't complete"),
    OUT p_message VARCHAR(255)
)
BEGIN
    IF p_action = 'create' THEN
        IF (SELECT role_id FROM Employees WHERE user_id = p_user_create) = 'admin' THEN
            IF EXISTS (
                SELECT 1 FROM Task 
                WHERE task_name = p_task_name 
                AND task_description = p_description 
                AND user_create = p_user_create 
                AND date_start = p_date_start 
                AND date_end = p_date_end
            ) THEN
                SET p_message = 'Task đã tồn tại với thông tin tương tự.';
            ELSE
                INSERT INTO Task (task_name, task_description, user_create, date_start, date_end)
                VALUES (p_task_name, p_description, p_user_create, p_date_start, p_date_end);

                INSERT INTO Mission (task_id, user_id, mission_status, update_time)
                VALUES (LAST_INSERT_ID(), p_user_assign, 'pending', NOW());

                SET p_message = 'Task được tạo và giao thành công.';
            END IF;
        ELSE
            SET p_message = 'Chỉ admin mới có thể tạo task.';
        END IF;

    ELSEIF p_action = 'update' THEN
        IF EXISTS (SELECT 1 FROM Mission WHERE task_id = p_task_id AND user_id = p_user_assign) THEN
            UPDATE Mission
            SET mission_status = p_status, update_time = NOW()
            WHERE task_id = p_task_id AND user_id = p_user_assign;

            SET p_message = 'Trạng thái mission được cập nhật thành công.';
        ELSE
            SET p_message = 'Không tìm thấy mission.';
        END IF;

    ELSE
        SET p_message = 'Hành động không hợp lệ.';
    END IF;
END //

DELIMITER ;
