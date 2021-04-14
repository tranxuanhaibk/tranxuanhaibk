-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 02:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cland`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(10) UNSIGNED NOT NULL,
  `cname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `cname`) VALUES
(1, 'Mua Bán Đất'),
(2, 'HomeStay'),
(3, 'Đất Ven Biển'),
(4, 'Bất Động Sản'),
(26, 'Thương Mại'),
(28, 'Nhò Trọ');

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `lid` int(10) UNSIGNED NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cid` int(10) UNSIGNED NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lands`
--

INSERT INTO `lands` (`lid`, `lname`, `status`, `description`, `date_create`, `cid`, `picture`, `area`, `address`, `count_views`) VALUES
(7, 'Bán đất kiệt 4m đường Đà Sơn, Liên Chiểu, Tp Đà Nẵng. Diện tích 175m2, giá 1,8 tỷ', 1, '\r\n- Diện tích: 175,5m2.</br>\r\n- Ngang: 4,33m.</br>\r\n- Nở hậu 6,7m.</br>\r\n- Hướng: Đông Nam.</br>\r\n- Giá: 1,8 tỷ (có thương lượng ít).', '2020-07-18 13:04:54', 1, 'images.jpg', 175, 'Đà Sơn, Liên Chiểu, Tp Đà Nẵng.', 7),
(11, 'CĂN HỘ CAO CẤP CUỐI ĐƯỜNG PHẠM VĂN ĐỒNG', 1, 'Bcons Green View giá cho căn hộ chỉ từ:<br />\r\n- 1,4 tỷ cho căn 2PN 1WC.<br />\r\n- 1,5 tỷ cho căn 2PN 2WC.<br />\r\n- Thanh toán 30% cuối năm 2021 nhận nhà, 70% được hỗ trợ vay trong 20 năm.<br />\r\n- Vị trí: Quốc Lộ 1K, khu phố Tân Hòa, P. Đông Hòa, thành phố Dĩ An, Bình Dương.<br />\r\n- Tiện ích nội khu: Hồ bơi, công viên, nhà trẻ, shophouse, gần Big C, làng ĐHQG qua tuyến đường D1(17m) thuận tiện di chuyển,...<br />\r\n- Tiện ích ngoại khu: Gần Big C Dĩ An, chợ Đông Hòa, Trung tâm hành chính Dĩ An, liền kề Thủ Đức, làng ĐHQG. Kết nối TP. HCM với Đồng Nai thông qua trục QL1K - Phạm Văn Đồng.', '2021-03-23 06:00:56', 4, 'img20161009161035102-1fd59.jpg', 51, 'Quận 1 , Tp Hồ Chí Minh', 15),
(12, 'Nhà 3 lầu HXH Đường Bình Thới', 1, '_ Diện tích: 4x17,6m.</br>\r\n_ Nhà 3 lầu xây kiên cố chắc chắn.</br>\r\n_ Giá: 8,7 tỷ ( TL ). Do đang kẹt tiền nên sẽ để lại giá tốt cho khách thiện chí nhanh lẹ.</br>', '2020-07-18 13:45:56', 4, 'landmark.jpg', 32, 'Quận 11 - Hồ Chí Minh', 4),
(13, 'CĂN HỘ CAO CẤP CUỐI ĐƯỜNG BÙI THỊ XUÂN', 1, '- Diện tích: 4.5 x21m.</br>\r\nNhà thích hợp xây dựng mới.</br>\r\n- Nhà mặt tiền đường đẹp nhất Bình Thới. Ngay khu Cư Xá Bình Thới an ninh sang trọng, tiện vừa ở vừa kinh doanh hoặc cho thuê làm VP, tiện ích xung quanh đầy đủ.</br>\r\n- Giá bán: 8.8 tỷ, thương lượng.</br>\r\n- Sổ hồng chính chủ mua bán công chứng nhanh trong ngày.', '2021-01-08 15:35:01', 1, 'download (2).jpg', 32, 'Bán nhà mặt tiền đường 100 Bình Thới, P14, Q11.', 8),
(14, 'Bán nhà HXH 100 Bình Thới, P14, Q11 4.5x15m giá chỉ 9.5 tỷ', 1, '+ DT 4.5 x 15m</br>\r\n+ Kết cấu 1 trệt 3 lầu 1 sân thượng 5pn 4wc.</br>\r\n+ Nhà còn mới gần trường học siêu thị, tiện mua bán hay mở vp cty, cho thuê các kiểu.</br>\r\n+ Gần chợ chốt dân phòng rất an ninh hàng xóm thân thiện.</br>\r\n+ Sổ hồng đầy đủ 1 đời chủ ở lâu đời tới giờ.</br>\r\n+ Giá chỉ 9.5 tỷ thương lượng hoa hồng Thiên Á gửi ACE 60tr nhận đủ.</br>\r\nLiên hệ xem nhà và được tư vấn miễn phí.', '2021-03-23 06:00:55', 1, 'download.jpg', 200, 'Quận 11 - Hồ Chí Minh', 30),
(15, 'Bán sàn trung tâm thương mại Hà Nội, Tokyo Tower, tòa nhà cao nhất Hà Đông, Hà Nội', 1, 'Nhà đầu tư cần bán:</br>\r\n3 tầng trung tâm thương mại (TTTM) tại tòa nhà Tokyo Tower Hà Đông (Tòa nhà cao nhất Hà Đông).</br>\r\n- Tầng 1: S=600m2.</br>\r\n- Tầng 2: S=1600m2.</br>\r\n- Tầng 3: S=1600m2.</br>\r\n+ Tổng diện tích 3 sàn: 3.800m2.</br>\r\n- Đã nhận bàn giao.</br>\r\n- Sở hữu 50 năm.</br>\r\n- Khu vực căn hộ dự kiến bàn giao quý 3/2018.</br>\r\n\r\n+ Như chúng ta đã biết:</br>\r\n- Tokyo Tower là tòa nhà cao nhất Hà Đông, tọa lạc tại số 55 Vạn Phúc, ngay ngã tư Vạn Phúc - Tố Hữu. Một vị trí giao thông tốt, mật độ dân số cao.</br>\r\n- Dự án được đánh giá là hiếm khi có đến 4 tầng hầm để xe đảm bảo chỗ gửi ô tô.</br>\r\n- Tổng số căn hộ: 688 căn, tương đương = 2.752 cư dân (Khách hàng tiềm năng nhất cho khu vực TTTM).</br>\r\n+ Giá bán sau khi phân tích kỹ thị trường: 27 triệu/m2 (cho cả 3 tầng 1,2,3).', '2021-03-19 09:28:24', 26, '12.PNG', 3800, 'Quận Hà Đông - Hà Nội', 5),
(16, 'Bán đất nghỉ dưỡng Bình Châu, sổ sẳn, công chứng', 0, 'Đón sóng đầu tư đất nền nghỉ dưỡng biển Bình Châu 🔥</br>\r\n1️⃣Vị trí : cách bờ biển 1 km</br>\r\n2️⃣Giá rẻ hơn thị trường 1- 2 triệu/m2</br>\r\nGiá chỉ 1tr5 - 4 triệu/m2</br>\r\nDiện tích : 500 - 700 m2 trở lên</br>\r\n3️⃣Tiện Ích : Nằm trong khu dân cư hiện hữu có Villa, nhà nghỉ, homestay. Gần các khu nghỉ dưỡng đã đi vào hoạt động Alana Resort, Hodota, IRelax Bangkok, Novaworld ...</br>\r\n4️⃣ Pháp lý rõ ràng : Đã có sổ đỏ riêng từng nền, sang tên công chứng ngay.</br>\r\n5️⃣Bình Châu sẽ được lên thị trấn dự kiến trong năm 2020.</br>\r\n6️⃣Rất nhiều dự án đang mọc lên ở Bình Châu: Viện dưỡng lão quốc tế 3,000 tỉ, Novaworld và Nova Safari của Tập đoàn Novaland, Sân bay quốc tế Lộc An , The Grand Hồ Tràm còn 4 tỉ đô sẽ đầu tư trong giai đoạn tới...</br>\r\n7️⃣Quy tụ đầy đủ các yếu tố thiên nhiên ưu đãi như bờ biển sạch đẹp, rừng nguyên sinh 8,000 ha, Suối nước nóng Bình Châu có tác dụng chữa bệnh tự nhiên rất tốt cho sức khỏe.', '2020-07-18 16:52:09', 3, 'Capture1.PNG', 500, 'Huyện Xuyên Mộc, Bà Rịa - Vũng Tàu', 2),
(17, 'Bán homestay ngay trung tâm, hai mặt tiền thuộc khu quy hoạch Phan Đình Phùng. LH 0915136***', 1, 'Bán homestay ngay trung tâm, hai mặt tiền thuộc khu quy hoạch Phan Đình Phùng.</br>\r\n- Cần bán homestay cách trung tâm chưa tới 1Km, hai mặt tiền đường lớn khu dân cư ổn định thuộc P2 Thành phố Đà Lạt. Nơi tập trung nhiều khách sạn, nhà hàng.</br>\r\n- Nhà mới, diện tích 80m2, ngang 5m gồm một trệt ba lầu, một áp mái với 8 phòng, sảnh trước, sảnh sau và bếp rộng rãi.</br>\r\nHiện đang kinh doanh thu nhập tốt, lượng khách ổn định quanh năm. Vào kinh doanh ngay, hỗ trợ giấy tờ pháp lí.</br>\r\n- Giá 11,2 tỷ.', '2021-03-19 09:29:53', 2, 'Capture2.PNG', 80, 'Thành phố Đà Lạt - Lâm Đồng', 14),
(18, 'Bán Villa đường Hoàng Hoa Thám, Tp Đà Lạt, đang khai thác Homestay', 1, 'Cần bán homestay đường Hoàng Hoa Thám,Tp Đà Lạt, vị trí đầu đường, view thung lũng cực đẹp, đất trải dài đến suối, không bị che khuất tầm nhìn, kế bên cafe Mountain View, cafe Khách sạn Mây Lang Thang, 2 địa điểm rất hot ở Đà Lạt. nội thất còn rất mới, rất sạch sẽ, đang khai thác hiệu quả.</br> Nay gia đình đi định cư nước ngoài, chỉ tiếp khách thiện chí.', '2021-03-23 06:00:55', 4, 'dlandmark81.jpg', 1485, 'Thành phố Đà Lạt - Lâm Đồng', 23),
(19, 'CĂN HỘ CAO CẤP CUỐI ĐƯỜNG PHẠM VĂN ĐỒNG', 0, 'Hốmdbasdsaadsasdasdasdasasd', '2021-01-27 04:15:59', 28, '53886063_773962866306965_2897124134582484992_o.jpg', 12, '546utẻtr', 2),
(22, 'Bán đất kiệt 4m đường Đà Sơn, Liên Chiểu, Tp Đà Nẵng', 0, 'ưerweewbtbtbrytunytunt', '2021-03-19 09:40:51', 28, '1.jpg', 12, 'rwererwrweoimioiou,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleid` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleid`, `name`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` int(1) NOT NULL DEFAULT 1,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `remember_token`, `password`, `enable`, `roleId`) VALUES
(1, 'admin', 'Trần Xuân Hải', 'Quản trị viên', '$2a$10$vPkYojFKF29FCcmj4/F8D.d9FgQtIxzeTvpVhVczwWrypoqd5y.WG', 1, 1),
(2, 'mod', 'Lê Văn Manh', '', '$2a$10$Z4BfeJVUgO6rNzv0vN/eVeO/cR7276onKU61M6CV5.wmbK6n1OqfG', 2, 2),
(9, 'hai2', 'Trần Xuân Hải', 'Người dùng', '123456', 1, 2),
(10, 'hai123', 'Trần Xuân Hải', NULL, '$2a$10$Z4BfeJVUgO6rNzv0vN/eVeO/cR7276onKU61M6CV5.wmbK6n1OqfG', 2, 2),
(11, 'lochht', 'Trần Xuân Hải', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 2),
(12, 'dfafaf', 'Trần Xuân Hải', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 2),
(13, 'haihong44', 'Trần Xuân Hải', NULL, '$2a$10$lP7azSDoCk44Tr6kYEEnwusIr/XmNG9E2nv4AvFQoainxHDYYir8S', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vnecontact`
--

CREATE TABLE `vnecontact` (
  `cid` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vnecontact`
--

INSERT INTO `vnecontact` (`cid`, `fullname`, `email`, `subject`, `content`) VALUES
(1, 'Nguyễn Thị Hạnh', 'hanh@gmail.com', 'Phòng A1', 'Để bảo vệ giàn khoan, Trung Quốc đã điều thêm 17 tàu các loại so với hôm trước,\n		        sẵn sàng đâm va vào tàu Việt Nam.'),
(2, 'Phan Quốc Bảo', 'quocbao@gmail.com', 'Phòng A2', 'World Cup 2014 chưa đi hết lượt đầu vòng bảng nhưng các trọng tài đẳng cấp FIFA đã có tới bốn trận bị chỉ trích dữ dội.'),
(3, 'Nguyễn Văn Hòa', 'hoa@gmail.com', 'Phòng A3', 'Để bảo vệ giàn khoan, Trung Quốc đã điều thêm 17 tàu các loại so với hôm trước,\n		        sẵn sàng đâm va vào tàu Việt Nam.'),
(5, 'Bảo', 'bao@gmail.com', 'Nhà cho thuê', 'Test nhà cho thuê'),
(6, 'Trần Xuân Hải', 'Haehae0810@gmail.com', 'oke', 'tôi muốn mua nhà'),
(20, 'Trần Xuân Hải', 'Haehae0810@gmail.com', 'đâsdadadgbtyiuou31231', 'ytdu ujtyhter tre'),
(21, 'Trần Xuân Hải', 'Haehae0810@gmail.com', 'đâsdadadgbtyiuou31231', 'tôi muốn mua nhà 1'),
(22, 'Trần Xuân Hải', 'Haehae0810@gmail.com', 'oke', 'qưeqeq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnecontact`
--
ALTER TABLE `vnecontact`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `lid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vnecontact`
--
ALTER TABLE `vnecontact`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
