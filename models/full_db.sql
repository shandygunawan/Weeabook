-- DROP DATABASE TUBESWBD;

-- CREATE DATABASE TUBESWBD;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS User;
CREATE TABLE User
(
  UserID INT NOT NULL AUTO_INCREMENT,
  Name TEXT NOT NULL,
  Username TEXT NOT NULL,
  Email TEXT NOT NULL,
  Password TEXT NOT NULL,
  Address TEXT NOT NULL,
  PhoneNumber TEXT NOT NULL,
  PicturePath TEXT NOT NULL,
  PRIMARY KEY (UserID)
);

DROP TABLE IF EXISTS Book;
CREATE TABLE Book
(
  BookID INT NOT NULL AUTO_INCREMENT,
  BookName TEXT NOT NULL,
  Author TEXT NOT NULL,
  Synopsis TEXT NOT NULL,
  PicturePath TEXT NOT NULL,
  PRIMARY KEY (BookID)
);

-- DROP TABLE IF EXISTS Review;
-- CREATE TABLE Review
-- (
--   Score FLOAT NOT NULL,
--   Comment TEXT,
--   UserID INT NOT NULL,
--   BookID INT NOT NULL,
--   OrderID INT NOT NULL,
--   FOREIGN KEY (BookID) REFERENCES Book(BookID),
--   FOREIGN KEY (UserID) REFERENCES User(UserID),
--   FOREIGN KEY (OrderID) REFERENCES BookOrder(OrderID)
-- );

DROP TABLE IF EXISTS BookOrder;
CREATE TABLE BookOrder
(
  OrderID INT NOT NULL AUTO_INCREMENT,
  UserID INT NOT NULL,
  BookID INT NOT NULL,
  OrderDate DATE NOT NULL,
  Amount INT NOT NULL,
  Score FLOAT,
  Comment TEXT,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (UserID) REFERENCES User(UserID),
  FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

SET FOREIGN_KEY_CHECKS = 1;