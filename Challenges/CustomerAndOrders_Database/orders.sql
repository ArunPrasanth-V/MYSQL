CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(id)
);



CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
       REFERENCES customer(id)
       ON DELETE CASCADE
);


CREATE TABLE orders(
  id INT PRIMARY KEY AUTO_INCREMENT,
  order_date DATE,
  price DECIMAL(8,2),
  c_id INT
);
