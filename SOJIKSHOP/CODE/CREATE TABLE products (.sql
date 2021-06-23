CREATE TABLE products (
product_id INT(12) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
description text NOT NULL,
image_loc text  NOT NULL,
product_type INT(12)  NOT NULL,
product_price DECIMAL(10,2)  NOT NULL,
stock INT(12)  NOT NULL,
active bolean  NOT NULL,
created_by INT(12) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_by INT(12),
updated_at timestamp DEFAULT CURRENT_TIMESTAMP 
)


CREATE TABLE product_types (
product_type_id INT(12) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
product_type VARCHAR(255) NOT NULL,
description text,
active boolean  NOT NULL,
created_by INT(12) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_by INT(12),
updated_at timestamp DEFAULT CURRENT_TIMESTAMP 
)


CREATE TABLE cart_details (
cart_details_id INT(12) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INT(12) NOT NULL,
product_id INT(12) NOT NULL,
quantity INT(12) NOT NULL,
active boolean  NOT NULL,
created_by INT(12) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_by INT(12),
updated_at timestamp DEFAULT CURRENT_TIMESTAMP 
)