-- Query untuk inser ke dalam table yang sudah dibuat.
INSERT INTO
    `user` (`user_name`, `email`, `password`)
VALUES
    ('Amber See', 'iseembe@gmail.com', 'iykyk92s'),
    ('Megan Yu', 'machine82@gmail.com', 'kdsalsdk'),
    ('Mia Fall', 'khaliuy82@gmail.com', 'pso029jn'),
    ('Spring Koi', 'winterkuy@gmail.com', 'qmjxir93'),
    ('Lor Hazel', 'kidul90@gmail.com', '103knsjr'),
    ('Oru Kamize', 'kamikaze@gmail.com', 'cua8irew'),
    ('Hanzar Yami', 'yh4zard@gmail.com', 'cvruie2y'),
    ('Coco Rema', 'k0korma@gmail.com', 'ciwuqjsm'),
    ('Poutemas Von', 'vnny12@gmail.com', 'oijrmxsa'),
    ('Woury On', 'noworry92@gmail.com', 'weqkmrn1');

INSERT INTO
    `category` (`category_name`, `desc`, `created_at`)
VALUES
    ('Mature', 'Products that contains adult thing', DATE_SUB(NOW(), INTERVAL 4 DAY)),
    ('Toy', 'All products for kids', NOW()),
    ('Electronics', 'Category for electronic devices', DATE_SUB(NOW(), INTERVAL 1 MONTH)),
    ('Clothing',  'Category for clothing items', DATE_SUB(NOW(), INTERVAL 2 WEEK)),
    ('Books','Category for books and literature',NOW()),
    ('Home Decor','Category for home decoration items',DATE_SUB(NOW(), INTERVAL 2 MONTH)),
    ('Beauty','Product Category for beauty and skincare products',NOW()),
    ('Sports','Category for sports equipment and accessories',NOW()),
    ('Jewelry','Category for children toys',DATE_SUB(NOW(), INTERVAL 2 DAY)),
    ('Furniture','Product category for furniture',DATE_SUB(NOW(), INTERVAL 1 WEEK));

INSERT INTO
    `products` (`product_name`, `harga`, `stock`, `category_id`)
VALUES 
    ('Barbel 5kg', 150000, 20, 1),
    ('Matras Gym', 120000, 10, 1),
    ('Resin Goku 5:1', 1150000, 20, 2),
    ('Power Rangers Miniatur', 550000., 15, 2),
    ('Jhonny - Jhonny Yes Papa Toy`s', 55000., 25, 2),
    ('Earphone Lenovo ThinkPlus', 230000, 10, 3),
    ('Macbook Pro M2', 23999999, 25, 3),
    ('Red Tee', 50000, 40, 4),
    ('Black Jeans', 250000, 15, 4),
    ('Marmut Merah Jambu', 300000, 12, 5),
    ('Laskar Pelangi', 500000, 22, 5),
    ('Pot Hiasan', 59000, 10, 6),
    ('Lampu Disko', 126000, 8, 6),
    ('SkinCare Ms Glow', 200000, 30, 7),
    ('Body Scrub', 250000, 25, 7),
    ('Air Jordan 1', 2500000, 5, 8),
    ('Curry 8', 2000000, 20, 8),
    ('Wedding Ring', 11000000, 8, 9),
    ('Diamond Watch', 20000000, 15, 9),
    ('White Couch', 7500000, 20, 10),
    ('Dining Table', 10000000, 20, 10);

INSERT INTO
    `orders` (`order_date`, `status`, `user_id`)
VALUES
    (DATE_SUB(CURDATE(), INTERVAL 4 DAY), 'Sedang Diproses', 1),
    (DATE_SUB(CURDATE(), INTERVAL 7 DAY), 'Sedang Diproses', 5),
    (DATE_SUB(CURDATE(), INTERVAL 2 DAY), 'Dikirim', 3),
    (DATE_SUB(CURDATE(), INTERVAL 8 DAY), 'Selesai', 3),
    (DATE_SUB(CURDATE(), INTERVAL 10 DAY), 'Dikirim', 8),
    (DATE_SUB(CURDATE(), INTERVAL 12 DAY), 'Sedang Diproses', 2),
    (DATE_SUB(CURDATE(), INTERVAL 3 DAY), 'Dikirim', 10),
    (DATE_SUB(CURDATE(), INTERVAL 15 DAY), 'Selesai', 6);

INSERT INTO
    `orders` (`order_date`, `user_id`)
VALUES
    (DATE_SUB(CURDATE(), INTERVAL 1 DAY),  7),
    (DATE_SUB(CURDATE(), INTERVAL 5 DAY),  9),
    (DATE_SUB(CURDATE(), INTERVAL 9 DAY),  4),
    (CURDATE(), 5);
    
INSERT INTO 
    `details` (`item_product_name`, `item_category_name`, `item_harga`, `jumlah`, `subtotal`, `order_id`, `product_id`)
VALUES ('Macbook Pro M2', 'Electronics', 23000000, 1, (item_harga * jumlah), 3, 6),
       ('Air Jordan 1', 'Basketball', 4500000, 3, (item_harga * jumlah), 1, 15),
       ('Watch', 'Fashion', 500000, 2, (item_harga * jumlah), 9, 18),
       ('Kyrie 5', 'Sports', 2500000, 4, (item_harga * jumlah), 8, 16),
       ('Matras Gym', 'Sports', 150000, 5, (item_harga * jumlah), 4, 2),
       ('Iron Man Replika 1:1', 'Toys', 5000000, 1, (item_harga * jumlah), 5, 3),
       ('Pewangi Ruangan', 'Home', 75000, 3, (item_harga * jumlah), 7, 12),
       ('Body Scrub', 'Beauty', 250000, 10, (item_harga * jumlah), 6, 14),
       ('Earphone', 'Technologies', 200000, 2, (item_harga * jumlah), 2, 5),
       ('Red Couch', 'Furniture', 16000000, 4, (item_harga * jumlah), 11, 19),
       ('Pecahkan', 'Comedy', 250000, 14, (item_harga * jumlah), 10, 9),
       ('Air Jordan 1', 'Fashion', 4500000, 5, (item_harga * jumlah), 3, 15);

-- Query untuk mengambil data dari masing - masing column
SELECT * FROM  `user`;

SELECT * FROM  `category`;

SELECT * FROM  `products`;

SELECT * FROM  `orders`;

SELECT * FROM  `details`;    