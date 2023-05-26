-- Query Update data Table
UPDATE `products` SET `harga` = 200000 WHERE `product_id` = 1;

UPDATE `user` SET `email` = 'ynksuroa@yahoo.co.id' WHERE `user_id` = 5;

-- Query untuk mengecek apakah data sudah terupdate
SELECT * FROM `products`;

SELECT * FROM `user`;
--  tak lupa jalankan Query Update terlebih dahulu kemudian Query Select

-- QUery untuk menghapus data table
DELETE FROM `orders` WHERE `order_id` = (SELECT `order_id` FROM `orders` ORDER BY `order_id` LIMIT 11, 1);

DELETE FROM `products` WHERE `product_id` = (SELECT `product_id` FROM `products` ORDER BY `product_id` LIMIT 6, 1);

-- Query untuk mengecek apakah data sudah terhapus
SELECT * FROM `orders`;

SELECT * FROM `products`;
--  tak lupa jalankan Query Delete terlebih dahulu kemudian Query Select

-- Query untuk menghapus Table
DROP TABLE IF EXISTS `details`;

DROP TABLE IF EXISTS `products`;

DROP TABLE IF EXISTS `category`;

DROP TABLE IF EXISTS `orders`;

DROP TABLE IF EXISTS `user`;

-- Query untuk menghapus Database
DROP DATABASE IF EXISTS sib;
