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
<img width="716" height="594" alt="image" src="https://github.com/user-attachments/assets/595204eb-87e0-40ae-92fc-21ef75f45660" />
-
Procedure Tạo task với quyền "user"
<img width="744" height="601" alt="image" src="https://github.com/user-attachments/assets/6fbbb6c6-98e9-443a-8aab-f89482ed40e3" />
-
Procedure Cập nhật trạng thái
<img width="801" height="580" alt="image" src="https://github.com/user-attachments/assets/25413424-936d-4fb3-984e-ff86aba3ed0f" />
-
