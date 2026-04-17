-- phân tích I/O: 
-- +) input cần có để lọc là: Fullname, Email, Status, City, LastPurchaseDate
-- +) output sau khi lọc sẽ hiển thị mỗi Fullname, Email

-- trình bày logic: 
-- +) sử dụng Where để lọc từng phần: City = 'Hà Nội'; LastPurchaseDate < 2025-10-1 (6 tháng trước ngày 1/4/2026); Email ko null, Status = 'Active'

-- trình bày hiển thị: 
-- ko nên sử dụng SELECT * vì nó sẽ làm chậm hệ thống với dữ liệu khổng lồ như này, rất tốn RAM vì hiển thị ra những nội dung và giá trị ko cần thiết theo yêu cầu 
-- dùng SELECT Fullname, Email để hiển thị đúng theo yêu cầu

CREATE DATABASE customers_database;
USE customers_database;

CREATE TABLE CUSTOMERS (
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
	FullName VARCHAR(100),
	Email VARCHAR(100),
	City VARCHAR(50),
	LastPurchaseDate DATE,
	Status VARCHAR(20),
	Gender VARCHAR(10),
	DateOfBirth DATE,
	Points INT,
	Address VARCHAR(255)
);

INSERT INTO CUSTOMERS (FullName, Email, City, LastPurchaseDate, Status)
VALUES
('Nguyên Văn A', 'anv@gmail.com', 'Hà Nội', '2025-05-20', 'Active'),
('Tràn Thị B', 'btt@gmail.com', 'Hà Nội', '2026-02-10', 'Active'),
('Lê Văn C', NULL, 'Hà Nội', '2025-01-15', 'Active'),
('Phạm Minh D', 'dpm@gmail.com', 'Hà Nội', '2024-12-01', 'Locked'),
('Hoàng An E', 'eha@gmail.com', 'TP HCM', '2025-03-01', 'Active');


SELECT Fullname, Email
FROM CUSTOMERS
WHERE City = 'Hà Nội'
	AND LastPurchaseDate < '2025-10-1'
	AND Email IS NOT NULL
	AND Status = 'Active';
