CREATE DATABASE [ShopDB]

USE [ShopDB]
GO


CREATE TABLE SANPHAM (
    MASP NVARCHAR(10) PRIMARY KEY,
    TENSP NVARCHAR(255) NOT NULL,
    GIA DECIMAL(18, 0) NOT NULL, -- S? d?ng DECIMAL cho gi� tr? ti?n t?
    DESCRIPTIONS NVARCHAR(MAX) NOT NULL,
	DISCOUNT DECIMAL(5, 2) DEFAULT 0, -- S? d?ng DECIMAL cho gi� tr? ph?n tr?m
    ImageURL NVARCHAR(255) NOT NULL,
);

INSERT INTO SANPHAM(MASP, TENSP, GIA, DESCRIPTIONS, DISCOUNT, ImageURL)
VALUES
    ('SP01', N'Orient Bambino', 8690000 , N'??ng h? Orient ?em ??n nh?ng s?n ph?m ?n t??ng chinh ph?c ng??i nh�n m?t c�ch nhanh ch�ng. ??ng h? Orient v?i nh?ng ch?t li?u cao c?p b�ng b?y n�ng t?m ??ng c?p cho ng??i s? h?u, ph� h?p v?i doanh nh�n th�nh ??t, d�n v?n ph�ng hay c�c gi�m ??c c�ng ty. Phong c�ch th?i th??ng, sang tr?ng ??y s?c thu h�t ??n t? ??ng h? Orient ch?c ch?n s? khi?n b?n lu�n h�nh di?n v?i nh?ng ng??i xung quanh',0.16, 'https://cdn.tgdd.vn/Products/Images/7264/315989/orient-ra-ak0802s10b-nam-1.jpg'),
    ('SP02', N'CITIZEN C7', 9077000, N'Xu h??ng thi?t k? ch�nh c?a ??ng h? Citizen l� ??n gi?n v� thanh l?ch. Citizen lu�n ch� tr?ng ??n vi?c ??i m?i v� t?o s? phong ph� cho c�c m?u thi?t k?. C�c chi ti?t c?ng ???c Citizen ??u t? k? l??ng trong kh�u ch? t�c',0.18, 'https://cdn.tgdd.vn/Products/Images/7264/287030/citizen-nh8397-80h-nam-1.jpeg'),
    ('SP03', N'KORLEX', 3700000, N'S?n ph?m ??ng h? mang th??ng hi?u Korlex v?i nhi?u m?u m� n?ng ??ng, tr? trung nh?ng kh�ng k�m ph?n tinh t? v� sang tr?ng, ph� h?p v?i n? gi?i ho?t ??ng ? nhi?u l?nh v?c t? d�n v?n ph�ng ??n doanh nh�n',0.16, 'https://cdn.tgdd.vn/Products/Images/7264/210295/korlex-ks002-01-nu-bac-2-org.jpg'), 
    ('SP04', N'Casio', 788000, N'Th??ng hi?u ??ng h? n?i ti?ng ??n t? Nh?t B?n kh�ng ng?ng c?i ti?n v� cho ra m?t nh?ng d�ng s?n ph?m ch?t l??ng ph� h?p v?i nhi?u ??i t??ng kh�ch h�ng. Nh?ng d�ng s?n ph?m n?i ti?ng c?a Casio l�: G-Shock v?i thi?t k? m?nh m? c�ng ?? b?n cao, Edifice thi?t k? hi?n ??i c�ng nhi?u t�nh n?ng v??t tr?i, Sheen v?i thi?t k? c? ?i?n v� sang tr?ng',0.17, 'https://cdn.tgdd.vn/Products/Images/7264/199510/casio-a159wa-n1df-bac-up-1-1-org.jpg'),
    ('SP05', N'G-SHOCK', 2114000, N'Ch? G trong t? G-Shock ???c b?t ngu?n t? ch? c�i ??u c?a t? Gravity, ngh?a l� kh�ng tr?ng l?c. G-Shock ???c hi?u v?i kh? n?ng ch?ng va ??p, r?i v?. C�i t�n ?� n�i r� v? t�nh n?ng v� thi?t k? c?a chi?c ??ng h?',0.16, 'https://cdn.tgdd.vn/Products/Images/7264/199605/g-shock-ga-700-1adr-den-up-2-org.jpg'),
	('SP06', N'Orient Star', 13200000, N'??ng h? Orient ?em ??n nh?ng s?n ph?m ?n t??ng chinh ph?c ng??i nh�n m?t c�ch nhanh ch�ng. ??ng h? Orient v?i nh?ng ch?t li?u cao c?p b�ng b?y n�ng t?m ??ng c?p cho ng??i s? h?u, ph� h?p v?i doanh nh�n th�nh ??t, d�n v?n ph�ng hay c�c gi�m ??c c�ng ty. Phong c�ch th?i th??ng, sang tr?ng ??y s?c thu h�t ??n t? ??ng h? Orient ch?c ch?n s? khi?n b?n lu�n h�nh di?n v?i nh?ng ng??i xung quanh.
',0.10, 'https://cdn.tgdd.vn/Products/Images/7264/309425/orient-re-av0b09n00b-nam-1-1.jpg'),
    ('SP07', N' Rolex Datejust 41 126331', 465000000 , N'Rolex l� th??ng hi?u ??ng h? ?� h?n s�u v�o t�m tr� c?a r?t nhi?u ng??i. Cho d� ng�nh c�ng nghi?p s?n xu?t ??ng h? c� tr?i qua bao th?ng tr?m th� c�i t�n Rolex v?n lu�n to? s�ng v� d??ng nh? th??ng hi?u n�y sinh ra l� ?? l�m c�i m?c chinh ph?c c?a nh?ng gi?c m?, c?a nh?ng kh�t khao, ?am m� ch�y b?ng c?a m?t ng??i ?a chu?ng ??ng h?. Kh�ng ng?ng n? l?c ?? ??nh h�nh nh?ng ti�u chu?n k? thu?t m?i, Rolex h�n hoan gi?i thi?u ??n gi?i s?u t?p ??ng h? s?n ph?m Rolex Datejust 126331 v?i m?t s? m�u socola ma m?, cu?n h�t m?i �nh nh�n',0.20, 'https://bizweb.dktcdn.net/100/175/988/products/rolex-datejust-41-126331.jpg?v=1638007562237'),
    ('SP08', N'Rolex Day-Date 40 228345RBR', 2050000000 , N'B? s?u t?p Day-Date gi? ?� tr? th�nh m?t t??ng ?�i trong th? gi?i ??ng h?, ???c v� l� d�ng ??ng h? d�nh cho T?ng th?ng. Thi?t k? n�y th?t s? ??p, sang tr?ng v� ??c bi?t l� c� r?t nhi?u phi�n b?n ?a d?ng, ph� h?p v?i th? hi?u c?a t?t c? m?i ng??i. V?i nh?ng kh�ch h�ng th�ch s? n?i b?t, ch?c ch?n chi?c Rolex Day-Date 40 228345RBR M?t S? ?�nh Kim C??ng s? l� l?a ch?n tuy?t v?i.',0.15, 'https://bizweb.dktcdn.net/100/175/988/products/dong-ho-rolex-day-date-40-228345rbr-mat-so-dinh-kim-cuong.jpg?v=1621498259100'),
	('SP09', N'Rolex Day-Date 36 128349RBR', 2050000000 , N'L� m?t trong nh?ng c? m�y th?i gian thu?c b? s?u t?p Day-Date m?i, ???c Rolex cho ra m?t trong n?m nay, m?u Rolex Day-Date 36 128349RBR-0006 s? h?u b? v? t? v�ng tr?ng cao c?p, m?t s? tr�n v� v�nh bezel ???c n?m k�n kim c??ng l?p l�nh. Kh�ng nh?ng th?, tr�n n?n m?t s? tr?ng tinh kh�i, h? th?ng 10 c?c s? ???c trang tr� nh?ng vi�n sapphire v?i nh?ng m�u s?c kh�c nhau t?o th�nh m?t d?i c?u v?ng tuy?t ??p. Chi ti?t � c?a s? th? v� ng�y bi?u t??ng c?a d�ng Day-Date ???c s?p x?p c�n ??i t?i v? tr� 12 gi? v� 3 gi? t?o n�n v? ??p ho�n ch?nh cho ??ng h?.',0.16, 'https://bizweb.dktcdn.net/100/175/988/products/dong-ho-rolex-day-date-36-128349rbr-mat-so-dinh-kim-cuong-8012db77-ac75-488c-b2b0-0ac9bcd54cc7.jpg?v=1631181084613'),
    ('SP10', N'Rolex Day-Date 36 128345RBR', 1440000000, N'Day - Date l� m?t trong nh?ng b? s?u t?p ??ng h? huy?n tho?i c?a Rolex, b? s?u t?p c� thi?t k? sang tr?ng, ??c ?�o v?i v? ngo�i b?t m?t c�ng b? m�y v?n h�nh b?n b?, ho?t ??ng tr?n tru.Trong chuy�n m?c gi?i thi?u s?n ph?m h�m nay, h�y c�ng  ch�ng t�i  kh�m ph� chi?c ??ng H? Rolex Day-Date 36 128345RBR M?t S? Ombr� N�u ?? hi?u h?n v? b? s?u t?p n�y.',0.20, 'https://bizweb.dktcdn.net/100/175/988/products/rolex-day-date-36-128345rbr-mat-so-ombre-nau.jpg?v=1609148582213');

CREATE TABLE KHACHHANG (
    MAKH INT IDENTITY(1,1) PRIMARY KEY,
    USERKH NVARCHAR(255) NOT NULL,
    PASSWORDKH NVARCHAR(255) NOT NULL,
    EMAIL NVARCHAR(255) NOT NULL,
    SDT int NOT NULL
);



INSERT INTO KHACHHANG(USERKH, PASSWORDKH, EMAIL, SDT)
VALUES
    ('vyhao123', 'hao123', 'haong123@gmail.com', 0785318591),
    ('vanminh1705', 'minh0747', 'vanminh1705@gmail.com', 0757449289),
    ('bao7799', 'baobao', 'nguyenbao7702@gmail.com', 0989349128), 
    ('long12345', 'long111', 'hoanglong1@gmail.com', 0975127872);

CREATE TABLE ShoppingItem(
    MAGH INT IDENTITY(1,1) PRIMARY KEY,
	MASP NVARCHAR(10) NOT NULL,
    TENSP NVARCHAR(255) NOT NULL,
	 ImageURL NVARCHAR(255) NOT NULL,
	QUANTITY INT DEFAULT 1,
    GIA DECIMAL(18, 0) NOT NULL,

    MAKH INT ,
    TENKH NVARCHAR(255) ,
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP),
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
);



    
 
