-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2025 lúc 06:18 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `paradiso`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `title`, `content`, `author`, `publish_date`, `image_url`) VALUES
(1, 'Paddling Tour', 'Tour chèo thuyền đầy thú vị và thử thách.', 'Mai Nguyễn', '2024-08-19', 'https://file.hstatic.net/200000909393/article/img-69-800x600-1_3f16d7045e9a4dd49d5acc42384a3d5f_1024x1024.jpg'),
(2, 'Mountain Hiking', 'Trải nghiệm leo núi cùng thiên nhiên hoang dã.', 'Mai Nguyễn', '2024-08-22', 'https://file.hstatic.net/200000909393/article/img-68_93702bac2c97447b9475c6bb07a485d8_grande.jpg'),
(3, 'Camping Tour', 'Chuyến cắm trại giữa núi rừng tuyệt đẹp.', 'Mai Nguyễn', '2024-08-22', 'https://file.hstatic.net/200000909393/article/img-70_23537e350baa48c5b65a977c872d0b09_grande.jpg'),
(4, 'Rafting', 'Hành trình vượt thác với môn thể thao đầy kích thích.', 'Mai Nguyễn', '2024-08-22', 'https://file.hstatic.net/200000909393/article/firdouss-ross-thsw2pd2gx0-unsplash-550x413_5206e2334e6b4e858a6427694dbee09b_grande.jpg'),
(5, 'Paddling Tour', 'Tour chèo thuyền đầy thú vị và thử thách.', 'Mai Nguyễn', '2024-08-22', 'https://theme.hstatic.net/200000909393/1001269498/14/home_instagram_img_3.jpg?v=2537'),
(6, 'Mountain Hiking', 'Trải nghiệm leo núi cùng thiên nhiên hoang dã.', 'Mai Nguyễn', '2024-08-22', 'https://theme.hstatic.net/200000909393/1001269498/14/home_instagram_img_1.jpg?v=2537'),
(7, 'Camping Tour', 'Chuyến cắm trại giữa núi rừng tuyệt đẹp.', 'Mai Nguyễn', '2024-08-22', 'https://theme.hstatic.net/200000909393/1001269498/14/home_instagram_img_4.jpg?v=2537'),
(8, 'Rafting', 'Hành trình vượt thác với môn thể thao đầy kích thích.', 'Mai Nguyễn', '2024-08-22', 'https://theme.hstatic.net/200000909393/1001269498/14/home_instagram_img_2.jpg?v=2537'),
(26, 'Xe Tăng M41', 'M41 là thành quả của quá trình phát triển xe tăng thử nghiệm T37. Nó đã trải qua nhiều cuộc chạy thử trong năm 1949. Năm 1950, hợp đồng sản xuất hàng loạt được ký kết. Cadillac Motor Car Division, một bộ phận của General Motors, là đơn vị chế tạo chiếc tăng này.', 'Đỗ Công Danh', '2024-11-21', 'http://localhost:3000/uploads/1733848852915-851814813.JPG'),
(27, 'Shipwreck ', 'Shipwreck ở Hy Lạp được vinh danh là bãi biển đẹp nhất trên thế giới năm 2018. Nằm trong một vịnh nhỏ hẻo lánh, bãi biển xinh đẹp này được bao quanh bởi những vách đá vàng cao chót vót. Bãi biển Shipwreck (hay còn gọi AKA Navagio) ở Zakynthos chỉ có thể đến được bằng thuyền. Nơi đây được chấm 10 điểm về vẻ hoang sơ, 8 điểm cho vị trí và chất lượng nước. \"Nó tuyệt hơn cả một giấc mơ. Nước biển tinh khiết cùng với xác con tàu cũ rỉ sét trong cát khiến nó trở thành một bãi biển phải đến một lần trong đời\".', 'Đỗ Công Danh', '2024-12-03', 'http://localhost:3000/uploads/1733848965308-906920075.webp'),
(28, ' Bãi biển Eagle, Aruba', ' Bãi biển Eagle, Aruba: Bãi biển của Aruba chinh phục du khách với bãi cát trắng mịn trải dài và làn nước xanh biếc. Ảnh: Celebrity Cruises.', 'Đỗ Công Danh', '2024-12-04', 'http://localhost:3000/uploads/1733849072366-683831610.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'huyền', 'huyen@gmail.com', 'tôi cần sự trợ giúp\n', '2024-10-17 23:26:05'),
(2, '1', '34r@ghjk', '12', '2024-10-18 00:07:25'),
(3, 'dcfg', 'd@gm', '12', '2024-10-18 00:08:00'),
(4, 'x', '689@gmail.com', 'dd', '2024-10-23 01:09:15'),
(5, 'Khánhh Huyềnndd', 'ddd@f', 'dd', '2024-10-23 01:10:47'),
(6, 'lkjhg', '1234@gmail.com', 'zx', '2024-10-23 01:15:56'),
(7, 'Danh Đỗ', 'docongdanh357@gmail.com', 'cần sự trợ giúp của bạn', '2024-11-04 20:07:57'),
(8, 'danh danh', 'docongdanh357@gmail.com', 'dâda', '2024-11-04 20:16:07'),
(9, 'Danh Đỗ', 'docongdanh357@gmail.com', 'đá', '2024-11-04 20:17:11'),
(10, 'Danh Đỗ', 'docongdanh357@gmail.com', 'danh siewue đẹp chai', '2024-11-13 12:30:21'),
(11, 'Danh Vipsssss', 'danh@gmail.com', 'danh2401', '2024-11-16 12:52:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id` int(11) NOT NULL,
  `id_homestay` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `ten_user` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay` datetime DEFAULT current_timestamp(),
  `sao` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia`
--

INSERT INTO `danh_gia` (`id`, `id_homestay`, `id_user`, `ten_user`, `noi_dung`, `ngay`, `sao`) VALUES
(1, 1, NULL, 'Nguyễn Văn An', 'Bình luận rất hay và thú vị!', '2024-10-17 23:17:10', 5),
(2, 1, NULL, 'Trần Thị B', 'Mình rất thích homestay này, không gian thoáng đãng.', '2024-10-17 23:17:10', 5),
(3, 1, NULL, 'Lê Văn C', 'Chủ nhà rất thân thiện và nhiệt tình.', '2024-10-17 23:17:10', 4),
(4, 2, NULL, 'Nguyễn Thị Duyên', 'Phòng sạch sẽ, dịch vụ tốt.', '2024-10-17 23:17:10', 5),
(5, 2, NULL, 'Trần Văn E', 'Cảnh đẹp, yên tĩnh.', '2024-10-17 23:17:10', 4),
(6, 2, NULL, '123', '123', '2024-11-06 11:06:31', 5),
(7, 3, NULL, 'huyền', 'abc', '2024-11-06 16:07:34', 5),
(8, 4, NULL, 'Nguyễn Văn Hùng', 'Homestay rất đẹp và dịch vụ chu đáo.', '2024-11-06 10:00:00', 5),
(9, 5, NULL, 'Phạm Thị Lan', 'Không gian thoải mái, mình rất thích.', '2024-11-06 10:05:00', 5),
(10, 6, NULL, 'Lê Anh Tuấn', 'Nhân viên rất thân thiện.', '2024-11-06 10:10:00', 5),
(11, 7, NULL, 'Trần Thị Thu', 'Mình đã có trải nghiệm tuyệt vời tại đây.', '2024-11-06 10:15:00', 5),
(12, 8, NULL, 'Đỗ Minh Hòa', 'Phòng ốc sạch sẽ và yên tĩnh.', '2024-11-06 10:20:00', 5),
(13, 9, NULL, 'Hoàng Văn Khánh', 'Không gian gần gũi thiên nhiên.', '2024-11-06 10:25:00', 4),
(14, 10, NULL, 'Vũ Thị Mai', 'Chất lượng dịch vụ tuyệt vời.', '2024-11-06 10:30:00', 4),
(15, 11, NULL, 'Nguyễn Thanh Bình', 'Nơi nghỉ dưỡng lý tưởng.', '2024-11-06 10:35:00', 5),
(16, 12, NULL, 'Lê Thị Hoa', 'Rất hài lòng về homestay.', '2024-11-06 10:40:00', 5),
(17, 13, NULL, 'Phạm Hồng Quân', 'Phòng rộng rãi và thoáng mát.', '2024-11-06 10:45:00', 5),
(18, 14, NULL, 'Trần Quốc Cường', 'Homestay tuyệt đẹp và giá hợp lý.', '2024-11-06 10:50:00', 5),
(19, 15, NULL, 'Đinh Thị Thu Trang', 'Dịch vụ tốt, chủ nhà nhiệt tình.', '2024-11-06 10:55:00', 4),
(20, 16, NULL, 'Nguyễn Văn Hải', 'Cảnh quan xung quanh rất đẹp.', '2024-11-06 11:00:00', 4),
(21, 17, NULL, 'Lê Quang Dũng', 'Giá cả hợp lý, không gian tuyệt vời.', '2024-11-06 11:05:00', 5),
(22, 18, NULL, 'Phạm Văn Khoa', 'Chất lượng dịch vụ tốt, phòng sạch.', '2024-11-06 11:10:00', 4),
(23, 19, NULL, 'Đặng Thị Lý', 'Homestay dễ tìm, gần trung tâm.', '2024-11-06 11:15:00', 4),
(24, 20, NULL, 'Hoàng Minh Sơn', 'Không gian thoáng đãng, dễ chịu.', '2024-11-06 11:20:00', 4),
(25, 21, NULL, 'Nguyễn Minh Hùng', 'Phòng đẹp và giá phải chăng.', '2024-11-06 11:25:00', 4),
(26, 22, NULL, 'Lê Thị Thu Hằng', 'Chủ nhà dễ thương và nhiệt tình.', '2024-11-06 11:30:00', NULL),
(27, 23, NULL, 'Phan Thanh Hải', 'Dịch vụ tốt và không gian đẹp.', '2024-11-06 11:35:00', NULL),
(28, 24, NULL, 'Đỗ Văn Phú', 'Phòng ốc sạch sẽ và tiện nghi.', '2024-11-06 11:40:00', NULL),
(29, 25, NULL, 'Trần Ngọc Anh', 'Homestay rộng rãi, yên tĩnh.', '2024-11-06 11:45:00', NULL),
(30, 27, NULL, 'Nguyễn Hoàng Anh', 'Giá hợp lý và dịch vụ tốt.', '2024-11-06 11:50:00', NULL),
(31, 4, NULL, 'Phạm Thị Ngọc Lan', 'Nơi lý tưởng để nghỉ dưỡng.', '2024-11-06 11:55:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_homestay`
--

CREATE TABLE `dat_homestay` (
  `id_DatHomestay` int(11) NOT NULL,
  `ngay_dat` date DEFAULT NULL,
  `ngay_tra` date DEFAULT NULL,
  `TT_Thanhtoan` varchar(255) DEFAULT 'chờ thanh toán',
  `tong_tien_dat` decimal(15,2) DEFAULT NULL,
  `id_HinhThuc_Coc` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_nhanvien` int(11) DEFAULT NULL,
  `id_homestay` int(11) DEFAULT NULL,
  `order_id` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `expiration_time` timestamp NULL DEFAULT current_timestamp(),
  `pay_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dat_homestay`
--

INSERT INTO `dat_homestay` (`id_DatHomestay`, `ngay_dat`, `ngay_tra`, `TT_Thanhtoan`, `tong_tien_dat`, `id_HinhThuc_Coc`, `id_user`, `id_nhanvien`, `id_homestay`, `order_id`, `created_at`, `expiration_time`, `pay_url`) VALUES
(329, '2024-12-16', '2024-12-17', 'Thanh toán thất bại', 180000.00, 1, 23, NULL, 3, 'MOMO1734337456694', '2024-12-16 01:24:15', '2024-12-16 01:25:15', 'https://test-payment.momo.vn/v2/gateway/pay?s=1197a94008383200d3f8a8dee24ab4045687bc5226deefa57707a64c55e5b8f6&t=TU9NT3xNT01PMTczNDMzNzQ1NjY5NA'),
(336, '2024-12-16', '2024-12-17', 'Đã thanh toán', 440000.00, 1, 29, NULL, 10, 'MOMO1734353987463', '2024-12-16 05:59:46', '2024-12-16 06:00:46', 'https://test-payment.momo.vn/v2/gateway/pay?s=e996ffd0339cd27950dbec49206cf78a4c1f112a31013436e1d06fd10091fc06&t=TU9NT3xNT01PMTczNDM1Mzk4NzQ2Mw'),
(338, '2024-12-17', '2024-12-18', 'Đã thanh toán', 308000.00, 1, 29, NULL, 10, 'MOMO1734355911319', '2024-12-16 06:31:50', '2024-12-16 06:32:50', 'https://test-payment.momo.vn/v2/gateway/pay?s=4eef0f1e5b4cffe2d910ed3f27b6dbee0064663312541908366e2b8783f58ad2&t=TU9NT3xNT01PMTczNDM1NTkxMTMxOQ'),
(339, '2024-12-16', '2024-12-17', 'Thanh toán thành công', 550000.00, 2, 29, NULL, 5, 'MOMO1734363480648', '2024-12-16 08:37:58', '2024-12-16 08:38:58', 'https://test-payment.momo.vn/v2/gateway/pay?s=dca2ec841154976eeb7f6119343a79a6e8f01230d97f25840c9932b2bc41c161&t=TU9NT3xNT01PMTczNDM2MzQ4MDY0OA'),
(340, '2024-12-16', '2024-12-17', 'Thanh toán thành công', 180000.00, 1, 29, NULL, 11, 'MOMO1734363746736', '2024-12-16 08:42:25', '2024-12-16 08:43:25', 'https://test-payment.momo.vn/v2/gateway/pay?s=39e7ae909294e628232a1b2baba9e14d3b1185b60d0c803b275272b3c8f28e5f&t=TU9NT3xNT01PMTczNDM2Mzc0NjczNg'),
(341, '2024-12-16', '2024-12-17', 'Thanh toán thành công', 450000.00, 2, 29, NULL, 2, 'MOMO1734363799529', '2024-12-16 08:43:18', '2024-12-16 08:44:18', 'https://test-payment.momo.vn/v2/gateway/pay?s=812e3f2c226b3bedcb834cd888978540b6ea8b3c2ce44de237401d8e2b72a30e&t=TU9NT3xNT01PMTczNDM2Mzc5OTUyOQ'),
(342, '2024-12-16', '2024-12-17', 'Đã thanh toán', 650000.00, 2, 29, NULL, 6, 'MOMO1734364445281', '2024-12-16 08:54:04', '2024-12-16 08:55:04', 'https://test-payment.momo.vn/v2/gateway/pay?s=3fb62fe045419044dfa57098241a58d5b92718ace80d9d77a6aad916f58d03b0&t=TU9NT3xNT01PMTczNDM2NDQ0NTI4MQ'),
(345, '2024-12-17', '2024-12-18', 'đã hủy', 600000.00, 2, 29, NULL, 3, NULL, '2024-12-16 22:27:23', '2024-12-16 22:28:23', 'https://test-payment.momo.vn/v2/gateway/pay?s=1f85603b7b718fd2cc610d807e79d4483a57b1bc58e6a743a5039025069aeb70&t=TU9NT3xNT01PMTczNDQxMzI0NDQ2OA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dich_vu`
--

CREATE TABLE `dich_vu` (
  `id_DV` int(11) NOT NULL,
  `Ten_DV` varchar(255) NOT NULL,
  `Mo_ta` text DEFAULT NULL,
  `Gia` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dich_vu`
--

INSERT INTO `dich_vu` (`id_DV`, `Ten_DV`, `Mo_ta`, `Gia`) VALUES
(1, 'Cho thuê xe', 'Xe ô tô 4 chỗ', 500.00),
(2, 'Dịch vụ Quản gia', 'Dịch vụ cung cấp quản gia riêng để hỗ trợ trong thời gian lưu trú', 300.00),
(3, 'Dịch vụ Wifi & Internet', 'Internet tốc độ cao miễn phí cho khách hàng', 0.00),
(4, 'Dịch vụ Giặt ủi', 'Dịch vụ giặt và ủi quần áo theo yêu cầu', 150.00),
(5, 'Dịch vụ Bữa sáng tại phòng', 'Bữa sáng được phục vụ tận phòng theo thực đơn lựa chọn', 200.00),
(6, 'Dịch vụ Chỗ đậu xe riêng', 'Chỗ đậu xe riêng biệt, an toàn và tiện lợi', 100.00),
(7, 'Dịch vụ Theo yêu cầu', 'Các dịch vụ khác được cung cấp theo yêu cầu của khách hàng', NULL),
(8, 'Dịch vụ Theo yêu cầu', 'Các dịch vụ khác được cung cấp theo yêu cầu của khách hàng', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id_DatHomestay` int(11) DEFAULT NULL,
  `ma_HD` varchar(255) NOT NULL,
  `ngaylap_HD` date DEFAULT NULL,
  `tong_tien` decimal(10,2) DEFAULT NULL,
  `TT_Thanhtoan` varchar(255) DEFAULT NULL,
  `id_homestay` int(11) DEFAULT NULL,
  `id_voucher` int(11) DEFAULT NULL,
  `id_nhanvien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthuc_coc`
--

CREATE TABLE `hinhthuc_coc` (
  `id_HinhThuc_Coc` int(11) NOT NULL,
  `HinhThuc_Coc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhthuc_coc`
--

INSERT INTO `hinhthuc_coc` (`id_HinhThuc_Coc`, `HinhThuc_Coc`) VALUES
(1, 'Cộc trước 30%'),
(2, 'Thanh toán đủ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `id_hinh` int(11) NOT NULL,
  `url_hinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh`
--

INSERT INTO `hinh_anh` (`id_hinh`, `url_hinh`) VALUES
(1, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(2, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(3, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(4, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(5, 'https://bazantravel.com/cdn/medias/uploads/85/85878-homestay-da-lat-view-rung-thong-kenny-house-700x525.jpg'),
(6, 'https://baoloctravel.vn/wp-content/uploads/2023/12/Tho-Non-Garden.jpg'),
(7, 'https://hotlinedatphong.com/wp-content/uploads/2021/06/Topas-River.jpg'),
(8, 'https://down-vn.img.susercontent.com/vn-11134259-7r98o-lwwnrs0aplg9d3'),
(9, 'https://o-cua-mua-thu-da-lat.hotelmix.vn/data/Photos/OriginalPhoto/10705/1070505/1070505967/O-Cua-Mua-Thu-Bed-Breakfast-Da-Lat-Exterior.JPEG'),
(10, 'https://agotourist.com/wp-content/uploads/2020/12/binh-yen-house-da-lat.jpg'),
(11, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(12, 'https://sakos.vn/wp-content/uploads/2023/04/top-5-homestay-da-lat-co-view-cuc-dinh-9.jpg'),
(13, 'https://media.vnptit3.vn/resources/portal/Images/TNN/namdan.tnn/thang72022/TanS%C6%A1n/1_637945948506085106.png'),
(14, 'https://www.vietnambooking.com/wp-content/uploads/2023/08/homestay-da-lat-view-nui-rung-9.jpg'),
(15, 'https://acihome.vn/uploads/19/thiet-ke-homestay-ven-bien-dep-thu-hut-3.jpg'),
(16, 'https://ezcloud.vn/wp-content/uploads/2019/04/homestay-da-lat-view-doi-nui.webp'),
(17, 'https://2trip.vn/wp-content/uploads/2023/07/homestay-quan-2-sai-gon-12.jpg'),
(18, 'https://homestayreview.vn/wp-content/uploads/2022/02/khach-san-tinh-yeu-nha-trang-3.jpg'),
(19, 'https://dulichvietdu.com/wp-content/uploads/2023/11/gio-bien-homestay-dao-ly-son.jpg'),
(20, 'https://homestayreview.vn/wp-content/uploads/2022/03/homestay-san-may-dalat-1.1.jpg'),
(21, 'https://mcdn.coolmate.me/image/July2022/homestay-ha-noi-co-be-boi-5-1.jpg'),
(22, 'https://images2.thanhnien.vn/zoom/686_429/Uploaded/thuyhang/2021_03_22/hoa1_ULHB.jpg'),
(23, 'https://sakos.vn/wp-content/uploads/2023/04/4344f14da6bd5f47947de6556da1c0c5.jpg'),
(24, 'https://cdn3.ivivu.com/2020/09/pine-hill-homestay-tam-dao-ivivu-1.jpg'),
(25, 'https://ohdidi.vn/uploads/static/NEWS/blog/homestay%20b%E1%BA%A3o%20l%E1%BB%99c/homestay-da-lat%201.jpeg'),
(26, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(27, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(28, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(29, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(30, 'https://bazantravel.com/cdn/medias/uploads/85/85878-homestay-da-lat-view-rung-thong-kenny-house-700x525.jpg'),
(31, 'https://baoloctravel.vn/wp-content/uploads/2023/12/Tho-Non-Garden.jpg'),
(32, 'https://hotlinedatphong.com/wp-content/uploads/2021/06/Topas-River.jpg'),
(33, 'https://down-vn.img.susercontent.com/vn-11134259-7r98o-lwwnrs0aplg9d3\r\n'),
(34, 'https://o-cua-mua-thu-da-lat.hotelmix.vn/data/Photos/OriginalPhoto/10705/1070505/1070505967/O-Cua-Mua-Thu-Bed-Breakfast-Da-Lat-Exterior.JPEG'),
(35, 'https://agotourist.com/wp-content/uploads/2020/12/binh-yen-house-da-lat.jpg'),
(36, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(37, 'https://sakos.vn/wp-content/uploads/2023/04/top-5-homestay-da-lat-co-view-cuc-dinh-9.jpg'),
(38, 'https://media.vnptit3.vn/resources/portal/Images/TNN/namdan.tnn/thang72022/TanS%C6%A1n/1_637945948506085106.png'),
(39, 'https://www.vietnambooking.com/wp-content/uploads/2023/08/homestay-da-lat-view-nui-rung-9.jpg'),
(40, 'https://acihome.vn/uploads/19/thiet-ke-homestay-ven-bien-dep-thu-hut-3.jpg'),
(41, 'https://ezcloud.vn/wp-content/uploads/2019/04/homestay-da-lat-view-doi-nui.webp'),
(42, 'https://2trip.vn/wp-content/uploads/2023/07/homestay-quan-2-sai-gon-12.jpg'),
(43, 'https://homestayreview.vn/wp-content/uploads/2022/02/khach-san-tinh-yeu-nha-trang-3.jpg'),
(44, 'https://dulichvietdu.com/wp-content/uploads/2023/11/gio-bien-homestay-dao-ly-son.jpg'),
(45, 'https://homestayreview.vn/wp-content/uploads/2022/03/homestay-san-may-dalat-1.1.jpg'),
(46, 'https://mcdn.coolmate.me/image/July2022/homestay-ha-noi-co-be-boi-5-1.jpg'),
(47, 'https://images2.thanhnien.vn/zoom/686_429/Uploaded/thuyhang/2021_03_22/hoa1_ULHB.jpg'),
(48, 'https://sakos.vn/wp-content/uploads/2023/04/4344f14da6bd5f47947de6556da1c0c5.jpg'),
(49, 'https://cdn3.ivivu.com/2020/09/pine-hill-homestay-tam-dao-ivivu-1.jpg'),
(50, 'https://ohdidi.vn/uploads/static/NEWS/blog/homestay%20b%E1%BA%A3o%20l%E1%BB%99c/homestay-da-lat%201.jpeg'),
(51, 'https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?cs=srgb&dl=pexels-asadphoto-457882.jpg&fm=jpg'),
(52, 'https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?cs=srgb&dl=pexels-asadphoto-457882.jpg&fm=jpg'),
(53, 'https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?cs=srgb&dl=pexels-asadphoto-457882.jpg&fm=jpg'),
(54, 'https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?cs=srgb&dl=pexels-asadphoto-457882.jpg&fm=jpg'),
(55, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(56, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(57, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg\r\n'),
(58, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(59, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(60, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(61, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(62, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(63, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(64, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(65, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(66, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_homestay`
--

CREATE TABLE `hinh_homestay` (
  `id_homestay` int(11) NOT NULL,
  `id_hinh` int(11) NOT NULL,
  `url_hinh` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_homestay`
--

INSERT INTO `hinh_homestay` (`id_homestay`, `id_hinh`, `url_hinh`) VALUES
(1, 1, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(2, 2, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(3, 3, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(4, 4, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(5, 5, 'https://bazantravel.com/cdn/medias/uploads/85/85878-homestay-da-lat-view-rung-thong-kenny-house-700x525.jpg'),
(6, 6, 'https://baoloctravel.vn/wp-content/uploads/2023/12/Tho-Non-Garden.jpg'),
(7, 7, 'https://hotlinedatphong.com/wp-content/uploads/2021/06/Topas-River.jpg'),
(8, 8, 'https://down-vn.img.susercontent.com/vn-11134259-7r98o-lwwnrs0aplg9d3'),
(9, 9, 'https://o-cua-mua-thu-da-lat.hotelmix.vn/data/Photos/OriginalPhoto/10705/1070505/1070505967/O-Cua-Mua-Thu-Bed-Breakfast-Da-Lat-Exterior.JPEG'),
(10, 10, 'https://agotourist.com/wp-content/uploads/2020/12/binh-yen-house-da-lat.jpg'),
(11, 11, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(12, 12, 'https://sakos.vn/wp-content/uploads/2023/04/top-5-homestay-da-lat-co-view-cuc-dinh-9.jpg'),
(13, 13, 'https://media.vnptit3.vn/resources/portal/Images/TNN/namdan.tnn/thang72022/TanS%C6%A1n/1_637945948506085106.png'),
(14, 14, 'https://www.vietnambooking.com/wp-content/uploads/2023/08/homestay-da-lat-view-nui-rung-9.jpg'),
(15, 15, 'https://acihome.vn/uploads/19/thiet-ke-homestay-ven-bien-dep-thu-hut-3.jpg'),
(16, 16, 'https://ezcloud.vn/wp-content/uploads/2019/04/homestay-da-lat-view-doi-nui.webp'),
(17, 17, 'https://2trip.vn/wp-content/uploads/2023/07/homestay-quan-2-sai-gon-12.jpg'),
(18, 18, 'https://homestayreview.vn/wp-content/uploads/2022/02/khach-san-tinh-yeu-nha-trang-3.jpg'),
(19, 19, 'https://dulichvietdu.com/wp-content/uploads/2023/11/gio-bien-homestay-dao-ly-son.jpg'),
(20, 20, 'https://homestayreview.vn/wp-content/uploads/2022/03/homestay-san-may-dalat-1.1.jpg'),
(21, 21, 'https://mcdn.coolmate.me/image/July2022/homestay-ha-noi-co-be-boi-5-1.jpg'),
(22, 22, 'https://images2.thanhnien.vn/zoom/686_429/Uploaded/thuyhang/2021_03_22/hoa1_ULHB.jpg'),
(23, 23, 'https://sakos.vn/wp-content/uploads/2023/04/4344f14da6bd5f47947de6556da1c0c5.jpg'),
(24, 24, 'https://cdn3.ivivu.com/2020/09/pine-hill-homestay-tam-dao-ivivu-1.jpg'),
(25, 25, 'https://ohdidi.vn/uploads/static/NEWS/blog/homestay%20b%E1%BA%A3o%20l%E1%BB%99c/homestay-da-lat%201.jpeg'),
(26, 26, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(27, 27, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(28, 28, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(29, 29, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(30, 30, 'https://bazantravel.com/cdn/medias/uploads/85/85878-homestay-da-lat-view-rung-thong-kenny-house-700x525.jpg'),
(1, 51, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(1, 52, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(1, 53, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(1, 54, 'https://dadiabeachhouse.com/upload/admin/homestay-view-bien-phu-yen.jpg'),
(2, 55, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(2, 56, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(2, 57, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg\r\n'),
(2, 58, 'https://motogo.vn/wp-content/uploads/2023/05/homestay-da-lat-rung-thong.jpg'),
(3, 59, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(3, 60, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(3, 61, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(3, 62, 'https://zoomtravel.vn/upload/news/15-homestay-da-lat-view-dep-gia-re-danh-cho-ban11122.jpg'),
(4, 63, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(4, 64, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(4, 65, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg'),
(4, 66, 'https://mia.vn/media/uploads/blog-du-lich/himawari-homestay-ngoi-nha-nho-an-minh-trong-khu-vuon-hoa-day-mau-sac-02-1652556429.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `homestay`
--

CREATE TABLE `homestay` (
  `id_homestay` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `ten_homestay` varchar(255) NOT NULL,
  `gia_homestay` decimal(10,2) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `danh_gia` decimal(2,1) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT 'Còn phòng, Hết phòng',
  `ngay` date DEFAULT NULL,
  `ngay_tra` date DEFAULT NULL,
  `id_Loai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `homestay`
--

INSERT INTO `homestay` (`id_homestay`, `slug`, `ten_homestay`, `gia_homestay`, `mota`, `danh_gia`, `TrangThai`, `ngay`, `ngay_tra`, `id_Loai`) VALUES
(1, '', 'Homestay view biển', 520000.00, 'Double Suite rộng 150m² với thiết kế trong suốt, nằm ở tầng cao nhất của khách sạn, mang đến tầm nhìn toàn cảnh tuyệt đẹp ra hồ Xuân Hương. Bạn sẽ được trải nghiệm dịch vụ đưa đón sân bay bằng xe riêng, thưởng thức tiệc trà chiều, nhận thư chào đón và tận hưởng bữa sáng tại phòng riêng.\r\n\r\nCác phòng tại khách sạn được trang bị khu vực ghế ngồi, TV màn hình phẳng có truyền hình cáp, phòng tắm riêng, đồ vệ sinh cá nhân miễn phí và vòi xịt/chậu rửa vệ sinh. Các phòng đều đi kèm với ấm đun nước, trong đó một số phòng có ban công và một số khác thì nhìn ra thành phố. \r\n\r\nTại Maple Inn, tất cả các phòng đều được thiết kế có ga trải giường và khăn tắm. \r\n\r\nKhách có thể thưởng thức bữa sáng thực đơn à la carte, kiểu lục địa hoặc kiểu Á tại chỗ nghỉ. \r\n\r\nLeo núi và đi xe đạp là hoạt động được ưa chuộng trong khu vực. Ngoài ra, Maple Inn có dịch vụ thuê ô tô. \r\n\r\nChỗ nghỉ cách Quảng trường Lâm Viên 2.3 km và Hồ Xuân Hương 2.4 km. Sân bay gần nhất là Sân bay Liên Khương.', 4.7, 'Còn phòng', '2024-12-14', '2024-12-17', 1),
(2, '', 'Homestay view núi', 450000.00, '1 lầu, 3 phòng ngủ, phù hợp cho 6 người.', 4.7, 'Còn phòng', '2024-12-14', '2024-12-17', 2),
(3, '', 'Homestay đồng quê ', 600000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 5.0, 'Còn phòng', NULL, NULL, 3),
(4, '', 'Homestay trên đồi cao', 400000.00, '1 lầu, 1 phòng ngủ, phù hợp cho 2 người.', 2.5, 'Còn phòng', NULL, NULL, 4),
(5, '', 'Homestay ruộng bậc thang', 550000.00, '2 lầu, 3 phòng ngủ, phù hợp cho 6 người.', 5.0, 'Còn phòng', NULL, NULL, 5),
(6, '', 'Homestay Hồ Nước Xanh', 650000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 5.0, 'Còn phòng', NULL, NULL, 1),
(7, '', 'Homestay Thác Nước', 700000.00, '3 lầu, 5 phòng ngủ, phù hợp cho 10 người.', 5.0, 'Còn phòng', NULL, NULL, 2),
(8, '', 'Homestay Cánh Đồng Xanh', 300000.00, '1 lầu, 2 phòng ngủ, phù hợp cho 4 người.', 5.0, 'Còn phòng', NULL, NULL, 3),
(9, '', 'Homestay Mùa Thu', 480000.00, '2 lầu, 3 phòng ngủ, phù hợp cho 6 người.', 4.0, 'Còn phòng', NULL, NULL, 4),
(10, '', 'Homestay Bình Yên', 550000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 4.0, 'Còn phòng', NULL, NULL, 5),
(11, '', 'Homestay Cửa Biển', 600000.00, '1 lầu, 2 phòng ngủ, phù hợp cho 4 người.', 5.0, 'Còn phòng', NULL, NULL, 1),
(12, '', 'Homestay Đỉnh Đồi', 700000.00, '2 lầu, 3 phòng ngủ, phù hợp cho 6 người.', 5.0, 'Còn phòng', NULL, NULL, 2),
(13, '', 'Homestay Suối Nguồn', 650000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 5.0, 'Còn phòng', NULL, NULL, 3),
(14, '', 'Homestay Rừng Xanh', 450000.00, '1 lầu, 1 phòng ngủ, phù hợp cho 2 người.', 5.0, 'Còn phòng', NULL, NULL, 4),
(15, '', 'Homestay Bến Cảng', 500000.00, '1 lầu, 2 phòng ngủ, phù hợp cho 4 người.', 4.0, 'Còn phòng', NULL, NULL, 5),
(16, '', 'Homestay Trên Đồi', 400000.00, '1 lầu, 1 phòng ngủ, phù hợp cho 2 người.', 4.0, 'Còn phòng', NULL, NULL, 1),
(17, '', 'Homestay Thảo Điền', 600000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 5.0, 'Còn phòng', NULL, NULL, 2),
(18, '', 'Homestay Tình Yêu', 700000.00, '1 lầu, 1 phòng ngủ, phù hợp cho 2 người.', 4.0, 'Còn phòng', NULL, NULL, 3),
(19, '', 'Homestay Gió Biển', 550000.00, '1 lầu, 2 phòng ngủ, phù hợp cho 4 người.', 4.0, 'Còn phòng', NULL, NULL, 4),
(20, '', 'Homestay Mây Trắng', 450000.00, '2 lầu, 3 phòng ngủ, phù hợp cho 6 người.', 4.0, 'Còn phòng', NULL, NULL, 5),
(21, '', 'Homestay Hồ Bơi', 650000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 4.0, 'Còn phòng', NULL, NULL, 1),
(22, '', 'Homestay Hoa Hồng', 550000.00, '1 lầu, 2 phòng ngủ, phù hợp cho 4 người.', 0.0, 'Còn phòng', NULL, NULL, 2),
(23, '', 'Homestay Đại Dương', 700000.00, '3 lầu, 5 phòng ngủ, phù hợp cho 10 người.', 0.0, 'Còn phòng', NULL, NULL, 3),
(24, '', 'Homestay Mộng Mơ', 400000.00, '1 lầu, 1 phòng ngủ, phù hợp cho 2 người.', 0.0, 'Còn phòng', NULL, NULL, 4),
(25, '', 'Homestay Phong Lan', 480000.00, '2 lầu, 3 phòng ngủ, phù hợp cho 6 người.', 0.0, 'Còn phòng', NULL, NULL, 5),
(26, '', 'Homestay Đồi Cát', 550000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 5.0, 'Còn phòng', NULL, NULL, 1),
(27, '', 'Homestay Thiên Đường', 600000.00, '1 lầu, 2 phòng ngủ, phù hợp cho 4 người.', 0.0, 'Còn phòng', NULL, NULL, 2),
(28, '', 'Homestay Vườn Nho', 450000.00, '1 lầu, 1 phòng ngủ, phù hợp cho 2 người.', 5.0, 'Còn phòng', NULL, NULL, 3),
(29, '', 'Homestay Trăng Non', 700000.00, '3 lầu, 5 phòng ngủ, phù hợp cho 10 người.', 4.0, 'Còn phòng', NULL, NULL, 4),
(30, '', 'Homestay Suối Tranh', 650000.00, '2 lầu, 4 phòng ngủ, phù hợp cho 8 người.', 5.0, 'Còn phòng', NULL, NULL, 5),
(61, 'myanh', 'myanh', 2000.00, 'gj', 0.0, 'Còn phòng', NULL, NULL, 1),
(62, 'myanh', 'myanh', 2000.00, 'gj', 0.0, 'Còn phòng', NULL, NULL, 1),
(63, 'nguyen-thi-my-anh', 'nguyễn thị mỹ ảnh', 2000.00, 'gj', 0.0, 'Còn phòng', NULL, NULL, 1),
(64, 'homestay-ngon-doi', 'Homestay Ngọn Đồi', 2000.00, 'gj', 0.0, 'Còn phòng', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_homestay`
--

CREATE TABLE `loai_homestay` (
  `id_Loai` int(11) NOT NULL,
  `Ten_Loai` varchar(255) NOT NULL,
  `Mo_ta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_homestay`
--

INSERT INTO `loai_homestay` (`id_Loai`, `Ten_Loai`, `Mo_ta`) VALUES
(1, 'Homestay view biển', 'Mô tả loại 1'),
(2, 'Homestay view núi', 'Mô tả loại 2'),
(3, 'Homestay đồng quê', 'Mô tả loại 3'),
(4, 'Homestay trên đồi cao', 'Mô tả loại 4'),
(5, 'Homestay view ruộng bậc thang', 'Mô tả loại 5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `ten_nhanvien` varchar(255) NOT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `trang_thai` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id_nhanvien`, `ten_nhanvien`, `sdt`, `email`, `dia_chi`, `role_id`, `trang_thai`) VALUES
(1, 'Nhân viên 1', '0123456789', 'nhanvien1@example.com', 'Hà Nội', 1, 'active'),
(2, 'Nhân viên 2', '0987654321', 'nhanvien2@example.com', 'TP. Hồ Chí Minh', 1, 'active'),
(3, 'Nhân viên 3', '0912345678', 'nhanvien3@example.com', 'Đà Nẵng', 1, 'active'),
(4, 'Nhân viên 4', '0909876543', 'nhanvien4@example.com', 'Cần Thơ', 1, 'active'),
(5, 'Nhân viên 5', '0888888888', 'nhanvien5@example.com', 'Hải Phòng', 1, 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sd_dv`
--

CREATE TABLE `sd_dv` (
  `id_Dathomestay` int(11) NOT NULL,
  `id_DV` int(11) NOT NULL,
  `Ngay_SD` date DEFAULT NULL,
  `sl_DV` int(11) DEFAULT NULL,
  `Gia` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tt_thanhtoan`
--

CREATE TABLE `tt_thanhtoan` (
  `id_TT_ThanhToan` int(11) NOT NULL,
  `TT_ThanhToan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `ten_user` varchar(255) NOT NULL,
  `sdt_user` varchar(20) DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `pass_user` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT 1,
  `address` varchar(250) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `dob` date NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `ten_user`, `sdt_user`, `email_user`, `pass_user`, `role_id`, `address`, `gender`, `dob`, `avatar`) VALUES
(1, 'Công Danh', '0967400391', 'danh35@gmail.com', 'danh1234', 2, 'Tổ 2 ấp 1 Suối Dây Tân Châu Tây Ninh', '1', '2004-01-23', NULL),
(2, 'admin', '0967400391', 'admin@gmail.com', '1111', 0, '', '', '0000-00-00', '/uploads/1733901491637-888811174.JPG'),
(23, 'danh Tests', '0967400391', 'danh@gmail.com', '1234', 2, 'Chưa cập nhật', '1', '2024-11-18', '/uploads/1734321908807-212974778.JPG'),
(24, 'Chu Văn An', '0888252129', 'an@gmail.com', '123', 2, '', '', '0000-00-00', NULL),
(26, 'Đinh Hoàng Minh', '0903496270', 'minh@gmail.com', '123', 2, 'đường 24, Long Thạnh Mỹ, Thủ Đức, Hồ Chí Minh', '1', '2004-11-11', '/uploads/1732861427521-907907463.JPG'),
(27, 'Đinh Đom Đóm ', '0939979797', 'Domdomj97@gmail.com', '1234', 2, '', '', '0000-00-00', NULL),
(29, 'Nhân Viên 1', '0909089999', 'nhanvien1@gmail.com', '123', 1, '', '', '0000-00-00', NULL),
(30, 'Minh Dinh', '0937302469', 'minh1110@gmail.com', '123', 2, '', '', '0000-00-00', NULL),
(31, ' Sang  ', '0937302469', 'Sangtran@gmail.com', '1111', 2, '', '', '0000-00-00', NULL),
(32, 'Nhân Viên 2', '0967400391', 'nhanvien2@gmail.com', '000', 1, '', '', '0000-00-00', NULL),
(40, 'Nhân Viên 3', '0999999999', 'nhanvien3@gmail.com', '000', 1, '', '', '0000-00-00', NULL),
(49, 'ảnh ', '0967400391', 'anh@gmail.com', 'danh12', 2, '', '', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_vouchers`
--

CREATE TABLE `user_vouchers` (
  `id_user_vouchers` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ma_voucher` int(11) NOT NULL,
  `used_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `discount_applied` decimal(5,2) DEFAULT NULL,
  `status` enum('used','expired','active') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_vouchers`
--

INSERT INTO `user_vouchers` (`id_user_vouchers`, `id_user`, `id_ma_voucher`, `used_at`, `discount_applied`, `status`) VALUES
(5, 24, 1, '2024-11-21 17:57:26', NULL, 'active'),
(6, 24, 1, '2024-11-21 17:57:28', NULL, 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id_voucher` int(11) NOT NULL,
  `ten_voucher` varchar(255) NOT NULL,
  `sl_voucher` int(11) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id_voucher`, `ten_voucher`, `sl_voucher`, `mo_ta`) VALUES
(1, 'PRDS20', 5, 'GIẢM 20% CHO HÓA ĐƠN 500K'),
(2, 'PRDS30', 5, 'GIẢM 20% CHO HÓA ĐƠN 500K');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id_ma_voucher` int(11) NOT NULL,
  `ma_voucher` varchar(255) NOT NULL,
  `giam_gia` decimal(5,2) NOT NULL,
  `ngay_het_han` datetime DEFAULT NULL,
  `so_luong` int(11) DEFAULT 1,
  `created_voucher` timestamp NOT NULL DEFAULT current_timestamp(),
  `ud_time_voucher` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id_ma_voucher`, `ma_voucher`, `giam_gia`, `ngay_het_han`, `so_luong`, `created_voucher`, `ud_time_voucher`) VALUES
(1, 'VOUCHER10', 10.00, '2024-12-31 23:59:59', 100, '2024-11-21 17:29:31', '2024-11-21 17:29:31'),
(2, 'VOUCHER20', 20.00, '2024-11-30 23:59:59', 50, '2024-11-21 17:29:31', '2024-11-21 17:29:31'),
(3, 'XMAS2024', 15.00, '2024-12-25 23:59:59', 200, '2024-11-21 17:29:31', '2024-11-21 17:29:31'),
(4, 'XMAS2025\r\n', 15.00, '2024-12-25 23:59:59', 200, '2024-11-21 17:29:31', '2024-11-22 02:47:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeuthich`
--

CREATE TABLE `yeuthich` (
  `id_yeuthich` int(11) NOT NULL,
  `id_homestay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `yeuthich`
--

INSERT INTO `yeuthich` (`id_yeuthich`, `id_homestay`) VALUES
(5, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_homestay`
--
ALTER TABLE `dat_homestay`
  ADD PRIMARY KEY (`id_DatHomestay`),
  ADD KEY `id_HinhThuc_Coc` (`id_HinhThuc_Coc`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_nhanvien` (`id_nhanvien`),
  ADD KEY `id_homestay` (`id_homestay`);

--
-- Chỉ mục cho bảng `dich_vu`
--
ALTER TABLE `dich_vu`
  ADD PRIMARY KEY (`id_DV`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`ma_HD`),
  ADD KEY `id_voucher` (`id_voucher`);

--
-- Chỉ mục cho bảng `hinhthuc_coc`
--
ALTER TABLE `hinhthuc_coc`
  ADD PRIMARY KEY (`id_HinhThuc_Coc`);

--
-- Chỉ mục cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD PRIMARY KEY (`id_hinh`);

--
-- Chỉ mục cho bảng `hinh_homestay`
--
ALTER TABLE `hinh_homestay`
  ADD PRIMARY KEY (`id_hinh`),
  ADD KEY `id_hinh` (`id_hinh`),
  ADD KEY `fk_homestay` (`id_homestay`);

--
-- Chỉ mục cho bảng `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`id_homestay`),
  ADD KEY `id_Loai` (`id_Loai`);

--
-- Chỉ mục cho bảng `loai_homestay`
--
ALTER TABLE `loai_homestay`
  ADD PRIMARY KEY (`id_Loai`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Chỉ mục cho bảng `sd_dv`
--
ALTER TABLE `sd_dv`
  ADD PRIMARY KEY (`id_Dathomestay`,`id_DV`),
  ADD KEY `id_DV` (`id_DV`);

--
-- Chỉ mục cho bảng `tt_thanhtoan`
--
ALTER TABLE `tt_thanhtoan`
  ADD PRIMARY KEY (`id_TT_ThanhToan`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Chỉ mục cho bảng `user_vouchers`
--
ALTER TABLE `user_vouchers`
  ADD PRIMARY KEY (`id_user_vouchers`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_ma_voucher` (`id_ma_voucher`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id_ma_voucher`);

--
-- Chỉ mục cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD PRIMARY KEY (`id_yeuthich`),
  ADD KEY `lk_yeuthich` (`id_homestay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `dat_homestay`
--
ALTER TABLE `dat_homestay`
  MODIFY `id_DatHomestay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT cho bảng `dich_vu`
--
ALTER TABLE `dich_vu`
  MODIFY `id_DV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `hinhthuc_coc`
--
ALTER TABLE `hinhthuc_coc`
  MODIFY `id_HinhThuc_Coc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  MODIFY `id_hinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `homestay`
--
ALTER TABLE `homestay`
  MODIFY `id_homestay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `loai_homestay`
--
ALTER TABLE `loai_homestay`
  MODIFY `id_Loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tt_thanhtoan`
--
ALTER TABLE `tt_thanhtoan`
  MODIFY `id_TT_ThanhToan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `user_vouchers`
--
ALTER TABLE `user_vouchers`
  MODIFY `id_user_vouchers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id_ma_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  MODIFY `id_yeuthich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dat_homestay`
--
ALTER TABLE `dat_homestay`
  ADD CONSTRAINT `dat_homestay_ibfk_1` FOREIGN KEY (`id_HinhThuc_Coc`) REFERENCES `hinhthuc_coc` (`id_HinhThuc_Coc`),
  ADD CONSTRAINT `dat_homestay_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `dat_homestay_ibfk_3` FOREIGN KEY (`id_nhanvien`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `dat_homestay_ibfk_4` FOREIGN KEY (`id_homestay`) REFERENCES `homestay` (`id_homestay`);

--
-- Các ràng buộc cho bảng `hinh_homestay`
--
ALTER TABLE `hinh_homestay`
  ADD CONSTRAINT `fk_homestay` FOREIGN KEY (`id_homestay`) REFERENCES `homestay` (`id_homestay`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hinh_homestay_ibfk_2` FOREIGN KEY (`id_hinh`) REFERENCES `hinh_anh` (`id_hinh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `homestay`
--
ALTER TABLE `homestay`
  ADD CONSTRAINT `homestay_ibfk_1` FOREIGN KEY (`id_Loai`) REFERENCES `loai_homestay` (`id_Loai`);

--
-- Các ràng buộc cho bảng `sd_dv`
--
ALTER TABLE `sd_dv`
  ADD CONSTRAINT `fk_dich_vu_dat_homestay` FOREIGN KEY (`id_Dathomestay`) REFERENCES `dat_homestay` (`id_DatHomestay`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sd_dv_dat_homestay` FOREIGN KEY (`id_Dathomestay`) REFERENCES `dat_homestay` (`id_DatHomestay`) ON DELETE CASCADE,
  ADD CONSTRAINT `sd_dv_ibfk_2` FOREIGN KEY (`id_DV`) REFERENCES `dich_vu` (`id_DV`);

--
-- Các ràng buộc cho bảng `user_vouchers`
--
ALTER TABLE `user_vouchers`
  ADD CONSTRAINT `user_vouchers_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `user_vouchers_ibfk_2` FOREIGN KEY (`id_ma_voucher`) REFERENCES `vouchers` (`id_ma_voucher`);

--
-- Các ràng buộc cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD CONSTRAINT `lk_yeuthich` FOREIGN KEY (`id_homestay`) REFERENCES `homestay` (`id_homestay`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
