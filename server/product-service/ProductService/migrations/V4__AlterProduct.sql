ALTER TABLE Products
ADD COLUMN Images JSON,
ADD COLUMN Review JSON,
MODIFY COLUMN Tags JSON,
MODIFY COLUMN Dimensions JSON;
