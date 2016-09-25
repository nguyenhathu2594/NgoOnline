---Danh mục tin tức
create table News_Categories(
CateID int not null primary key,
vName nvarchar(100),
vOrder int,
Active nchar(10)
)
---Tin tức
create table News_Detail(
DelID int not null primary key,
CateID int not null references News_Categories(CateID),
vTitle nvarchar(300),
vDesc nvarchar(500),
vContent ntext,
vCreateDate datetime,
Active bit
)
---Liên hệ
create table Contacts(
ContactID int not null primary key,
Fullname nvarchar(100),
Phone int,
Email nvarchar(100),
vContent ntext,
Active bit
)
---Tài khoản
create table AdminUsers(
AdminID int not null primary key,
Username nvarchar(100),
Password nvarchar(50),
Fullname nvarchar(100),
Address nvarchar(1000),
Role tinyint,
Active bit
)
---Danh mục sản phẩm
create table Product_Categories(
ProID int not null primary key,
vName nvarchar(100),
vOrder int,
Active bit
)
---Chi tiết sản phẩm
create table Product_Detail(
ProDelID int not null primary key,
ProID int not null references Product_Categories(ProId),
vCode nvarchar(100),
vName nvarchar(100),
vDesc nvarchar(500),
vContent nvarchar(1000),
vImage nvarchar(1000),
iQuantity int,
vPrice int,
CreateDate datetime,
iView nvarchar(1000),
Active bit
)
---Thông tin mua hàng
create table Product_Carts(
ProCartID int not null primary key,
vCusName nvarchar(100),
Address nvarchar(1000) not null,
Phone int not null,
Email nvarchar(100) not null,
CreateDate datetime not null,
TotalMoney int,
Active bit
)
---Trung gian chi tiết hàng hóa và đơn hàng
create table Product_CartDetail(
ProCartDelID int not null primary key,
ProDelID int not null references Product_Detail(ProDelID),
ProCartID int not null references Product_Carts(ProCartID),
iQuantity int not null,
iMoney int not null
)