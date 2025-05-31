# 🛒 E-Commerce Website - Java Spring Boot

Một website bán hàng trực tuyến được xây dựng bằng Java Spring Boot theo mô hình MVC, sử dụng cơ sở dữ liệu MySQL. Dự án bao gồm các chức năng cơ bản như hiển thị sản phẩm, đăng nhập/đăng ký, quản lý giỏ hàng, quản lý người dùng và quản trị hệ thống.

---

## 📌 Công nghệ sử dụng

- 💻 Java 11
- ⚙️ Spring Boot
- 🧱 Spring MVC
- 🔐 Spring Security (nếu có)
- 💾 MySQL
- 🛠 JDBC / JPA / Hibernate
- 📦 Maven
- 🎨 JSP, JSTL, Bootstrap 5
- 🧠 Eclipse IDE

---

## 🚀 Cài đặt & chạy dự án

### Yêu cầu môi trường:
- Java JDK 11+
- MySQL Server
- Eclipse IDE (hoặc IntelliJ)
- Maven

### Các bước triển khai:
1. **Clone project:**
   ```bash
   git clone https://github.com/tên-tài-khoản-của-bạn/e-commerce.git

2. **Import project vào Eclipse:**
   ```bash
   File -> Import -> Existing Maven Project

3. **Tạo database trong MySQL:**
   ```bash
   CREATE DATABASE ecommjava;

4. **Cấu hình kết nối trong** `application.properties`
   ```bash
   db.url=jdbc:mysql://[địa chỉ ip của db]:[cổng của db]/ecommjava?createDatabaseIfNotExist=true
   db.username=[tên người dùng]
   db.password=[mật khẩu]
5. **Chạy project:** Chạy phần `main` trong `JtSpringProjectApplication.java`

---

## ⚙️ Cấu trúc thư mục chính:
```
   JtSpringProject/
      ├── pom.xml
      ├── mvnw, mvnw.cmd
      ├── basedata.sql
      ├── src/
      │   ├── main/
      │   │   ├── java/
      │   │   │   └── com/
      │   │   │       └── jtspringproject/
      │   │   │           └── JtSpringProject/
      │   │   │               ├── JtSpringProjectApplication.java
      │   │   │               ├── configuration/
      │   │   │               ├── controller/
      │   │   │               ├── dao/
      │   │   │               ├── models/
      │   │   │               └── services/
      │   │   ├── resources/
      │   │   │   ├── application.properties
      │   │   │   └── Product Images/
      │   │   └── webapp/
      │   │       ├── images/
      │   │       └── views/
      │   └── test/
      │       └── java/
      │           └── com.jtspringproject.JtSpringProject/
```
---

## 💡 Các chức năng chính:
- Đăng ký / Đăng nhập người dùng
- Hiển thị danh sách sản phẩm
- Giỏ hàng
- Trang quản trị: quản lý sản phẩm, loại hàng, người dùng
- Bảo mật bằng Spring Security

---

## 🧪 Tài khoản mẫu:
(Nếu bạn chạy tập lệnh `basedata.sql` trên cơ sở dữ liệu, bạn có thể đăng nhập bằng thông tin đăng nhập sau với tư cách là quản trị viên; nếu không, bạn sẽ phải tự tạo người dùng quản trị viên trong cơ sở dữ liệu)
- Admin:
   - Username: `cmtran`
   - Password: `cmtran`
- User:
   - Username: `minhtc`
   - Password: `minhtc`


---

## 🌐 Điểm cuối

| URL | Chức năng |
|-----|-----------|
| [`http://localhost:8080/`](http://localhost:8080/) | Trang chủ |
| [`http://localhost:8080/register`](http://localhost:8080/register) | Đăng ký tài khoản |
| [`http://localhost:8080/login`](http://localhost:8080/login) | Đăng nhập tài khoản |
| [`http://localhost:8080/admin/products`](http://localhost:8080/admin/products) | Quản lý sản phẩm |
| [`http://localhost:8080/admin/customers`](http://localhost:8080/admin/customers) | Quản lý người dùng |
| [`http://localhost:8080/admin/categories`](http://localhost:8080/admin/categories) | Quản lý danh mục |
| [`http://localhost:8080/admin/Dashboard`](http://localhost:8080/admin/Dashboard) | Dashboard thống kê |

---

## 📚 Tài liệu tham khảo
- [`Spring Boot Documentation`](https://spring.io/projects/spring-boot)
- [`JSP & JSTL`](https://www.tutorialspoint.com/jsp/index.htm)
- [`MySQL Documentation`](https://dev.mysql.com/doc/)
- [`Bootstrap`](https://getbootstrap.com/)

---
