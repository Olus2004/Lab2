Tạo cơ sở dữ liệu cho ứng dụng quản lý TODO sau:

- Có 2 loại người dùng (quản lý và nomarl user)
- Người quản lý có thể tạo task có thể tự giao cho mình hoặc người nomarl user tham gia vào các task
- Người thực hiện khi hoàn thành có thể thay đổi trạng thái task của mình theo các status sau: (pending, done, can't complete) khi thay đổi trạng thái cần phải lưu lại thông tin ngày thay đổi
- Lưu ý một người có thể làm nhiều task


-

Dữ liệu bảng Employees
<img width="702" height="234" alt="image" src="https://github.com/user-attachments/assets/264831bc-4a8f-48d2-bbb7-4009cb0401d3" />
-
Dữ liệu Mission
<img width="535" height="553" alt="image" src="https://github.com/user-attachments/assets/795eedc1-21a1-42ae-a8bd-9feeb71e82ba" />
-
Dữ liệu bảng Task
<img width="535" height="553" alt="image" src="https://github.com/user-attachments/assets/2d997e22-a664-4bc0-a21b-3bdd30aa05f6" />
-

EER Diagram
----
![EER Diagram](/EERDiagram.png)
----
Procedure Tạo task với quyền "admin"
<img width="730" height="554" alt="image" src="https://github.com/user-attachments/assets/805abc20-4246-4eec-a581-226193715460" />
-
Procedure Tạo task với quyền "user"
<img width="726" height="557" alt="image" src="https://github.com/user-attachments/assets/a2653a54-dce9-4bde-b5e3-cdbf55760a79" />
-
Procedure Cập nhật trạng thái
<img width="737" height="565" alt="image" src="https://github.com/user-attachments/assets/8f862bb3-5ae1-4bb8-aa2a-995313db1e15" />
-
