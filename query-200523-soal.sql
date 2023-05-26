-- Soal 1
-- Query untuk case 1 pelanggan dengan barang yang berbeda
SELECT
    u.user_name,
    GROUP_CONCAT(p.product_name) AS nama_barang,
    COUNT(DISTINCT d.product_id) AS total_barang
FROM
    `user` u
    JOIN `orders` o ON u.user_id = o.user_id
    JOIN `details` d ON o.order_id = d.order_id
    JOIN `products` p ON d.product_id = p.product_id
GROUP BY
    u.user_name
HAVING
    COUNT(DISTINCT d.product_id) >= 3;

-- soal 2
-- Melihat 3 produk yang paling sering dibeli oleh pelanggan
SELECT
    p.product_name,
    COUNT(d.product_id) AS total_pembelian,
    d.item_harga AS harga_barang
FROM
    `products` p
    JOIN `details` d ON p.product_id = d.product_id
GROUP BY
    p.product_id
ORDER BY
    total_pembelian DESC
LIMIT
    3;

-- Soal 3
-- Melihat Kategori barang yang paling banyak barangnya.
SELECT
    c.category_name,
    GROUP_CONCAT(p.product_name) AS nama_barang,
    COUNT(p.product_id) AS total_barang
FROM
    `category` c
    JOIN `products` p ON c.category_id = p.category_id
GROUP BY
    c.category_id
ORDER BY
    total_barang DESC
LIMIT
    2;

-- Soal 4
-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir
SELECT
    DATE_SUB(NOW(), INTERVAL 1 MONTH) As start_transaksi,
    DATE(NOW()) AS last_transaksi,
    AVG(total) AS rata_rata_transaksi
FROM
    (
        SELECT
            o.user_id,
            SUM(d.subtotal) AS total
        FROM
            `orders` o
            JOIN `details` d ON o.order_id = d.order_id
        WHERE
            o.order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
        GROUP BY
            o.user_id
    ) AS transaksi;