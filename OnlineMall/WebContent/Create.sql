DROP DATABASE IF EXISTS eFruit;
CREATE  DATABASE eFruit;
USE eFruit;

CREATE TABLE User(
	Id int(8) NOT NULL AUTO_INCREMENT ,
    userType int(8) ,
    lastLogIn timestamp,
    last_IP varchar(20),
    PRIMARY KEY (Id));

CREATE TABLE Admin(
	Id int(8) NOT NULL AUTO_INCREMENT,
    userType int(8) ,
    lastLogIn timestamp,
    last_IP varchar(20),
    username varchar(20),
    password varchar(20),
    PRIMARY KEY (Id));

INSERT INTO admin (username, password) VALUES ('18357533500', 'a1234567890');

CREATE TABLE Email(
	Id int(8) NOT NULL AUTO_INCREMENT,
    admin_ID int(8) NOT NULL,
    foreign key(admin_ID) references Admin(Id) on delete cascade on update cascade,
    email varchar(20),
    PRIMARY KEY (Id)
);

CREATE TABLE Category(
	Id int(8) NOT NULL AUTO_INCREMENT,
    name varchar(20),
    PRIMARY KEY (Id));
    
CREATE TABLE Goods(
	Id int(8) NOT NULL AUTO_INCREMENT,
	Category_ID int(8),
	foreign key(Category_ID) references Category(Id) on delete cascade on update cascade,
    name varchar(20),
    intro varchar(255),
    price decimal(4,1),
    unitPrice decimal(4,1),
 	bPrice decimal(4,1),
    vipPrice decimal(4,1),
    number int(10),
    inventory int(10),
    imageUrl varchar(100),
    PRIMARY KEY (Id));

CREATE TABLE Orders(
	Id int(8) NOT NULL AUTO_INCREMENT,
    user_ID int(8) NOT NULL,
    foreign key(user_ID) references User(Id) ON DELETE CASCADE ON UPDATE CASCADE,
    status int(2) NOT NULL,
    money decimal(4,1),
    address varchar(20),
    message varchar(20),
    time_OK timestamp,
    PRIMARY KEY (Id));

CREATE TABLE Orders_Goods(
	Id int(8) NOT NULL AUTO_INCREMENT,
	Goods_ID int(8),
	Orders_ID int(8),
	foreign key(Goods_ID) references Goods(Id) on delete cascade on update cascade,
	foreign key(Orders_ID) references Orders(Id) on delete cascade on update cascade,
	PRIMARY KEY (Id));
    
    