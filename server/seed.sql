-- Seed data awal Salad Yook
-- Jalankan setelah schema: wrangler d1 execute salad-yook-db --local --file=server/seed.sql

INSERT OR IGNORE INTO settings (id, name, address, phone, qris_merchant_name, qris_code_text)
VALUES (1, 'Salad Yook', 'Jl. Pemuda No. 34, Majalengka Kulon, Kec. Majalengka, Kabupaten Majalengka', '0812-3456-7890', 'SALAD YOOK', '');

-- Sandi awal dibuat acak (nilai asli ada di file lokal .credentials.local - TIDAK di repo)
INSERT OR IGNORE INTO users (id, username, name, role, email, password, created_at) VALUES
('user-owner', 'owner', 'Jokowi (Owner)', 'owner', '', 'pbkdf2:100000:8041c5d67df387cb28b99d12461efeae:3532c41034ef54c4aa8237176d6e70b822764bf1401d9b28e7e868702352b77a', datetime('now')),
('user-kasir-1', 'kasir', 'Budi (Kasir)', 'kasir', '', 'pbkdf2:100000:10d293ef6d787d576de1e93698b90ca5:c8b6ef70403e1224a95dac6ef68d57ecaa74e7355193072758ba8b844ff51d0a', datetime('now')),
('user-admin', 'admin', 'Admin (Monitoring)', 'admin', '', 'pbkdf2:100000:2055f2fa44348564e891faef437b63bf:2c428efa23c625194667669c5c12a12a2d3e08cfb693ed26ba2a24b4c7610283', datetime('now'));

-- Menu default
INSERT OR IGNORE INTO menu (id, name, category, price, description, image_url, is_available, created_at) VALUES
('menu-1', 'Nasi Goreng Kecombrang', 'makanan', 32000, 'Nasi goreng harum dengan irisan kecombrang segar, telur mata sapi, kerupuk, dan acar buatan rumah.', 'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=500&auto=format&fit=crop&q=60', 1, datetime('now')),
('menu-2', 'Spaghetti Pesto Emerald', 'makanan', 38000, 'Pasta al dente dengan saus pesto basil segar berwarna hijau cerah, kacang mete, dan taburan keju parmesan.', 'https://images.unsplash.com/photo-1546549032-9571cd6b27df?w=500&auto=format&fit=crop&q=60', 1, datetime('now')),
('menu-3', 'Matcha Espresso Latte', 'minuman', 26000, 'Perpaduan matcha organik premium, susu segar dingin, dan double shot espresso Arabika.', 'https://images.unsplash.com/photo-1536256263959-770b48d82b0a?w=500&auto=format&fit=crop&q=60', 1, datetime('now')),
('menu-4', 'Kopi Susu Pandan Hijau', 'minuman', 20000, 'Espresso dingin dipadukan dengan susu kelapa gurih, sirup pandan alami buatan rumah, dan es batu.', 'https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?w=500&auto=format&fit=crop&q=60', 1, datetime('now')),
('menu-5', 'Croissant Matcha Almond', 'cemilan', 24000, 'Croissant mentega berlapis yang renyah dengan isian krim matcha manis dan taburan kacang almond panggang.', 'https://images.unsplash.com/photo-1555507036-ab1f4038808a?w=500&auto=format&fit=crop&q=60', 1, datetime('now')),
('menu-6', 'Singkong Crispy Garlic', 'cemilan', 18000, 'Singkong merekah yang gurih dan garing, disajikan hangat dengan cocolan bawang putih pedas manis.', 'https://images.unsplash.com/photo-1562059390-a761a084768e?w=500&auto=format&fit=crop&q=60', 1, datetime('now'));
