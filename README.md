Tạo cơ sở dữ liệu cho ứng dụng quản lý TODO sau:

- Có 2 loại người dùng (quản lý và nomarl user)
- Người quản lý có thể tạo task có thể tự giao cho mình hoặc người nomarl user tham gia vào các task
- Người thực hiện khi hoàn thành có thể thay đổi trạng thái task của mình theo các status sau: (pending, done, can't complete) khi thay đổi trạng thái cần phải lưu lại thông tin ngày thay đổi
- Lưu ý một người có thể làm nhiều task

EER Diagram
----
![EER Diagram](/EERDiagram.png)
----
Procedure Tạo task với quyền "admin"
<img width="730" height="554" alt="image" src="https://github.com/user-attachments/assets/805abc20-4246-4eec-a581-226193715460" />
-
Procedure Tạo task với quyền "user"
<img width="733" height="587" alt="image" src="https://github.com/user-attachments/assets/d9c32601-1396-4484-aa16-694fc1c58fae" />
-
Procedure Cập nhật trạng thái
<img width="737" height="565" alt="image" src="https://github.com/user-attachments/assets/8f862bb3-5ae1-4bb8-aa2a-995313db1e15" />
-
