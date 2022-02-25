-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2021 lúc 05:19 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoponline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctgiohang`
--

CREATE TABLE `ctgiohang` (
  `MACTGT` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `GIATIEN` float NOT NULL,
  `MOTA` varchar(256) NOT NULL,
  `MASP` int(11) NOT NULL,
  `MAGH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ctgiohang`
--

INSERT INTO `ctgiohang` (`MACTGT`, `SOLUONG`, `GIATIEN`, `MOTA`, `MASP`, `MAGH`) VALUES
(2, 1, 30000000, '', 37, 2),
(3, 1, 30000000, '', 37, 2),
(4, 1, 30000000, '', 39, 2),
(5, 1, 30000000, '', 42, 3),
(8, 1, 30000000, '', 41, 3),
(9, 1, 30000000, '', 35, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `districtid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `MAGH` int(11) NOT NULL,
  `TENGH` varchar(50) NOT NULL,
  `NGAYLAP` date NOT NULL,
  `TONGTIEN` float NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `MAKH` int(11) NOT NULL,
  `GHICHU` varchar(256) NOT NULL,
  `DIACHI` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`MAGH`, `TENGH`, `NGAYLAP`, `TONGTIEN`, `SOLUONG`, `MAKH`, `GHICHU`, `DIACHI`) VALUES
(2, 'gh_1', '2021-12-07', 100000000, 3, 2, 'sản phẩm rất tốt', 'ha nam'),
(3, 'gh_2', '2021-12-07', 120000000, 3, 3, 'sản phẩm rất tốt', 'ha nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imgcon`
--

CREATE TABLE `imgcon` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `img1` varchar(200) DEFAULT NULL,
  `img2` varchar(200) DEFAULT NULL,
  `img3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `imgcon`
--

INSERT INTO `imgcon` (`id`, `id_sp`, `img1`, `img2`, `img3`) VALUES
(4, 39, '39ghe-don-thu-ma-08-p1467.png', '39ghe-thu-gian-da-that-ma-my917-p1462.jpg', '39ghe-thu-gian-label-ma-8319-p1425.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` int(11) NOT NULL,
  `TENKH` varchar(50) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `DIACHI` varchar(50) NOT NULL,
  `TICHDIEM` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `TENKH`, `SDT`, `DIACHI`, `TICHDIEM`, `EMAIL`) VALUES
(1, 'BUI QUANG DIEP', '0985679872', 'HA NAM', 1000, 'quangdiep957@gmail.com'),
(2, 'BUI MINH HANG', '0985679872', 'HA NAM', 1000, 'quangdiep957@gmail.com'),
(3, 'BUI UDC ANH', '.0911232453', 'HA NOI', 1000, 'quangdiep@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `MALSP` int(11) NOT NULL,
  `TENLSP` varchar(50) NOT NULL,
  `anh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`MALSP`, `TENLSP`, `anh`) VALUES
(11, 'Ghế sofa', ''),
(12, 'Bàn ăn', ''),
(13, 'Giường ngủ', ''),
(14, 'Ghế thư giãn', ''),
(15, 'Đồ trang trí', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MANCC` int(11) NOT NULL,
  `TENNCC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MANCC`, `TENNCC`) VALUES
(6, 'ERADO');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MASP` int(10) NOT NULL,
  `TENSP` varchar(50) NOT NULL,
  `NSX` date NOT NULL,
  `HSD` date NOT NULL,
  `MANCC` int(11) NOT NULL,
  `ANH` varchar(200) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `MOTA` varchar(256) NOT NULL,
  `MALSP` int(11) NOT NULL,
  `GIANHAP` float NOT NULL,
  `GIABAN` float NOT NULL,
  `TRANGTHAI` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `NSX`, `HSD`, `MANCC`, `ANH`, `SOLUONG`, `MOTA`, `MALSP`, `GIANHAP`, `GIABAN`, `TRANGTHAI`) VALUES
(35, 'Bàn Ăn Mặt Đá Marble-t1832c-p1580', '2021-12-02', '2021-12-02', 6, 'Bàn Ăn Mặt Đá Marble-t1832c-p1580ban-an-mat-da-marble-ma-t1832c-p1580.jfif', 50, 'Mặt đá Marble màu nâu Light Emperador (nâu Thổ Nhĩ Kỳ) - Khung thép cứng\r\nNhập khẩu chính ngạch có đầy đủ CO & CQ \r\nSản phẩm thiết kế hoàn toàn mới nâng cao trải nghiệm, tối ưu cho không gian', 12, 37000000, 37000000, 1),
(36, 'Bàn Ăn Mặt Đá Marble-t1832c-p1580', '2021-12-02', '2021-12-02', 6, 'Bàn Ăn Mặt Đá Marble-t1832c-p1580ban-an-mat-da-marble-ma-t1832c-p1580.jfif', 20, 'Mặt đá Marble màu nâu Light Emperador (nâu Thổ Nhĩ Kỳ) - Khung thép cứng\r\nNhập khẩu chính ngạch có đầy đủ CO & CQ \r\nSản phẩm thiết kế hoàn toàn mới nâng cao trải nghiệm, tối ưu cho không gian', 12, 37000000, 37000000, 1),
(37, 'Bàn Kệ-005a-p113', '2021-12-02', '2021-12-02', 6, 'Bàn Kệ-005a-p113ban-ke-ma-005a-p113.jpg', 20, 'Mặt đá Marble màu nâu Light Emperador (nâu Thổ Nhĩ Kỳ) - Khung thép cứng\r\nNhập khẩu chính ngạch có đầy đủ CO & CQ \r\nSản phẩm thiết kế hoàn toàn mới nâng cao trải nghiệm, tối ưu cho không gian', 12, 22000000, 22000000, 1),
(38, 'Bàn Kệ-h14-p159', '2021-12-02', '2021-12-02', 6, 'Bàn Kệ-h14-p159ban-ke-ma-h14-p159.jpg', 20, 'Mặt đá Marble màu nâu Light Emperador (nâu Thổ Nhĩ Kỳ) - Khung thép cứng\r\nNhập khẩu chính ngạch có đầy đủ CO & CQ \r\nSản phẩm thiết kế hoàn toàn mới nâng cao trải nghiệm, tối ưu cho không gian', 12, 28000000, 28000000, 1),
(39, 'Sofa Da Thật-p1540', '2021-12-02', '2021-12-02', 6, 'Sofa Da Thật-p1540sofa-da-that-p1540.jfif', 20, '', 11, 28000000, 28000000, 1),
(41, 'Ghế thư giãn remo 11', '2021-12-02', '2021-12-02', 6, 'Ghế thư giãn remo 11ghe-thu-gian-remo-ma-11-p590.jpg', 20, '', 14, 28000000, 28000000, 1),
(42, 'Ghế thư giãn da thật -my926a', '2021-12-02', '2021-12-02', 6, 'Ghế thư giãn da thật -my926aghe-thu-gian-da-that-ma-my926a-p1497.jpg', 20, '', 14, 28000000, 28000000, 1),
(47, 'Bàn-ăn-tròn-610', '2021-12-02', '2021-12-02', 6, 'Bàn-ăn-tròn-610ban-an-tron-ma-610-p1381.jpg', 20, '', 12, 16000000, 19000000, 1),
(50, 'Ghế con voi', '2021-12-02', '2021-12-02', 6, 'Ghế con voidon-thu-hinh-chu-voi-p302.jpg', 50, '', 15, 3243250, 4000000, 1),
(51, 'Ghế bò sữa', '2021-12-02', '2021-12-02', 6, 'Ghế bò sữadon-thu-ma-02-p298.jpg', 50, '', 15, 3243250, 4000000, 1),
(52, 'Đồng hồ treo tường-bs661513', '2021-12-02', '2021-12-02', 6, 'Đồng hồ treo tường-bs661513dong-ho-treo-tuong-ma-bs661513-p1257.png', 50, '', 15, 3243250, 4000000, 1),
(53, 'Bàn trà mặt đá', '2021-12-02', '2021-12-02', 6, 'Bàn trà mặt đában-tra-dien-mat-da-marble-ma-b666n-p1402.jpg', 50, '', 12, 3243250, 4000000, 1),
(54, 'Đồng hồ trang trí-12', '2021-12-02', '2021-12-02', 6, 'Đồng hồ trang trí-12dong-ho-trang-tri-ma-12-p1249.jpg', 50, '', 15, 5243250, 6000000, 1),
(55, 'Ghế con chó', '2021-12-02', '2021-12-02', 6, 'Ghế con chódon-thu-ma-03-p307.jpg', 50, '', 15, 5243250, 6000000, 1),
(56, 'Ghế đôn-sofa-ma-13', '2021-12-02', '2021-12-02', 6, 'Ghế đôn-sofa-ma-13ghe-don-sofa-ma-13-2-p1458.png', 50, '', 15, 5243250, 6000000, 1),
(57, 'Giường ngủ da thật-ma-181-p1553.jpg', '2021-12-02', '2021-12-02', 6, 'Giường ngủ da thật-ma-181-p1553.jpggiuong-ngu-da-that-ma-181-p1553.jpg', 50, '', 13, 5243250, 6000000, 1),
(58, 'Giường da hạng sang -p670.jpg', '2021-12-02', '2021-12-02', 6, 'Giường da hạng sang -p670.jpggiuong-da-hang-sang-ma-670-p1547.jfif', 50, '', 13, 18243200, 25000000, 1),
(59, 'Bàn trà sofa', '2021-12-02', '2021-12-02', 6, 'Bàn trà sofaban-tra-sofa-mat-da-ma-s1712-p1521.jpg', 50, '', 15, 20000000, 25000000, 1),
(60, 'Ghế đôn thú', '2021-12-02', '2021-12-02', 6, 'Ghế đôn thúghe-don-thu-ma-08-p1467.png', 50, '', 15, 20000000, 25000000, 1),
(61, 'Ghế Sofa Đơn', '2021-12-02', '2021-12-02', 6, 'Ghế Sofa Đơnghe-sofa-don-da-ma-am16-p1409.jpg', 20, '', 11, 15000000, 18000000, 1),
(62, 'Ghế Sofa phòng khách', '2021-12-02', '2021-12-02', 6, 'Ghế Sofa phòng kháchsofa-da-phong-khach-ma-253-p768.jpg', 20, '', 11, 15000000, 18000000, 1),
(63, 'Sofa-Văng da', '2021-12-02', '2021-12-02', 6, 'Sofa-Văng dasofa-vang-da-hang-sang-ma-235-p1461.png', 20, '', 11, 15000000, 18000000, 1),
(64, 'giuong-da-p1431', '2021-12-02', '2021-12-02', 6, 'giuong-da-p1431giuong-da-p1431.jfif', 20, '', 13, 15000000, 18000000, 1),
(65, 'Giường da bọc vải', '2021-12-02', '2021-12-02', 6, 'Giường da bọc vảigiuong-ngu-boc-vai-ma-a83-p1389.jpg', 20, '', 13, 25000000, 30000000, 1),
(67, 'Giường da thật 23284', '2021-12-02', '2021-12-02', 6, 'Giường da thật 23284giuong-ngu-da-that-ma-181-p1553.jpg', 20, '', 13, 25000000, 30000000, 1),
(68, 'Giường da thật 242', '2021-12-02', '2021-12-02', 6, 'Giường da thật 242giuong-ngu-da-that-ma-1688-p227.jpg', 20, '', 13, 25000000, 31000000, 1),
(70, 'Ghế da thật', '2021-12-02', '2021-12-02', 6, 'Ghế da thậtghe-thu-gian-da-that-ma-my917-p1462.jpg', 20, '', 14, 15000000, 17000000, 1),
(71, 'Ghế ghe-thu-gian-jula', '2021-12-02', '2021-12-02', 6, 'Ghế ghe-thu-gian-julaghe-thu-gian-jula-ma-17-p636.jpg', 20, '', 14, 15000000, 17000000, 1),
(72, 'Ghế ghe-thu-gian-lable', '2021-12-02', '2021-12-02', 6, 'Ghế ghe-thu-gian-lableghe-thu-gian-label-ma-8319-p1425.jpg', 20, '', 14, 15000000, 17000000, 1),
(73, 'Ghế ghe-thu-gian-lable 123', '2021-12-02', '2021-12-02', 6, 'Ghế ghe-thu-gian-lable 123ghe-thu-gian-label-ma-18-p616.jpg', 20, '', 14, 15000000, 17000000, 1),
(74, 'Ghế ghe-thu-gian-lable-7373', '2021-12-02', '2021-12-02', 6, 'Ghế ghe-thu-gian-lable-7373ghe-thu-gian-label-ma-7373-p1424.jpg', 20, '', 14, 15000000, 17000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `username`, `password`, `email`) VALUES
(1, 'quangdiep', '123456', 'quangdiep957@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctgiohang`
--
ALTER TABLE `ctgiohang`
  ADD PRIMARY KEY (`MACTGT`),
  ADD KEY `MASP` (`MASP`),
  ADD KEY `MAGH` (`MAGH`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MAGH`),
  ADD KEY `MAKH` (`MAKH`),
  ADD KEY `MAKH_2` (`MAKH`),
  ADD KEY `MAKH_3` (`MAKH`);

--
-- Chỉ mục cho bảng `imgcon`
--
ALTER TABLE `imgcon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`MALSP`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MANCC`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASP`),
  ADD KEY `MANCC` (`MANCC`),
  ADD KEY `MALSP` (`MALSP`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ctgiohang`
--
ALTER TABLE `ctgiohang`
  MODIFY `MACTGT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `MAGH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `imgcon`
--
ALTER TABLE `imgcon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MAKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `MALSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MANCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MASP` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctgiohang`
--
ALTER TABLE `ctgiohang`
  ADD CONSTRAINT `ctgiohang_ibfk_1` FOREIGN KEY (`MAGH`) REFERENCES `giohang` (`MAGH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ctgiohang_ibfk_2` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `imgcon`
--
ALTER TABLE `imgcon`
  ADD CONSTRAINT `imgcon_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`MASP`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MALSP`) REFERENCES `loaisp` (`MALSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
