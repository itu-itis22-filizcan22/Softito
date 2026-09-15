PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS odunc;
DROP TABLE IF EXISTS kitaplar;
DROP TABLE IF EXISTS uyeler;

PRAGMA foreign_keys = ON;

CREATE TABLE uyeler (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ad TEXT NOT NULL,
    yas INTEGER CHECK (yas > 13),
    sehir TEXT DEFAULT 'Erzincan',
    kayit TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE kitaplar (
    id INTEGER PRIMARY KEY,
    ad TEXT UNIQUE NOT NULL
);

CREATE TABLE odunc (
    uye_id INTEGER REFERENCES uyeler(id) ON DELETE CASCADE,
    kitap_id INTEGER REFERENCES kitaplar(id),
    gun INTEGER,
    PRIMARY KEY (uye_id, kitap_id)
);

INSERT INTO kitaplar (id, ad) VALUES
(1, 'Sefiller'),
(2, 'Suç ve Ceza'),
(3, '1984'),
(4, 'Simyacı'),
(5, 'Körlük');

INSERT INTO uyeler (ad, yas, sehir) VALUES 
('Ahmet', 20, 'İstanbul'),
('Ayşe', 18, 'Ankara'),
('Mehmet', 22, 'İzmir');

INSERT INTO uyeler (ad, yas) VALUES 
('Fatma', 15), 
('Ali', 19), 
('Zeynep', 25),
('Can', 16),
('Elif', 21),
('Burak', 17),
('Cemre', 24);

INSERT INTO odunc (uye_id, kitap_id, gun) VALUES
(1, 1, 10), (1, 2, 35),
(2, 3, 40), (2, 4, 15),
(3, 1, 20), (3, 5, 8),
(4, 2, 45), (4, 3, 12),
(5, 4, 5),  (5, 5, 33),
(6, 1, 22), (6, 2, 28),
(7, 3, 31), (7, 4, 14),
(8, 5, 42), (8, 1, 11),
(9, 2, 19), (9, 3, 27),
(10, 4, 9), (10, 5, 38);

-- JOIN İŞLEMLERİ 

SELECT u.ad, k.ad AS kitap_adi, o.gun
FROM odunc o
JOIN uyeler u ON u.id = o.uye_id
JOIN kitaplar k ON k.id = o.kitap_id;

SELECT u.ad, k.ad AS kitap_adi, o.gun
FROM odunc o
JOIN uyeler u ON u.id = o.uye_id
JOIN kitaplar k ON k.id = o.kitap_id
WHERE o.gun > 30;

SELECT u.ad, k.ad AS kitap_adi, o.gun
FROM odunc o
JOIN uyeler u ON u.id = o.uye_id
JOIN kitaplar k ON k.id = o.kitap_id
WHERE u.sehir = 'Erzincan';

-- GRUPLAMA İŞLEMLERİ

SELECT uye_id, AVG(gun) AS ortalama_sure, COUNT(*) AS kitap_sayisi, MAX(gun) AS en_uzun_sure
FROM odunc
GROUP BY uye_id;

SELECT uye_id, AVG(gun) AS ortalama_sure,  COUNT(*) AS kitap_sayisi
FROM odunc
GROUP BY uye_id
HAVING AVG(gun) > 20;

SELECT k.ad, COUNT(o.kitap_id) AS okunma_sayisi
FROM kitaplar k
JOIN odunc o ON k.id = o.kitap_id
GROUP BY k.id;

SELECT sehir, COUNT(*) AS uye_sayisi
FROM uyeler
GROUP BY sehir
ORDER BY uye_sayisi DESC;

-- ALT SORGU İŞLEMLERİ

SELECT ad FROM uyeler 
WHERE id IN (SELECT uye_id FROM odunc WHERE gun > 30);

SELECT ad FROM kitaplar 
WHERE id NOT IN (SELECT kitap_id FROM odunc);

SELECT * FROM odunc 
WHERE gun > (SELECT AVG(gun) FROM odunc);

-- CASE 

SELECT uye_id, kitap_id, gun,
CASE WHEN gun > 30 THEN 'Gecikmiş' WHEN gun >= 15 THEN 'Uyarı' ELSE 'Normal' END AS durum
FROM odunc;

SELECT ad, yas,
CASE WHEN yas <= 18 THEN 'Genç' ELSE 'Yetişkin' END AS yas_grubu
FROM uyeler;

SELECT 
    CASE WHEN gun > 30 THEN 'Gecikmiş' WHEN gun >= 15 THEN 'Uyarı' ELSE 'Normal' END AS durum,
    COUNT(*) AS kayit_sayisi
FROM odunc
GROUP BY durum;

-- INDEX 

CREATE INDEX idx_uye_ad ON uyeler(ad);
ALTER TABLE uyeler ADD COLUMN eposta TEXT;
CREATE UNIQUE INDEX idx_eposta ON uyeler(eposta);