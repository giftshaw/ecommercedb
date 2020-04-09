DROP DATABASE IF EXISTS `suppliers`;
CREATE DATABASE `suppliers`; 
USE `suppliers`;

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) NOT NULL,
  `contact_name` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
   product_name int(20) NOT NULL,
   city varchar(50) NOT NULL,
   state varchar(50) NOT NULL,
   postal_code int(11) NOT NULL,
   country varchar(20) NOT NULL,
   phone int(20) NOT NULL,
   email varchar(60) NOT NULL,
   payment_methods varchar(60) NOT NULL,
   discount_available varchar(11) NOT NULL,
PRIMARY KEY (`supplier_id`)
);

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `active` varchar(20) NOT NULL,
  PRIMARY KEY (`category_id`),
  product_id int(11) NOT NULL,
  FOREIGN KEY(product_id) REFERENCES products(product_id)
);


CREATE TABLE `shippers` ( `shipper_id` int(11) NOT NULL AUTO_INCREMENT, 
`company_name` varchar(50) NOT NULL,
 `phone` int(20) NOT NULL,
  PRIMARY KEY (`shipper_id`)
   );

   CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` int(11) NOT NULL,
   `allowed` varchar(20) NOT NULL,
    PRIMARY KEY(payment_id)
);

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT, 
  `order_number` int(11) NOT NULL,
  `order_date` DATE NOT NULL,
  `ship_date` DATE NOT NULL,
  `required_date` DATE NOT NULL,
  `time_stamp` TIME NOT NULL,
  `transaction_status` varchar(50) NOT NULL,
  `deleted` varchar(20) NOT NULL,
  `payment_date` DATE NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipper_id` int(11) NOT NULL,
	PRIMARY KEY(order_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(shipper_id) REFERENCES shippers(shipper_id)
);









