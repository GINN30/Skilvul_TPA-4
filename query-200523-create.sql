-- Query untuk membuat database
CREATE DATABASE sib;

-- Query untuk menggunakan database
USE sib;

-- Query untuk membuat table yang diperlukan
CREATE TABLE `user` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`user_id`)
);

DESC `user`;

CREATE TABLE `category` (
    `category_id` INT NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(50) NOT NULL DEFAULT '',
    `desc` TEXT NOT NULL DEFAULT '',
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`category_id`)
);

DESC `category`;

CREATE TABLE `products` (
    `product_id` INT NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(50) NOT NULL DEFAULT '',
    `harga` DECIMAL(10, 2) NOT NULL,
    `stock` INT NOT NULL,
    `category_id` INT NOT NULL,
    PRIMARY KEY (`product_id`),
    CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DESC `products`;

CREATE TABLE `orders` (
    `order_id` INT NOT NULL AUTO_INCREMENT,
    `order_date` DATE NOT NULL,
    `status` ENUM(
        'Tertunda',
        'Sedang Diproses',
        'Dikirim',
        'Selesai'
    ) NOT NULL DEFAULT 'Tertunda',
    `user_id` INT NOT NULL,
    PRIMARY KEY (`order_id`),
    CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DESC `orders`;

CREATE TABLE `details` (
    `details_id` INT NOT NULL AUTO_INCREMENT,
    `item_product_name` VARCHAR(50) NOT NULL DEFAULT '',
    `item_category_name` VARCHAR(50) NOT NULL DEFAULT '',
    `item_harga` DECIMAL(10, 2) NOT NULL,
    `jumlah` INT NOT NULL,
    `subtotal` DECIMAL(10, 2) NOT NULL,
    `order_id` INT NOT NULL,
    `product_id` INT NOT NULL,
    PRIMARY KEY (`details_id`),
    CONSTRAINT `fk_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `fk_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DESC `details`;
