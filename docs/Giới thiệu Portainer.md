# Giới thiệu PORTAINER
## 1.Portainer là gì
Portainer là công cụ quản lý Docker Containter miễn phí với kích thước gọn nhẹ và giao diện quản lý trực quan, đơn giản để triển khai cũng như sử dụng, cho phép người dùng dễ dàng quản lý Docker host hoặc Swarm cluster. Công cụ này hoạt động trên một container được triển khai trên Docker Engine (tương thích với phiên bản 1.9 trở lên, hỗ trợ trên cả Linux và Windows).  


## 2. Quản lý các Docker container bằng Portainer
Quản lý container và image từ menu Portainer khá dễ dàng. Chỉ cần chọn thành phần mà bạn muốn cấu hình trong môi trường Docker và sau đó sửa đổi nó theo ý thích của bạn.

Hầu hết các thành phần rất dễ hiểu. Dưới đây là một số điều quan trọng nhất:
### Dashboard
Trang Dashboard cung cấp cho bạn cái nhìn nhanh về môi trường hoạt động của bạn với các số liệu thống kê quan trọng. Bạn có thể nhấp vào từng thành phần trong Dashboard để biết thêm thông tin về một thành phần cụ thể.

Bạn có thể dễ dàng nhận được một bản tóm tắt về dung lượng ổ đĩa mà các container của bạn đang sử dụng và container có tốt hay không. Bạn cũng có thể có cái nhìn tổng quan về interface mạng và địa chỉ IP của Docker container.

Ngoài thông tin Docker, bạn cũng có thể lấy dung lượng RAM của PC. Bạn sẽ không tìm thấy bất kỳ lệnh Docker nào cung cấp cho bạn một bản tóm tắt toàn diện như vậy trong một trang. Và đây là nơi Portainer tỏa sáng.
### Images
Bạn có thể sử dụng tab Images để kéo image mới vào môi trường Docker của mình. Theo mặc định, Portainer sử dụng Docker Hub để lấy image Docker. Tìm kiếm image bằng cách nhập tên của image bạn đang tìm kiếm và sau đó nhấp vào nút Search để tìm image đó trong Docker Hub.

Để kéo một image mới, hãy nhập tên bao gồm tag khi nó xuất hiện trong Docker Hub và nhấp vào nút Pull the image.

Trang Images liệt kê tất cả image trong môi trường của bạn, bao gồm kích thước, tag và ngày image được tạo. Bạn cũng có thể tạo image Docker mới từ trang này.
### Containers
Trang Docker container là một nơi tuyệt vời để xem tổng quan về tất cả các container trong môi trường của bạn. Tại đây, bạn sẽ được trình bày tổng quan về cả container đang chạy và không hoạt động.

Bạn cũng có thể tạo các Docker container mới từ những image có sẵn cục bộ trên PC của bạn hoặc những image có trong Docker Hub.

Để chạy một container, chỉ cần nhấp vào nút Add container. Sau đó, cung cấp thông tin chi tiết của container như tên, tag, bạn có muốn sử dụng shell, tương tác và TTY, v.v… Các tham số bạn cung cấp ở đây tương tự như những gì bạn sẽ cung cấp khi sử dụng lệnh docker run.
### Các thành phần khác
Một số thành phần quan trọng khác trong Portainer bao gồm:

- Stacks: Stacks cung cấp cho bạn tùy chọn để xác định file Docker Compose. Bạn có thể chỉ định file Docker Compose trong cửa sổ trình chỉnh sửa Portainer hoặc upload chúng lên từ PC. Bạn thậm chí có thể kéo các file Docker Compose của mình trực tiếp từ GitHub.
- Networks: Tab Networks liệt kê tất cả các interface mạng được sử dụng bởi những Docker image khác nhau trong môi trường của bạn. Địa chỉ IP và loại mạng cũng được hiển thị trên trang này. Và tất nhiên, bạn có thể thêm các mạng mới vào môi trường của mình.
- Volumes: Volumes đơn giản hóa việc quản lý dữ liệu trong Docker container. Volumes cho phép bạn lưu trữ dữ liệu Docker container của mình trên máy tính chủ, điều này thật tuyệt vời vì nó giúp việc quản lý Docker image dễ dàng hơn. Trang Volumes cho phép bạn dễ dàng tạo các volume mới và quản lý những volume hiện có.
- Users: Ban đầu, chúng ta đã tạo người dùng admin cho Portainer, nhưng trong trường hợp bạn muốn thêm nhiều người dùng hơn để quản lý môi trường của mình và có các cấp độ truy cập khác nhau thì đây là nơi cần đến.
