-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 08:28 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `idImage` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`idImage`, `path`, `id`) VALUES
('AC01', 'img/AC01.jpg', 'AC01'),
('AC02', 'img/AC02.jpg', 'AC02'),
('AC03', 'img/AC03.jpg', 'AC03'),
('AC04', 'img/AC04.jpg', 'AC04'),
('C01', 'img/C01.jpg', 'C01'),
('C02', 'img/C02.jpg', 'C02'),
('C03', 'img/C03.jpg', 'C03'),
('C04', 'img/C04.jpg', 'C04'),
('CW01', 'img/CW01.jpg', 'CW01'),
('CW02', 'img/CW02.jpg', 'CW02'),
('CW03', 'img/CW03.jpg', 'CW03'),
('F01', 'img/F01.jpg', 'F01'),
('F02', 'img/F02.jpg', 'F02'),
('F03', 'img/F03.jpg', 'F03'),
('F04', 'img/F04.jpg', 'F04'),
('F05', 'img/F05.jpg', 'F05'),
('F06', 'img/F06.jpg', 'F06'),
('LD01', 'img/LD01.jpg', 'LD01'),
('LD02', 'img/LD02.jpg', 'LD02'),
('LD03', 'img/LD03.jpg', 'LD03'),
('LD04', 'img/LD04.jpg', 'LD04'),
('LD05', 'img/LD05.jpg', 'LD05'),
('LD06', 'img/LD06.jpg', 'LD06'),
('S01', 'img/S01.jpg', 'S01'),
('S02', 'img/S02.jpg', 'S02'),
('S03', 'img/S03.jpg', 'S03'),
('S04', 'img/S04.jpg', 'S04'),
('S05', 'img/S05.jpg', 'S05');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `username` varchar(20) NOT NULL,
  `idproduct` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`username`, `idproduct`, `quantity`) VALUES
('tao', 'C04', 3),
('NguyenA', 'F02', 4),
('NguyenA', 'S01', 8),
('NguyenA', 'C01', 4),
('NguyenA', 'F01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `username` varchar(20) NOT NULL,
  `Fullname` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Product` varchar(1000) NOT NULL,
  `Total` int(100) NOT NULL,
  `Note` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`username`, `Fullname`, `Email`, `Phone`, `Address`, `Product`, `Total`, `Note`) VALUES
('NguyenA', 'Ho', 'ASSD@Gmail.com', '09989878', 'ABDD', 'SSDASD(1),asdasd(2)', 1200003, ''),
('NguyenA Orders', 'Nguyễn Aasd', 'NguyenA@gmail.com', '019911999', 'asdas asddas Can Tho VietNam', 'Tượng mèo may mắn(5),', 15210000, 'asdasd'),
('NguyenA Orders', 'Khanh san', 'Hanh@mas', '019911999', 'asdads, asdas, Can Tho, VietNam', 'Tượng mèo may mắn(5),', 15210000, 'asdas'),
('NguyenA Orders', 'Nguyễn A', 'NguyenA@gmail.com', '019911999', 'Azir, Nasus, Can Tho, VietNam', 'Tượng mèo may mắn(5),', 15210000, 'Khong'),
('NguyenA Orders', 'Nguyễn A', 'NguyenA@gmail.com', '019911999', 'asd, asd, Can Tho, VietNam', 'Tượng mèo may mắn(5),', 15210000, 'ads'),
('NguyenA Orders', 'Nguyễn A', 'NguyenA@gmail.com', '019911999', 'Azir, Javan, Can Tho, VietNam', 'Bình cắm hoa chuồn chuồn(2),Lá sen màu thơ mộng(2),Tượng mèo may mắn(5),', 15210000, 'V'),
('NguyenA Orders', 'Nguyễn A', 'NguyenA@gmail.com', '019911999', 'asas, asdas, Can Tho, VietNam', 'Bình cắm hoa chuồn chuồn(2),Lá sen màu thơ mộng(2),Tượng mèo may mắn(5),', 15210000, 'a'),
('NguyenA Orders', 'Nguyễn A', 'NguyenA@gmail.com', '019911999', 'Java, Netbean, Can Tho, VietNam', 'Bình cắm hoa chuồn chuồn(2),Lá sen màu thơ mộng(2),Tượng mèo may mắn(5),', 15210000, ''),
('NguyenA Orders', 'Nguyễn B', 'NguyenA@gmail.com', '019911999', 'Azir, Nasus, Can Tho, VietNam', 'Bình cắm hoa chuồn chuồn(2),Lá sen màu thơ mộng(2),Tượng mèo may mắn(5),', 15210000, 'Javan');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(50) NOT NULL,
  `nameProduct` varchar(50) NOT NULL,
  `price` int(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nameProduct`, `price`, `type`, `description`) VALUES
('AC01', 'Arm Chair Lông Cừu', 4500000, 'Ghế nội thất\r\n', 'Arm Chair Lông Cừu/Kích thước: 90 x 75 x 75cm/ Chất liệu: Bông đàn hồi bọc Lông cừu nhân tạo/ Phong cách: Sang trọng\r\n'),
('AC02', 'Shark Chair', 3800000, 'Ghế nội thất\r\n', 'Shark Chair:/ Kích thước: 90 x 82 x 85cm/ Chất liệu: Bông đàn hồi bọc vải nhung lì cao cấp+Hợp kim/ Phong cách: Viễn tưởng\r\n'),
('AC03', 'Ghế thư giãn Rocking Chair', 2080000, 'Ghế nội thất\r\n', 'Ghế thư giãn Rocking Chair/ Kích thước: 55 x 140cm / Chất liệu: hợp kim+ vải da cao cấp/ Phong cách: hiện đại\r\n'),
('AC04', 'Ghế thư giãn Lông cừu', 6200000, 'Ghế nội thất\r\n', 'Ghế thư giãn Lông cừu/ Kích thước: ghế 100 x 62 x 76cm, đôn kê chân:41 x 53 x 42cm / Chất liệu: Bông đàn hồi bọc Lông cừu nhân tạo / Phong cách: Sang Trọng\r\n'),
('C01', 'Đồng hồ hươu hoa anh đào', 6200000, 'Đồng hồ để bàn', 'Đồng hồ hươu hoa anh đào:/ Kích thước: //+ Tổng thể: D29 x R8 x C47 / + Đồng hồ: 10cm(đường kính)//Chất liệu: đồng/ Phong cách: Cổ trang/ Trọng lượng: 2.03kg'),
('C02', 'Đồng hồ hình học', 1730000, 'Đồng hồ để bàn', 'Đồng hồ hình học:/ Kích thước: D28 x R5 x C24.5 / Chất liệu: hợp liệu / Phong cách: sang trọng'),
('C03', 'Đồng hồ hoa sen', 2800000, 'Đồng hồ để bàn', 'Đồng hồ hoa sen:/ Kích thước: D48 x R10 x C36 / Chất liệu: Vỏ đồng hồ kim loại , gíá đỡ bằng đồng/ Phong cách: cổ điển'),
('C04', 'Đồng hồ đá cẩm thạch', 2350000, 'Đồng hồ để bàn', 'Đồng hồ đá cẩm thạch:/ Kích thước: D16 x R10 x C26 x nặng 2.3kg / Chất liệu: hợp kim, đá cẩm thạch/ Phong cách Cổ điển'),
('CW01', 'Đồng hồ treo tường số la mã', 1100000, 'Đồng hồ treo tường', 'Đồng hồ treo tường số la mã:/ Kích thước: +Đường kính: 60xm/ Chất liệu: hợp kim mạ đồng/ Phong cách: Châu Âu'),
('CW02', 'Đồng hồ treo tường bông hoa', 4800000, 'Đồng hồ treo tường', 'Đồng hồ treo tường bông hoa:/ Kích thước: Cao 89 x Rộng 80 x Mặt 30/ Chất liệu: kim loại, da, kính/ Phong cách hiện đại'),
('CW03', 'Đồng hồ treo tường \"cảm giác\"', 4800000, 'Đồng hồ treo tường', 'Đồng hồ treo tường \"cảm giác\":/ Kích thước: D63 x C60 x ĐH23 / Chất liệu: hợp kim/ Phong cách: hiện đại'),
('F01', 'Bình cắm hoa chuồn chuồn', 1800000, 'Lọ hoa\r\n', 'Bình cắm hoa chuồn chuồn:/ Kích thước: R21 x C29 / Chất liệu: thuỷ tinh, kim loại / Phong cách: Sang trọng\r\n'),
('F02', 'Lọ hoa thuỷ tinh trong suốt', 2390000, 'Lọ hoa\r\n', 'Lọ hoa thuỷ tinh trong suốt:/ Kích thước: R15 x C35 / Chất liệu: thuỷ tinh, kim loại / Phong cách: Sang trọng\r\n'),
('F03', 'Bộ bình hoa gốm cao cấp', 2550000, 'Lọ hoa\r\n', 'Bộ bình hoa gốm cao cấp:/ Kích thước: D26 x R15 x C58 x 1.76kg / Ngọc phượng hoàng: D25 x R10.5 x C 31 x 4.47kg / Chất liệu: Gốm / Phong cách: Cổ điển\r\n'),
('F04', 'Bình hoa kim loại nghệ thuật', 2100000, 'Lọ hoa\r\n', 'Bình hoa kim loại nghệ thuật: / Kích thước: D24 x R24 x C48 / Chất liệu: Kim loại / Phong cách: Sang trọng\r\n'),
('F05', 'Bình hoa kim loại mạ vàng', 780000, 'Lọ hoa\r\n', 'Bình hoa kim loại mạ vàng: / Kích thước: 39cm x 25 cm/ Chất liệu: Khung hợp kim mạ/ Phong cách: Sang trọng\r\n'),
('F06', 'Bình hoa thuỷ tinh nghệ thuật', 3270000, 'Lọ hoa\r\n', 'Bình hoa thuỷ tinh nghệ thuật: / Kích thước: D43 x C40 / Chất liệu: đế pha lê, thuỷ tinh, thép không gỉ/ Phong cách: Sang trọng\r\n'),
('LD01', 'Đôi sư tử múa cầu may', 8500000, 'Đồ trang trí cao cấp\r\n', 'Đôi sư tử múa cầu may:/ Kích thước: 9,5 x 13 x13,5cm / Chất liệu: Đồng thau / Trọng Lượng: 2.2KG/ Phong cách: Cổ trang\r\n'),
('LD02', 'Nai sừng tấm', 3200000, 'Đồ trang trí cao cấp\r\n', 'Nai sừng tấm:/Kích thước: 25 x 11 x 39cm / Chất liệu: Đồng thau mạ vàng / Phong cách: Sang trọng\r\n'),
('LD03', 'Chú chó Mike', 4800000, 'Đồ trang trí cao cấp\r\n', 'Chú chó Mike:/ Kích thước: 14 x 17 x 26cm x 3KG / Chất liệu: Đồng thau / Phong cách: Hiện đại\r\n'),
('LD04', 'Mèo cung hỉ phát tài', 2990000, 'Đồ trang trí cao cấp\r\n', 'Mèo cung hỉ phát tài: / Kích thước: Dài 9,5cm, rộng 9cm, cao 15cm/ Chất liệu: Đồng thau / Phong cách: Hiện đại\r\n'),
('LD05', 'Tượng Bê nữu Hồng', 2500000, 'Đồ trang trí cao cấp\r\n', 'Tượng Bê nữu Hồng: / Kích thước: dài 12,5cm, rộng 7,5m, cao 9,5cm, 0,7kg / Chất liệu: Đồng thau  / Phong cách: Sang trọng\r\n'),
('LD06', 'Decor trừu tượng', 9800000, 'Đồ trang trí cao cấp\r\n', 'Decor trừu tượng  / Kích thước: 41 x 31 x 91cm  / Chất liệu: Kim loại cao cấp / Phong cách: Hiện đại\r\n'),
('S01', 'Tượng mèo may mắn', 1240000, 'Tượng trang trí', 'Mèo may mắn: /Kích thước: 32cm/ Chất liệu: FRP/Phong cách : Tối giản hiện đại'),
('S02', 'Tượng phi hành gia ôm trái tim', 4700000, 'Tượng trang trí', 'Tượng phi hành gia ôm trái tim:/ Kích thước: 62 x 110 cm / Chất liệu: FRP/ Phong cách: Viễn tưởng'),
('S03', 'Tượng thiên thần Vintage', 800000, 'Tượng trang trí', 'Tượng thiên thần Vintage:/ Kích thước: D17 x R11 x C25.5cm/ Chất liệu: Composite/ Phong cách: Âu Mỹ'),
('S04', 'Uyên ương là có đôi', 6999000, 'Tượng trang trí', 'Uyên ương có đôi: / Kích thước:/ +Đôi uyên ương: 33cm x 9.5cm x 28cm/+Ngọc bích: 20cm// Chất liệu: đồng + đá ngọc bích// Phong cách: Cổ trang /Trọng lượng: 3.18kg'),
('S05', 'Lá sen màu thơ mộng', 2690000, 'Tượng trang trí', 'Lá sen màu thơ mộng: / Kích thước: D30 x R5 x C30/ Chất liệu: đồng/ Phong cách: nhẹ nhàng');

-- --------------------------------------------------------

--
-- Table structure for table `sendmassage`
--

CREATE TABLE `sendmassage` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sendmassage`
--

INSERT INTO `sendmassage` (`name`, `email`, `subject`, `message`) VALUES
('A89', 'Male', 'Tran Ngoc Hoai', 'NTH@fpt.edu.vn'),
('ádá', 'ấđffsada', 'tientce171382@fpt.edu.vn', 'áđâsd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `fullname`, `password`, `email`, `phone`, `address`) VALUES
('DinhC', 'Đinh C', '398rty27', 'DinhC@gmail.com', '0345345345', 'Quận 12, TP Hồ Chí Minh\r\n'),
('NguyenA', 'Nguyễn A', '123abc45', 'NguyenA@gmail.com', '019911999', 'Trần Hoàng Na, Ninh Kiều, Cần Thơ\r\n'),
('TieuD', 'Tiêu D', '736kjh65', 'TieuD@gmail.com\r\n', '0456456456', 'Hạ Long\r\n'),
('TranB', 'Trần B', '567qwe89', 'TranB@gmail.com', '0123123123', 'Trần Duy Hưng, Hà Nội\r\n'),
('TrinhH', 'Trịnh H', '682gdf25', 'TrinhH@gmail.com', '0567567567', 'Hải Phòng\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idImage`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD KEY `idproduct` (`idproduct`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
