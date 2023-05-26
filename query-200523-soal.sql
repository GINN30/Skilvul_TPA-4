-- Soal 1
SELECT
    u.user_name,
    COUNT(DISTINCT d.product_id) AS total_barang
FROM
    `user` u
    JOIN `orders` o ON u.user_id = o.user_id
    JOIN `details` d ON o.order_id = d.order_id
GROUP BY
    u.user_name
HAVING
    COUNT(DISTINCT d.product_id) >= 3;

-- soal 2
SELECT
    p.product_name,
    COUNT(d.product_id) AS total_pembelian
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
SELECT
    c.category_name,
    COUNT(p.product_id) AS total_barang
FROM
    `category` c
    JOIN `products` p ON c.category_id = p.category_id
GROUP BY
    c.category_id
ORDER BY
    total_barang DESC
LIMIT
    1;

-- Soal 4
SELECT
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