# Giới thiệu Docker Compose
## 1.Docker Compose là gì
Docker giúp cho việc xây dựng, triển khai môi trường phát triển web, server database trở nên dễ dàng hơn, không còn phụ thuộc vào một môi trường duy nhất.

Quản lý docker của 1 hệ thống lớn với rất nhiều container khác nhau rất phức tạp, và có thể sinh ra nhiều lỗi trong quá trình vận hành. Chính vì vậy để khắc phục vấn đề này Docker Compose ra đời .

Docker Compose giúp việc thiết lập các ứng dụng cần sự liên kết của nhiều Docker Container với nhau dễ dàng hơn. Chỉ cần tao 1 file YAML config, 1 câu lệnh duy nhất chạy container, connect đến các services ở các container khác nhau.

Hiện nay khi cài đặt xong docker bạn có thể đồng thời sử dụng docker compose bằng lệnh `docker compose [command]`

## 2. Những tính năng chính của Docker Compose
- Thiết lập, cấu hình nhiều môi trường hoàn toàn độc lập với nhau trên 1 máy chủ
- Bảo lưu các phân vùng bộ nhớ khi container được tạo ra
- Chỉ tạo lại container khi có config thay đổi, trong khi vẫn giữ lại data của container
- Định nghĩa các biến Variable trong file YAML để tùy chỉnh cho các môi trường khác nhau (môi trường dev, production)
## 3. Làm thế nào để sử dụng được docker compose
- Tạo `Dockerfile` cho mỗi môi trường container mà mình muốn hoặc sử dụng docker image sẵn có. Để khởi tạo được container thì bắt buộc phải có `Dockerfile`
Tạo `docker-compose.yml` để định nghĩa mối liên hệ giữa các container với nhau
- Chạy lệnh `docker-compose build`  để khởi tạo các container
- Chạy lệnh `docker-compose up` để khởi động container và chạy toàn bộ ứng dụng
- Chạy lệnh `docker-compose stop` để stop toàn bộ container và các services
- Chạy lệnh `docker-compose down --volumes` để xóa hoàn toàn container và data volumes được sử dụng bởi các services 