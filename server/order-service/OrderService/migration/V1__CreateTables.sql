CREATE TABLE Basket (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    UserId VARCHAR(50) NOT NULL
);

CREATE TABLE BasketItems (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    BasketId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (BasketId) REFERENCES Basket(Id) ON DELETE CASCADE
);

CREATE TABLE `Order` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductId INT NOT NULL,
    UserId VARCHAR(50) NOT NULL,
    Status VARCHAR(20) NOT NULL
);

CREATE TABLE Payment (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    UserId VARCHAR(50) NOT NULL,
    OrderId INT NOT NULL,
    Status VARCHAR(20) NOT NULL,
    TransactionId VARCHAR(50),
    FOREIGN KEY (OrderId) REFERENCES `Order`(Id) ON DELETE CASCADE
);