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
<img width="753" height="523" alt="image" src="https://github.com/user-attachments/assets/8c839829-55b9-4996-84cf-d1f1d8ab6b64" />
-
Procedure Tạo task với quyền "user"
<img width="751" height="512" alt="image" src="https://github.com/user-attachments/assets/5f7cbe70-aeb7-4974-8a6b-66f547396de6" />
-
Procedure Cập nhật trạng thái
<img width="733" height="533" alt="image" src="https://github.com/user-attachments/assets/64fd5b80-71c7-41ba-b73d-3be3233b3cf0" />
-
