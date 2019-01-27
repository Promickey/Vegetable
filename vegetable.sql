-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 18, 2019 lúc 01:56 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vegetable`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Đồ Khô', NULL, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(2, 'Rau - Củ - Quả', NULL, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(3, 'Trái Cây', NULL, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(4, 'Thịt - Trứng', NULL, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(5, 'Thuỷ - Hải Sản', NULL, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(6, 'Gia vị & Phụ Liệu', NULL, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(7, 'Đồ Uống', NULL, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(8, 'Gạo', 1, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(9, 'Ngũ Cốc', 1, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(10, 'Các Loại hạt', 1, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(11, 'Bánh - Kẹo', 1, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(12, 'Đồ Khô Khác', 1, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(13, 'Rau Tươi', 2, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(14, 'Rau Gia Vị', 2, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(15, 'Nấm - Rau Mầm', 2, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(16, 'Củ - Quả', 2, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(17, 'Trái Cây Việt', 3, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(18, 'Trái Cây Nhập Khẩu', 3, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(19, 'Trái Cây Khô', 3, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(20, 'Thịt Bò', 4, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(21, 'Thịt Heo', 4, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(22, 'Thịt Gia Cầm', 4, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(23, 'Trứng', 4, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(24, 'Cá', 5, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(25, 'Mực', 5, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(26, 'Tôm - Cua', 5, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(27, 'Thuỷ - Hải Sản Khác', 5, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(28, 'Dầu Ăn', 6, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(29, 'Giấm Ăn', 6, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(30, 'Bơ - Pho Mát', 6, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(31, 'Nước Chấm', 6, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(32, 'Gia Vị', 6, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(33, 'Sữa', 7, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(34, 'Mật ong', 7, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(35, 'Cà Phê & Trà', 7, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(36, 'Nước Trái Cây', 7, '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(37, 'Nước Khoáng', 7, '2019-01-13 20:43:49', '2019-01-13 20:43:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `title`, `content`, `rating`, `is_active`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Ngon quá', 'Ngon quá', 4, 1, 1, 150, '2019-01-16 01:04:07', '2019-01-18 02:36:33'),
(2, 'Sản phẩm tốt', 'Sản phẩm ngon, giao hàng nhanh,  5 sao', 5, 1, 15, 145, '2019-01-18 02:35:59', '2019-01-18 02:36:38'),
(3, 'Rau ngon lắm', 'Rau rất tươi, rất ngon', 5, 1, 15, 134, '2019-01-18 02:42:56', '2019-01-18 02:43:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `name`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(201, '1547477490nep_thom_03.jpg', 'images/products/1547477490nep_thom_03.jpg', 101, '2019-01-14 07:51:30', '2019-01-14 07:51:30'),
(202, '1547477575Gạo-nếp.jpg', 'images/products/1547477575Gạo-nếp.jpg', 101, '2019-01-14 07:52:55', '2019-01-14 07:52:55'),
(203, '1547477857gạo-lức.jpg', 'images/products/1547477857gạo-lức.jpg', 102, '2019-01-14 07:57:37', '2019-01-14 07:57:37'),
(204, '1547477875gao-huyet-rong-2.jpg', 'images/products/1547477875gao-huyet-rong-2.jpg', 102, '2019-01-14 07:57:55', '2019-01-14 07:57:55'),
(205, '1547478024RICE-CAMBODIA-LABEL.jpg', 'images/products/1547478024RICE-CAMBODIA-LABEL.jpg', 103, '2019-01-14 08:00:24', '2019-01-14 08:00:24'),
(206, '1547478071com-ngon-dung-chuan-khi-duoc-nau-dung-cach.jpg', 'images/products/1547478071com-ngon-dung-chuan-khi-duoc-nau-dung-cach.jpg', 103, '2019-01-14 08:01:11', '2019-01-14 08:01:11'),
(207, '1547478555img20160415172850326.jpg', 'images/products/1547478555img20160415172850326.jpg', 104, '2019-01-14 08:09:15', '2019-01-14 08:09:15'),
(208, '1547478569t_m_n_u_r__u_large.jpg', 'images/products/1547478569t_m_n_u_r__u_large.jpg', 104, '2019-01-14 08:09:29', '2019-01-14 08:09:29'),
(209, '1547479509bot-ca-cao.jpg', 'images/products/1547479509bot-ca-cao.jpg', 105, '2019-01-14 08:25:09', '2019-01-14 08:25:09'),
(210, '1547479644bột-ca-cao2.jpg', 'images/products/1547479644bột-ca-cao2.jpg', 105, '2019-01-14 08:27:24', '2019-01-14 08:27:24'),
(211, '1547479857hat-ke.jpg', 'images/products/1547479857hat-ke.jpg', 106, '2019-01-14 08:30:57', '2019-01-14 08:30:57'),
(212, '1547479867Panicum miliaceum 1234 Gie Hat Kho.JPG', 'images/products/1547479867Panicum miliaceum 1234 Gie Hat Kho.JPG', 106, '2019-01-14 08:31:07', '2019-01-14 08:31:07'),
(213, '1547480125dau_ha_lan.jpg', 'images/products/1547480125dau_ha_lan.jpg', 107, '2019-01-14 08:35:25', '2019-01-14 08:35:25'),
(214, '1547480158đậu-hà-lan-sấy-wasabi-600x475.jpg', 'images/products/1547480158đậu-hà-lan-sấy-wasabi-600x475.jpg', 107, '2019-01-14 08:35:58', '2019-01-14 08:35:58'),
(215, '1547480341green_lentils-text408.jpg', 'images/products/1547480341green_lentils-text408.jpg', 108, '2019-01-14 08:39:01', '2019-01-14 08:39:01'),
(216, '1547480354dau_lang_4.jpg', 'images/products/1547480354dau_lang_4.jpg', 108, '2019-01-14 08:39:14', '2019-01-14 08:39:14'),
(217, '1547480851tin-3-1536660949032154207573.jpg', 'images/products/1547480851tin-3-1536660949032154207573.jpg', 109, '2019-01-14 08:47:31', '2019-01-14 08:47:31'),
(218, '1547480864lua-mach-ha-lan.jpg', 'images/products/1547480864lua-mach-ha-lan.jpg', 109, '2019-01-14 08:47:44', '2019-01-14 08:47:44'),
(219, '1547481030bot-yen-mach-21.png', 'images/products/1547481030bot-yen-mach-21.png', 110, '2019-01-14 08:50:30', '2019-01-14 08:50:30'),
(220, '1547481042yen-mach-organic-duoc-su-dung-rong-rai-Copy.jpg', 'images/products/1547481042yen-mach-organic-duoc-su-dung-rong-rai-Copy.jpg', 110, '2019-01-14 08:50:42', '2019-01-14 08:50:42'),
(221, '1547481530bot_bap_goi_la_bot_ngo.png', 'images/products/1547481530bot_bap_goi_la_bot_ngo.png', 111, '2019-01-14 08:58:50', '2019-01-14 08:58:50'),
(222, '1547481544lam-dep-voi-trai-bap2.jpg', 'images/products/1547481544lam-dep-voi-trai-bap2.jpg', 111, '2019-01-14 08:59:04', '2019-01-14 08:59:04'),
(223, '1547481799hatchia.jpg', 'images/products/1547481799hatchia.jpg', 112, '2019-01-14 09:03:19', '2019-01-14 09:03:19'),
(224, '1547481874chiaseed-1.jpg', 'images/products/1547481874chiaseed-1.jpg', 112, '2019-01-14 09:04:34', '2019-01-14 09:04:34'),
(225, '15474820761_28.jpg', 'images/products/15474820761_28.jpg', 113, '2019-01-14 09:07:56', '2019-01-14 09:07:56'),
(226, '154748208523844585_2003972013147575_2199510844972289305_n.jpg', 'images/products/154748208523844585_2003972013147575_2199510844972289305_n.jpg', 113, '2019-01-14 09:08:05', '2019-01-14 09:08:05'),
(227, '1547482727banhtrangdua.jpg', 'images/products/1547482727banhtrangdua.jpg', 114, '2019-01-14 09:18:47', '2019-01-14 09:18:47'),
(228, '1547482737demo.png', 'images/products/1547482737demo.png', 114, '2019-01-14 09:18:57', '2019-01-14 09:18:57'),
(230, '1547483035bun-gao-lut.jpg', 'images/products/1547483035bun-gao-lut.jpg', 116, '2019-01-14 09:23:55', '2019-01-14 09:23:55'),
(231, '15474830528202447500_74467c4bbe_o.jpg', 'images/products/15474830528202447500_74467c4bbe_o.jpg', 116, '2019-01-14 09:24:12', '2019-01-14 09:24:12'),
(232, '1547483353nui-lam-tu-nguyen-lieu-gi_800x400.jpg', 'images/products/1547483353nui-lam-tu-nguyen-lieu-gi_800x400.jpg', 117, '2019-01-14 09:29:13', '2019-01-14 09:29:13'),
(233, '1547483368cach-lam-mon-nui-xao-hai-san-thom-ngon-ngay-dau-nam-1.jpg', 'images/products/1547483368cach-lam-mon-nui-xao-hai-san-thom-ngon-ngay-dau-nam-1.jpg', 117, '2019-01-14 09:29:28', '2019-01-14 09:29:28'),
(234, '1547486200Miến-khô-thường.jpg', 'images/products/1547486200Miến-khô-thường.jpg', 118, '2019-01-14 10:16:40', '2019-01-14 10:16:40'),
(235, '1547486212300px-Dongfen.JPG', 'images/products/1547486212300px-Dongfen.JPG', 118, '2019-01-14 10:16:52', '2019-01-14 10:16:52'),
(236, '1547486707Lindt_excellence_70.png', 'images/products/1547486707Lindt_excellence_70.png', 119, '2019-01-14 10:25:07', '2019-01-14 10:25:07'),
(237, '1547486721Socola-Lindt-Excellence-70-Cocoa-1.png', 'images/products/1547486721Socola-Lindt-Excellence-70-Cocoa-1.png', 119, '2019-01-14 10:25:21', '2019-01-14 10:25:21'),
(238, '15474868740635442119780407983.jpg', 'images/products/15474868740635442119780407983.jpg', 120, '2019-01-14 10:27:54', '2019-01-14 10:27:54'),
(239, '15474868835635442119791484002.jpg', 'images/products/15474868835635442119791484002.jpg', 120, '2019-01-14 10:28:03', '2019-01-14 10:28:03'),
(240, '154748711551d6447d5546663c57bc779bddc662bf.jpg', 'images/products/154748711551d6447d5546663c57bc779bddc662bf.jpg', 121, '2019-01-14 10:31:55', '2019-01-14 10:31:55'),
(241, '1547487125banh-gao-lut-me-den.jpg', 'images/products/1547487125banh-gao-lut-me-den.jpg', 121, '2019-01-14 10:32:05', '2019-01-14 10:32:05'),
(242, '1547487496banh-com-ha-noi.jpg', 'images/products/1547487496banh-com-ha-noi.jpg', 122, '2019-01-14 10:38:16', '2019-01-14 10:38:16'),
(243, '154748750820151027_ANKT_BanhCom (9)-d8732.png', 'images/products/154748750820151027_ANKT_BanhCom (9)-d8732.png', 122, '2019-01-14 10:38:28', '2019-01-14 10:38:28'),
(244, '154748863015036418_149906045483014_8054205137777058288_n-min.jpg', 'images/products/154748863015036418_149906045483014_8054205137777058288_n-min.jpg', 123, '2019-01-14 10:57:11', '2019-01-14 10:57:11'),
(245, '15474886470a1f0aa4ba40be1e014d5d0b4d58b131.jfif', 'images/products/15474886470a1f0aa4ba40be1e014d5d0b4d58b131.jfif', 123, '2019-01-14 10:57:27', '2019-01-14 10:57:27'),
(246, '15474972661-bi-dao-thanh-loc-co-the-1414204308582-1422932336370-46-0-352-600-crop-1422934496999.jpg', 'images/products/15474972661-bi-dao-thanh-loc-co-the-1414204308582-1422932336370-46-0-352-600-crop-1422934496999.jpg', 124, '2019-01-14 13:21:06', '2019-01-14 13:21:06'),
(247, '1547497281nước-ép-bí-đao-công-dụng-1.jpg', 'images/products/1547497281nước-ép-bí-đao-công-dụng-1.jpg', 124, '2019-01-14 13:21:21', '2019-01-14 13:21:21'),
(248, '15474973601524098445_trai-bau.gif', 'images/products/15474973601524098445_trai-bau.gif', 125, '2019-01-14 13:22:40', '2019-01-14 13:22:40'),
(249, '1547497376lam-the-nao-de-trong-bau-tai-nha-sai-qua-phunutoday_vn.jpg', 'images/products/1547497376lam-the-nao-de-trong-bau-tai-nha-sai-qua-phunutoday_vn.jpg', 125, '2019-01-14 13:22:56', '2019-01-14 13:22:56'),
(250, '1547497631raulang.jpg', 'images/products/1547497631raulang.jpg', 126, '2019-01-14 13:27:11', '2019-01-14 13:27:11'),
(251, '15474976461498931306.jpg', 'images/products/15474976461498931306.jpg', 126, '2019-01-14 13:27:26', '2019-01-14 13:27:26'),
(252, '1547497682caingot-1-e1495487486296.jpg', 'images/products/1547497682caingot-1-e1495487486296.jpg', 127, '2019-01-14 13:28:02', '2019-01-14 13:28:02'),
(253, '1547497698hat-giong-cay-rau-cai-ngot-2.jpg', 'images/products/1547497698hat-giong-cay-rau-cai-ngot-2.jpg', 127, '2019-01-14 13:28:18', '2019-01-14 13:28:18'),
(254, '1547497906rau-mong-toi.jpg', 'images/products/1547497906rau-mong-toi.jpg', 128, '2019-01-14 13:31:46', '2019-01-14 13:31:46'),
(255, '15474979201490754309-1.jpg', 'images/products/15474979201490754309-1.jpg', 128, '2019-01-14 13:32:00', '2019-01-14 13:32:00'),
(256, '1547498071bap-cai-thao_grande.jpg', 'images/products/1547498071bap-cai-thao_grande.jpg', 129, '2019-01-14 13:34:31', '2019-01-14 13:34:31'),
(257, '1547498091Ky-thuat-trong-cay-cai-thao-don-gian-cho-nang-suat-cao_1.jpg', 'images/products/1547498091Ky-thuat-trong-cay-cai-thao-don-gian-cho-nang-suat-cao_1.jpg', 129, '2019-01-14 13:34:51', '2019-01-14 13:34:51'),
(258, '1547498187taobon672.jpg', 'images/products/1547498187taobon672.jpg', 130, '2019-01-14 13:36:27', '2019-01-14 13:36:27'),
(259, '1547498202sup-lo-1480667377829-1480734101750-0-0-373-600-crop-1480734145211.jpg', 'images/products/1547498202sup-lo-1480667377829-1480734101750-0-0-373-600-crop-1480734145211.jpg', 130, '2019-01-14 13:36:42', '2019-01-14 13:36:42'),
(260, '154749826728028.png', 'images/products/154749826728028.png', 131, '2019-01-14 13:37:47', '2019-01-14 13:37:47'),
(261, '15474982841_40814.jpg', 'images/products/15474982841_40814.jpg', 131, '2019-01-14 13:38:04', '2019-01-14 13:38:04'),
(262, '1547513417chua-di-ung-rom-say-man-ngua-voi-rau-muong.jpg', 'images/products/1547513417chua-di-ung-rom-say-man-ngua-voi-rau-muong.jpg', 132, '2019-01-14 17:50:17', '2019-01-14 17:50:17'),
(263, '1547513433cach-trong-rau-muong-thuy-canh-tai-nha-1.jpg', 'images/products/1547513433cach-trong-rau-muong-thuy-canh-tai-nha-1.jpg', 132, '2019-01-14 17:50:33', '2019-01-14 17:50:33'),
(264, '1547513496ro-rau-den-com.jpg', 'images/products/1547513496ro-rau-den-com.jpg', 133, '2019-01-14 17:51:36', '2019-01-14 17:51:36'),
(265, '1547513506Rau-dền-cơm.png', 'images/products/1547513506Rau-dền-cơm.png', 133, '2019-01-14 17:51:46', '2019-01-14 17:51:46'),
(266, '1547513601raudendonb.jpg', 'images/products/1547513601raudendonb.jpg', 134, '2019-01-14 17:53:21', '2019-01-14 17:53:21'),
(267, '1547513613e1cec4b5f186f2122f06d2b96f65818c.jpeg', 'images/products/1547513613e1cec4b5f186f2122f06d2b96f65818c.jpeg', 134, '2019-01-14 17:53:33', '2019-01-14 17:53:33'),
(268, '1547514060xa-lach-xoong-lon-2.jpg', 'images/products/1547514060xa-lach-xoong-lon-2.jpg', 135, '2019-01-14 18:01:00', '2019-01-14 18:01:00'),
(269, '154751422954e57a4e3724b_grande.jpg', 'images/products/154751422954e57a4e3724b_grande.jpg', 135, '2019-01-14 18:03:49', '2019-01-14 18:03:49'),
(270, '1547514313Rau_dang_vuon_website.png', 'images/products/1547514313Rau_dang_vuon_website.png', 136, '2019-01-14 18:05:13', '2019-01-14 18:05:13'),
(271, '1547514322raudang-0712.jpg', 'images/products/1547514322raudang-0712.jpg', 136, '2019-01-14 18:05:22', '2019-01-14 18:05:22'),
(272, '1547515209855-2017-09-22-095306.jpg', 'images/products/1547515209855-2017-09-22-095306.jpg', 137, '2019-01-14 18:20:09', '2019-01-14 18:20:09'),
(273, '1547515220ngo ri 4 tuan.jpg', 'images/products/1547515220ngo ri 4 tuan.jpg', 137, '2019-01-14 18:20:20', '2019-01-14 18:20:20'),
(274, '1547515301HÀNH LÁ0.jpg', 'images/products/1547515301HÀNH LÁ0.jpg', 138, '2019-01-14 18:21:41', '2019-01-14 18:21:41'),
(275, '1547515309Hạt-giống-hành-hoa-.2.jpg', 'images/products/1547515309Hạt-giống-hành-hoa-.2.jpg', 138, '2019-01-14 18:21:49', '2019-01-14 18:21:49'),
(276, '1547515399284e__can-tay.jpg', 'images/products/1547515399284e__can-tay.jpg', 139, '2019-01-14 18:23:19', '2019-01-14 18:23:19'),
(277, '15475154091_225078.jpg', 'images/products/15475154091_225078.jpg', 139, '2019-01-14 18:23:29', '2019-01-14 18:23:29'),
(278, '1547515503ngo-gai1.jpg', 'images/products/1547515503ngo-gai1.jpg', 140, '2019-01-14 18:25:03', '2019-01-14 18:25:03'),
(280, '1547515531danh-bay-10-loai-benh-chi-bang-vai-cong-mui-tau-ngo-gai.jpg', 'images/products/1547515531danh-bay-10-loai-benh-chi-bang-vai-cong-mui-tau-ngo-gai.jpg', 140, '2019-01-14 18:25:31', '2019-01-14 18:25:31'),
(281, '1547515827loi-ich-tuyet-voi-tu-rau-hung-lui-2aa130.jpg', 'images/products/1547515827loi-ich-tuyet-voi-tu-rau-hung-lui-2aa130.jpg', 141, '2019-01-14 18:30:27', '2019-01-14 18:30:27'),
(282, '1547515835phan_biet_bac_ha_va_rau_hung.png', 'images/products/1547515835phan_biet_bac_ha_va_rau_hung.png', 141, '2019-01-14 18:30:35', '2019-01-14 18:30:35'),
(283, '15475171321413428718-mang-tay.jpg', 'images/products/15475171321413428718-mang-tay.jpg', 142, '2019-01-14 18:52:12', '2019-01-14 18:52:12'),
(284, '1547517142images.jfif', 'images/products/1547517142images.jfif', 142, '2019-01-14 18:52:22', '2019-01-14 18:52:22'),
(285, '15475172293011331thuc_pham_phong_benh_810.jpg', 'images/products/15475172293011331thuc_pham_phong_benh_810.jpg', 143, '2019-01-14 18:53:49', '2019-01-14 18:53:49'),
(286, '1547517239Agriviet.Com-cg12.jpg', 'images/products/1547517239Agriviet.Com-cg12.jpg', 143, '2019-01-14 18:53:59', '2019-01-14 18:53:59'),
(287, '1547517373beansprouts.jpg', 'images/products/1547517373beansprouts.jpg', 144, '2019-01-14 18:56:13', '2019-01-14 18:56:13'),
(288, '15475173800211_ba-bau-co-nen-an-gia-do-khong-1.png', 'images/products/15475173800211_ba-bau-co-nen-an-gia-do-khong-1.png', 144, '2019-01-14 18:56:20', '2019-01-14 18:56:20'),
(289, '1547517518nam-mo.jpg', 'images/products/1547517518nam-mo.jpg', 145, '2019-01-14 18:58:38', '2019-01-14 18:58:38'),
(290, '1547517525eac32b304fad663483ffe7d96fe5672e.jpg', 'images/products/1547517525eac32b304fad663483ffe7d96fe5672e.jpg', 145, '2019-01-14 18:58:45', '2019-01-14 18:58:45'),
(291, '15475177466.NamHuong-1-700x400.jpg', 'images/products/15475177466.NamHuong-1-700x400.jpg', 146, '2019-01-14 19:02:26', '2019-01-14 19:02:26'),
(292, '1547517756bb34296f78401fc01aced95b397a12aa.jpeg', 'images/products/1547517756bb34296f78401fc01aced95b397a12aa.jpeg', 146, '2019-01-14 19:02:36', '2019-01-14 19:02:36'),
(293, '1547518259mon-an-bai-thuoc-tu-ca-tim-giaoduc.net.vn.jpg', 'images/products/1547518259mon-an-bai-thuoc-tu-ca-tim-giaoduc.net.vn.jpg', 147, '2019-01-14 19:10:59', '2019-01-14 19:10:59'),
(294, '1547518266ca-tim.jpg', 'images/products/1547518266ca-tim.jpg', 147, '2019-01-14 19:11:06', '2019-01-14 19:11:06'),
(295, '1547518358ca-rot.jpg', 'images/products/1547518358ca-rot.jpg', 148, '2019-01-14 19:12:38', '2019-01-14 19:12:38'),
(296, '1547518365cach-lam-sinh-to-ca-rot-600x400.jpg', 'images/products/1547518365cach-lam-sinh-to-ca-rot-600x400.jpg', 148, '2019-01-14 19:12:45', '2019-01-14 19:12:45'),
(297, '1547518408khoai-tay-F1.jpg', 'images/products/1547518408khoai-tay-F1.jpg', 149, '2019-01-14 19:13:28', '2019-01-14 19:13:28'),
(298, '1547518416photo-1-1497938037253-25-42-413-667-crop-1497938069202.jpg', 'images/products/1547518416photo-1-1497938037253-25-42-413-667-crop-1497938069202.jpg', 149, '2019-01-14 19:13:36', '2019-01-14 19:13:36'),
(299, '154751867250f0__bi-do-ho-lo-fresh-from-farm.jpg', 'images/products/154751867250f0__bi-do-ho-lo-fresh-from-farm.jpg', 150, '2019-01-14 19:17:52', '2019-01-14 19:17:52'),
(300, '1547518681trong-bi-ho-lo-tai-nha-1-551x400.jpg', 'images/products/1547518681trong-bi-ho-lo-tai-nha-1-551x400.jpg', 150, '2019-01-14 19:18:01', '2019-01-14 19:18:01'),
(301, '1547518758dua_chuot.jpg', 'images/products/1547518758dua_chuot.jpg', 151, '2019-01-14 19:19:18', '2019-01-14 19:19:18'),
(302, '1547518801Cach-trong-cay-dua-chuot.jpg', 'images/products/1547518801Cach-trong-cay-dua-chuot.jpg', 151, '2019-01-14 19:20:01', '2019-01-14 19:20:01'),
(303, '1547739112baphoabo.jpg', 'images/products/1547739112baphoabo.jpg', 152, '2019-01-17 08:31:52', '2019-01-17 08:31:52'),
(304, '1547739257duoibo.jpg', 'images/products/1547739257duoibo.jpg', 153, '2019-01-17 08:34:17', '2019-01-17 08:34:17'),
(305, '1547739452dui bo uc.jpg', 'images/products/1547739452dui bo uc.jpg', 154, '2019-01-17 08:37:32', '2019-01-17 08:37:32'),
(306, '1547739615san-phan-thit-than-bo-uc-431x323.jpg', 'images/products/1547739615san-phan-thit-than-bo-uc-431x323.jpg', 155, '2019-01-17 08:40:15', '2019-01-17 08:40:15'),
(307, '1547739756cha-bo-binh-dinh-3.jpg', 'images/products/1547739756cha-bo-binh-dinh-3.jpg', 156, '2019-01-17 08:42:37', '2019-01-17 08:42:37'),
(308, '1547739826upload_946c0a82d14a4c4999d46387fc423eda.jpg', 'images/products/1547739826upload_946c0a82d14a4c4999d46387fc423eda.jpg', 157, '2019-01-17 08:43:46', '2019-01-17 08:43:46'),
(309, '1547739986ba-roi-bo.jpg', 'images/products/1547739986ba-roi-bo.jpg', 158, '2019-01-17 08:46:26', '2019-01-17 08:46:26'),
(310, '1547740081sườn-non.jpg', 'images/products/1547740081sườn-non.jpg', 159, '2019-01-17 08:48:01', '2019-01-17 08:48:01'),
(311, '1547740188cach-lam-suon-cot-let-chien-tron-sot-1.jpg', 'images/products/1547740188cach-lam-suon-cot-let-chien-tron-sot-1.jpg', 160, '2019-01-17 08:49:48', '2019-01-17 08:49:48'),
(312, '1547740307Tim-heo-Vietgap-An-Ha.jpg', 'images/products/1547740307Tim-heo-Vietgap-An-Ha.jpg', 161, '2019-01-17 08:51:47', '2019-01-17 08:51:47'),
(313, '1547740458480_crop_Bap_gio_03.jpg', 'images/products/1547740458480_crop_Bap_gio_03.jpg', 162, '2019-01-17 08:54:18', '2019-01-17 08:54:18'),
(314, '1547740540chả lua.jpg', 'images/products/1547740540chả lua.jpg', 163, '2019-01-17 08:55:40', '2019-01-17 08:55:40'),
(315, '1547741023ga tha vuon.jpg', 'images/products/1547741023ga tha vuon.jpg', 164, '2019-01-17 09:03:43', '2019-01-17 09:03:43'),
(316, '1547741166chon-ga-vit-2.jpg', 'images/products/1547741166chon-ga-vit-2.jpg', 165, '2019-01-17 09:06:06', '2019-01-17 09:06:06'),
(317, '1547741239vit dong.jpeg', 'images/products/1547741239vit dong.jpeg', 166, '2019-01-17 09:07:19', '2019-01-17 09:07:19'),
(318, '1547741320con-le-le.jpg', 'images/products/1547741320con-le-le.jpg', 167, '2019-01-17 09:08:40', '2019-01-17 09:08:40'),
(319, '1547741413trung ga nha.jpg', 'images/products/1547741413trung ga nha.jpg', 168, '2019-01-17 09:10:13', '2019-01-17 09:10:13'),
(320, '1547741581trung-vit.jpg', 'images/products/1547741581trung-vit.jpg', 169, '2019-01-17 09:13:01', '2019-01-17 09:13:01'),
(321, '1547741667trung bac thao.jpg', 'images/products/1547741667trung bac thao.jpg', 170, '2019-01-17 09:14:27', '2019-01-17 09:14:27'),
(322, '1547741762trungcut1.jpg', 'images/products/1547741762trungcut1.jpg', 171, '2019-01-17 09:16:02', '2019-01-17 09:16:02'),
(323, '1547786511ca-dia-bong.jpg', 'images/products/1547786511ca-dia-bong.jpg', 172, '2019-01-17 21:41:51', '2019-01-17 21:41:51'),
(324, '1547786682cá chuồn.jpeg', 'images/products/1547786682cá chuồn.jpeg', 173, '2019-01-17 21:44:42', '2019-01-17 21:44:42'),
(325, '1547786783ca-chem.jpg', 'images/products/1547786783ca-chem.jpg', 174, '2019-01-17 21:46:23', '2019-01-17 21:46:23'),
(326, '1547786959ca-bong-rua-sach.jpg', 'images/products/1547786959ca-bong-rua-sach.jpg', 175, '2019-01-17 21:49:19', '2019-01-17 21:49:19'),
(327, '1547787085ca thu.jpg', 'images/products/1547787085ca thu.jpg', 176, '2019-01-17 21:51:25', '2019-01-17 21:51:25'),
(328, '1547787354ca-ho-6-10-3.jpg', 'images/products/1547787354ca-ho-6-10-3.jpg', 177, '2019-01-17 21:55:54', '2019-01-17 21:55:54'),
(329, '1547787428bống mú.jpg', 'images/products/1547787428bống mú.jpg', 178, '2019-01-17 21:57:08', '2019-01-17 21:57:08'),
(330, '1547787554tom-su-5.png', 'images/products/1547787554tom-su-5.png', 179, '2019-01-17 21:59:14', '2019-01-17 21:59:14'),
(331, '1547788094tomthechantrang_cwhg.jpg', 'images/products/1547788094tomthechantrang_cwhg.jpg', 180, '2019-01-17 22:08:14', '2019-01-17 22:08:14'),
(332, '1547788251cua dong.jpg', 'images/products/1547788251cua dong.jpg', 181, '2019-01-17 22:10:51', '2019-01-17 22:10:51'),
(333, '1547788351cua bien.jpg', 'images/products/1547788351cua bien.jpg', 182, '2019-01-17 22:12:31', '2019-01-17 22:12:31'),
(334, '1547788513chả tôm.jpg', 'images/products/1547788513chả tôm.jpg', 183, '2019-01-17 22:15:13', '2019-01-17 22:15:13'),
(335, '1547788726cua tach thit.jpg', 'images/products/1547788726cua tach thit.jpg', 184, '2019-01-17 22:18:46', '2019-01-17 22:18:46'),
(336, '1547788861muc-la-lam-sach-lon-12-con-kg-.jpg', 'images/products/1547788861muc-la-lam-sach-lon-12-con-kg-.jpg', 185, '2019-01-17 22:21:01', '2019-01-17 22:21:01'),
(337, '15477889504664__muc-ong-tuoi-lon.png', 'images/products/15477889504664__muc-ong-tuoi-lon.png', 186, '2019-01-17 22:22:30', '2019-01-17 22:22:30'),
(338, '1547789045muc-trung-hhs.jpg', 'images/products/1547789045muc-trung-hhs.jpg', 187, '2019-01-17 22:24:05', '2019-01-17 22:24:05'),
(339, '1547789109cach-lam-cha-muc.jpg', 'images/products/1547789109cach-lam-cha-muc.jpg', 188, '2019-01-17 22:25:09', '2019-01-17 22:25:09'),
(340, '1547790580hao.jpg', 'images/products/1547790580hao.jpg', 189, '2019-01-17 22:49:40', '2019-01-17 22:49:40'),
(341, '1547790631Nghêu.jpg', 'images/products/1547790631Nghêu.jpg', 190, '2019-01-17 22:50:31', '2019-01-17 22:50:31'),
(342, '1547790752sò dẹo.jpg', 'images/products/1547790752sò dẹo.jpg', 192, '2019-01-17 22:52:33', '2019-01-17 22:52:33'),
(343, '1547791805cach-lam-so-huyet-hap-xa.jpg', 'images/products/1547791805cach-lam-so-huyet-hap-xa.jpg', 191, '2019-01-17 23:10:05', '2019-01-17 23:10:05'),
(344, '1547795245chomchom-1.jpg', 'images/products/1547795245chomchom-1.jpg', 193, '2019-01-18 00:07:25', '2019-01-18 00:07:25'),
(345, '1547795331Dưa hấu đỏ.jpg', 'images/products/1547795331Dưa hấu đỏ.jpg', 194, '2019-01-18 00:08:51', '2019-01-18 00:08:51'),
(346, '154779543915.jpg', 'images/products/154779543915.jpg', 195, '2019-01-18 00:10:39', '2019-01-18 00:10:39'),
(347, '1547795575buoi-da-xanh_1c0c0595b1fd4b65a6d3f0b9dc0c11cf.png', 'images/products/1547795575buoi-da-xanh_1c0c0595b1fd4b65a6d3f0b9dc0c11cf.png', 196, '2019-01-18 00:12:55', '2019-01-18 00:12:55'),
(348, '1547800383hinh_anh_trai_bo_hass.jpg', 'images/products/1547800383hinh_anh_trai_bo_hass.jpg', 197, '2019-01-18 01:33:03', '2019-01-18 01:33:03'),
(349, '1547800626cach-phan-biet-cam-cao-phong-va-cam-trung-quoc-103_n-thumb43.jpg', 'images/products/1547800626cach-phan-biet-cam-cao-phong-va-cam-trung-quoc-103_n-thumb43.jpg', 198, '2019-01-18 01:37:06', '2019-01-18 01:37:06'),
(350, '1547800754mang-cut-1-7472-1436837917.jpg', 'images/products/1547800754mang-cut-1-7472-1436837917.jpg', 199, '2019-01-18 01:39:14', '2019-01-18 01:39:14'),
(351, '1547801032sau_rieng.jpg', 'images/products/1547801032sau_rieng.jpg', 200, '2019-01-18 01:43:52', '2019-01-18 01:43:52'),
(352, '154780210220110410mbtchehongnl2.jpg', 'images/products/154780210220110410mbtchehongnl2.jpg', 201, '2019-01-18 02:01:42', '2019-01-18 02:01:42'),
(353, '1547802169heroshop-nho-kho-an-do4.jpg', 'images/products/1547802169heroshop-nho-kho-an-do4.jpg', 202, '2019-01-18 02:02:49', '2019-01-18 02:02:49'),
(354, '1547802428vai-kho-1532316350-1-6113289-1532316350.jfif', 'images/products/1547802428vai-kho-1532316350-1-6113289-1532316350.jfif', 203, '2019-01-18 02:07:08', '2019-01-18 02:07:08'),
(355, '1547802539mit-say-gion-dat-biet-500g-cua-hang-trai-cay-hat-say.jpg', 'images/products/1547802539mit-say-gion-dat-biet-500g-cua-hang-trai-cay-hat-say.jpg', 204, '2019-01-18 02:08:59', '2019-01-18 02:08:59'),
(356, '1547802817cha-la-kho.jpg', 'images/products/1547802817cha-la-kho.jpg', 205, '2019-01-18 02:13:37', '2019-01-18 02:13:37'),
(357, '1547802884MƠ-SẤY-KHÔ.jpg', 'images/products/1547802884MƠ-SẤY-KHÔ.jpg', 206, '2019-01-18 02:14:44', '2019-01-18 02:14:44'),
(358, '1547802931xoài sấy 008.png', 'images/products/1547802931xoài sấy 008.png', 207, '2019-01-18 02:15:31', '2019-01-18 02:15:31'),
(359, '1547803006Cam-ruot-do-Cara-Cara-My-vinfruits.com-1.jpg', 'images/products/1547803006Cam-ruot-do-Cara-Cara-My-vinfruits.com-1.jpg', 208, '2019-01-18 02:16:46', '2019-01-18 02:16:46'),
(360, '1547803085kiwi-xanh-600x600.png', 'images/products/1547803085kiwi-xanh-600x600.png', 209, '2019-01-18 02:18:05', '2019-01-18 02:18:05'),
(361, '1547803149KIWI VÀNG.jpg', 'images/products/1547803149KIWI VÀNG.jpg', 210, '2019-01-18 02:19:09', '2019-01-18 02:19:09'),
(362, '1547803261cong-dung-cua-qua-cherry-3-jpeg.jpg', 'images/products/1547803261cong-dung-cua-qua-cherry-3-jpeg.jpg', 211, '2019-01-18 02:21:01', '2019-01-18 02:21:01'),
(363, '1547803343qua-viet-quat.png', 'images/products/1547803343qua-viet-quat.png', 212, '2019-01-18 02:22:23', '2019-01-18 02:22:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2018_12_13_144203_create_roles_table', 1),
(14, '2018_12_13_144204_create_users_table', 1),
(15, '2018_12_13_144205_create_password_resets_table', 1),
(16, '2018_12_13_144932_create_categories_table', 1),
(17, '2018_12_13_145000_create_products_table', 1),
(18, '2018_12_13_145017_create_images_table', 1),
(19, '2018_12_13_145203_create_comments_table', 1),
(20, '2018_12_13_145256_create_type_payments_table', 1),
(21, '2018_12_13_145257_create_statuses_table', 1),
(22, '2018_12_13_145258_create_orders_table', 1),
(23, '2018_12_13_145445_create_order_details_table', 1),
(24, '2019_01_01_030858_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(9,0) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `fullname`, `address`, `phone`, `email`, `type_payment_id`, `note`, `status_id`, `created_at`, `updated_at`) VALUES
(30, 13, '78000', 'Thinh', '123 Quang trung', '097661717', 'thinhleduc1692@gmail.com', 1, NULL, 2, '2019-01-14 22:14:08', '2019-01-17 06:59:18'),
(31, 15, '680000', 'Thu Nguyet', '12 Hải Phòng', '08098098', 'tranthunguyet70755@gmail.com', 1, 'giao sáng thứ 2', 2, '2019-01-17 07:17:40', '2019-01-17 07:20:36'),
(32, 15, '89000', 'Thu Nguyet', 'Can Tho, Tan Bang - Thoi Binh - Ca Mau', '0980239423', 'tranthunguyet70755@gmail.com', 1, NULL, 3, '2019-01-18 02:25:33', '2019-01-18 02:29:32'),
(33, 15, '165000', 'Thu Nguyet', 'Xa Binh Phuc - H. Van Quan - T. Lang Son, Xa Binh Phuc - H. Van Quan - T. Lang Son', '8702380923', 'tranthunguyet70755@gmail.com', 1, 'ko có chi', 3, '2019-01-18 02:28:09', '2019-01-18 02:29:51'),
(34, 15, '70000', 'Thu Nguyet', 'Can Tho, Tan Bang - Thoi Binh - Ca Mau', '09834023', 'tranthunguyet70755@gmail.com', 1, NULL, 1, '2019-01-18 05:14:34', '2019-01-18 05:14:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(103, 30, 149, 2, '2019-01-14 22:14:08', '2019-01-14 22:14:08'),
(104, 30, 151, 1, '2019-01-14 22:14:08', '2019-01-14 22:14:08'),
(105, 30, 150, 1, '2019-01-14 22:14:08', '2019-01-14 22:14:08'),
(106, 31, 145, 3, '2019-01-17 07:17:40', '2019-01-17 07:17:40'),
(107, 31, 147, 1, '2019-01-17 07:17:40', '2019-01-17 07:17:40'),
(108, 31, 146, 1, '2019-01-17 07:17:40', '2019-01-17 07:17:40'),
(109, 31, 144, 1, '2019-01-17 07:17:40', '2019-01-17 07:17:40'),
(110, 32, 136, 1, '2019-01-18 02:25:33', '2019-01-18 02:25:33'),
(111, 32, 134, 1, '2019-01-18 02:25:33', '2019-01-18 02:25:33'),
(112, 32, 133, 1, '2019-01-18 02:25:33', '2019-01-18 02:25:33'),
(113, 32, 127, 1, '2019-01-18 02:25:33', '2019-01-18 02:25:33'),
(114, 32, 128, 1, '2019-01-18 02:25:33', '2019-01-18 02:25:33'),
(115, 33, 132, 1, '2019-01-18 02:28:09', '2019-01-18 02:28:09'),
(116, 33, 130, 1, '2019-01-18 02:28:09', '2019-01-18 02:28:09'),
(117, 33, 129, 1, '2019-01-18 02:28:09', '2019-01-18 02:28:09'),
(118, 33, 126, 4, '2019-01-18 02:28:09', '2019-01-18 02:28:09'),
(119, 33, 127, 1, '2019-01-18 02:28:09', '2019-01-18 02:28:09'),
(120, 34, 128, 5, '2019-01-18 05:14:34', '2019-01-18 05:14:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(9,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(101, 'Nếp Thơm', '22000', 100, 8, 'Là loại gạo nếp cái hoa vàng thơm ngon nhất khi được trồng vào vụ mùa, vì vụ xuân có nhiều mưa lạnh và ốc bươu vàng nên không tốt cho cây lúa. Người nông dân chăm sóc giống lúa này khá đơn giản, không mất nhiều thời gian hay công sức vì nó có khả năng sinh trưởng, kháng sâu bệnh tốt. \r\nLoại gạo này có hạt gạo to tròn, có vị ngọt dịu dịu, hạt gạo màu nâu xẫm, thơm và dẻo. Khi nấu lên hạt trong và ráo, mềm nhưng không nát, ăn vừa thơm lại đậm đà, hạt gạo nếp đầy tròn, không vỡ, để 3-4 ngày sau khi nấu chín vẫn không bị khô cứng.', '2019-01-14 07:51:30', '2019-01-14 07:51:30'),
(102, 'Gạo Lức', '30000', 100, 8, 'Gạo lứt, còn gọi là gạo rằn, gạo lật là loại gạo chỉ xay bỏ vỏ trấu, chưa được xát bỏ lớp cám gạo. Đây là loại gạo rất giàu dinh dưỡng đặc biệt là các sinh tố và nguyên tố vi lượng.\r\nThành phần của gạo lứt gồm chất tinh bột, chất đạm, chất béo, chất xơ cùng các vitamin như B1, B2, B3, B6; các axit như pantothenic (vitamin B5), paraaminobenzoic (PABA), folic (vitamin M), phytic; các nguyên tố vi lượng như canxi, sắt, magiê, selen, glutathion (GSH), kali và natri.\r\nCàng ngày người ta càng nhận thấy rằng gạo lứt (lức) có giá trị dinh dưỡng và phòng chống bệnh tật rất độc đáo. Cụ thể, Gạo lứt đã được chứng minh là có thể điều hòa huyết áp, làm giảm các cholesterol xấu và ngăn ngừa các bệnh tim mạch. Cholesterol xấu mới chính là nguyên nhân gây ra các bệnh lý tim mạch còn ngược lại cholesterol tốt thì giúp loại trừ cholestrol xấu.', '2019-01-14 07:57:37', '2019-01-14 07:57:37'),
(103, 'Thơm Lài Cambodia', '29000', 150, 8, '- Đặc tính: Hương vị thơm tự nhiên, vị ngọt vừa, dẻo mềm. Cơm vẫn ngon sau khi để nguội\r\n- Gạo Thơm Lài là giống lúa mùa được trồng nhiều ở vùng nguyên liệu Campuchia. Những hạt lúa thơm lài vừa mới thu hoạch trên những cánh đồng chuyên canh được đưa vào chế biến và đóng gói nhanh chóng để gởi ngay đến tay người dùng. Nhờ vậy, gạo thơm lài vẫn lưu giữ trọn vẹn hương thơm và thành phần dinh dưỡng tự nhiên.\r\n- Hạt gạo có màu trắng trong, dài hạt, cơm dẻo, mềm, ngọt , có mùi hương hoa lài. Đặc biệt tỏa mùi rất thơm khi nấu. Gạo thơm lài rất thích hợp với người lớn tuổi, thanh thiếu niên thích gạo dẻo. Cơm vẫn thơm và dẻo khi nguội.\r\n- Cách bảo quản: Để nơi khô ráo, thoáng mát, đậy kín khi mở bao, tránh côn trùng xâm nhập', '2019-01-14 08:00:24', '2019-01-14 08:00:24'),
(104, 'Gạo Tấm', '19000', 150, 8, 'Khi gạo mang đi xay, xát, các phần đầu của hạt gạo bị vỡ ra, những mẩu bị vỡ đấy, người ta gọi là tấm. Do tấm có chứa các phôi và cả cám gạo vì thế khi nấu cơm tấm thường ngon và nhiều dinh dưỡng. Thích hợp cho nhà hàng với các món cơm tấm, dùng để nấu cháo trong các trường mầm non hoặc thi thoảng mỗi gia đình cũng có thể đổi món với cơm gạo tấm. \r\n\r\n- Đặc tính: Hạt gạo nhỏ, màu trắng đục, khô ráo, độ dính cao. \r\nGiữ được độ dẻo khi cơm đã nguội, có mùi thơm, độ ngọt và hàm lượng tinh bột cao.\r\n- Bảo quản: Để nơi khô ráo và thoáng mát \r\nĐậy kín sau khi mở bao, tránh côn trùng xâm nhập và mùi lạ.\r\n- Cách nấu: Đong gạo theo nhu cầu. Vo gạo bằng nước sạch\r\nGạo có độ dính cao, khi nấu nên cho ít nước.\r\nKhông mở nắp nồi trong lúc nấu cho đến sau khi cơm sôi được 15 phút', '2019-01-14 08:09:15', '2019-01-14 08:09:15'),
(105, 'Bột Cacao', '250000', 100, 9, 'Bột Cacao nguyên chất 100% là sản phẩm từ trái Cacao rất giàu chất chống Oxy hoá và các chất khoáng khác như Canxi, Magie, Sắt, Chất xơ và các loại Vitamin. Axit Ooleic có trong thành phần Cacao là một chất béo không no bão hòa cần thiết và rất tốt cho sức khỏe tim mạch.\r\n\r\nCacao nguyên chất của 100% Café LLC được chế biến từ những trái Cacao đã được lựa chọn, sạch và tốt nhất theo tiêu chuẩn quốc tế UTZ Certified.\r\n\r\nBột Cacao được nghiền từ hạt Cacao rang khí nóng, được chế biến ở nhiệt độ phù hợp để bảo vệ hương và vị tự nhiên, các hoạt chất dinh dưỡng và hàm lượng bơ Cacao trên 20%. Sản phẩm Cacao nguyên chất 100% không kiềm hóa và không dùng chất bảo quản. Sản phẩm nên bảo quản ở nơi khô ráo và tránh ánh nắng trực tiếp.', '2019-01-14 08:25:09', '2019-01-14 08:25:09'),
(106, 'Hạt Kê', '85000', 50, 9, 'Kê còn có tên tiểu mễ, cốc nha, là một món ăn trong 10 sở thích của người sống trường thọ. Chè kê, bánh đa kê, cháo kê thịt gà là đặc sản của nhiều địa phương. Kê có tác dụng lợi tiểu, ngừa sỏi thận, đái tháo đường và tiêu chảy; là lương thực tốt cho người đau dạ dày và mắc chứng khó tiêu, miệng hôi, tỳ vị hư nhược. Ngoài ra, kê còn là món ăn tốt cho người bị thấp khớp, làm dịu cơn đau do sinh đẻ.\r\nKê giàu dinh dưỡng, dễ tiêu hóa. Hạt kê chứa hydrat carbon, protein, lipid, Ca, P, Fe, các loại đường, sinh tố nhóm B. Vị ngọt mặn, tính mát; vào tỳ, vị, thận; kê có tác dụng kiện tỳ hòa vị, bổ thận thanh nhiệt. Dùng cho người tỳ vị hư nhiệt với các biểu hiện: nôn ói, nôn oẹ ra thức ăn (phản vị), đái tháo đường, tiêu chảy...', '2019-01-14 08:30:57', '2019-01-14 08:30:57'),
(107, 'Đậu Hà Lan Wasabi', '170000', 50, 9, 'Có tên khoa học là Pisum sativum L, đậu Hà lan được biết đến là một loại cây thảo thấp, mọc leo, có hoa màu trắng hoặc tím.\r\n\r\nĐây là một loại thực phẩm bổ dưỡng với hàm lượng protein và tinh bột cao, thường được dùng để nấu ăn với các món xào, luộc hay hầm. Để sử dụng làm\r\n\r\nTheo y học cổ tryền,  đậu Hà Lan vị ngọt, tính bình, không độc, có nhiều tác dụng như lợi tiểu,  bổ tỳ vị, trj các chứng ăn uống khó tiêu, thiếu sữa ở sản phụ, tăng huyết áp…', '2019-01-14 08:35:25', '2019-01-14 08:35:25'),
(108, 'Đậu Lăng', '350000', 50, 9, 'Thực tế hạt đậu lăng cực kỳ tốt cho sức khỏe tim mạch, không chỉ vì nó chứa nhiều chất xơ mà còn vì nó chứa lượng lớn axit folic và magie. Axit folic từ lâu đã được sử dụng để hỗ trợ cho tim mạch bởi vì nó làm giảm mức độ homocysteine trong cơ thể, là một loại axit amino có hại cho thành mạch và là nhân tố nguy hiểm gây ra bệnh tim. Axit folic chuyển hóa homocysteine thành cysteine hoặc methionine, là hai chất lành mạnh cho cơ thể.', '2019-01-14 08:39:01', '2019-01-14 08:39:01'),
(109, 'Lúa Mạch', '50000', 150, 10, 'Lúa mạch ngoài chức năng làm bia uống thì nó có thể dễ dàng tích hợp vào bánh, bánh quế, bánh mì, mì ống (spaghetti), bánh nướng xốp, bánh bao và bánh kếp hoặc chỉ đơn giản là rắc lên trên ngũ cốc hay sữa chua.\r\n\r\nĐã từ rất lâu, tại nhiều nước trên thế giới, lúa mạch được coi là thực phẩm giàu năng lượng, cực kỳ bổ dưỡng và sử dụng thường xuyên trong bữa ăn hàng ngày. Lúa mạch như một chất chống oxy hóa mạnh mẽ, giúp cơ thể “chiến đấu” với bệnh ung thư, tiểu đường, cảm lạnh…', '2019-01-14 08:47:31', '2019-01-14 08:47:31'),
(110, 'Yến Mạch', '150000', 100, 10, 'Yến mạch là một loại ngũ cốc được trồng và sử dụng nhiều tại các nước ôn đới. Là loại cây có nhiều chất dinh dưỡng nhất trong họ ngũ cốc. Được trồng quanh năm. Với hàm lượng dinh dưỡng khá cao cũng như rất nhiều giá trị sử dụng từ dinh dưỡng, sức khỏe cho đến làm đẹp, chăn nuôi… nên ngày càng phổ biến rộng rãi trên toàn thế giới. Số lượng xuất khẩu yến mạch từ những vùng trồng được yến mạch đến các nước không thể trồng yến mạch đang ngày càng tăng cao.\r\nThành phần của yến mạch bao gồm: Carbohydrate 66%, protein 11.2%, chất béo 9.2%, chất xơ 7.1% và các thành phần khác như các nguyên tố khoáng chất vi lượng natri, canxi, kali, sắt, magiê, phốt pho, kẽm, đồng, crôm, mangan, selenium (1 loại chất chống oxy hóa)… Các loại vitamin B1, B2, B3, B6, E… chiếm 4.5%.', '2019-01-14 08:50:30', '2019-01-14 08:50:30'),
(111, 'Bột Ngô', '55000', 150, 10, 'Bột bắp hay còn gọi là bột ngô, một loại bột mịn được làm từ nội nhũ (phần lõi của hạt bắp khô. Bột bắp khi nấu chín có khả năng kết dính tốt, vì vậy thường được dùng để nấu chè, nấu nước xốt, các món súp… Ngoài ra, bột bắp cũng là nguyên liệu không thể thiếu trong một số công thức làm bánh hay làm kem để giúp món ăn có hương vị thơm ngon và giòn hơn.\r\nKhi sử dụng bột bắp trong các món nước, người ta phải hòa tan bột bắp với chút nước lọc rồi mới cho vào nồi nước nóng, làm như vậy bột bắp mới phát huy khả năng kết dính, giúp món ăn có độ sánh và không bị vón cục.\r\nCông dụng trong ẩm thực:\r\n+ Dùng bột bắp để làm đặc, tạo độ sánh và kết dính cho các món chè, súp, nước xốt, bánh pudding và các loại kem.\r\n+ Dùng làm bột phụ trợ cho các món đồ nướng, bánh quy, bánh nướng.\r\n+ Dùng để sản xuất dextrose acid amin, rượu, bột ngọt…\r\n+ Ở Việt Nam, bột bắp còn được sử dụng để chế biến cà phê.', '2019-01-14 08:58:50', '2019-01-14 08:58:50'),
(112, 'Hạt Chia', '220000', 100, 10, 'Những người ăn chay có thể sẽ không còn phải phàn nàn về việc thiếu các chất dinh dưỡng cần thiết có trong các loại hải sản chẳng hạn như là cá. Các axit béo omega-3 giúp kiểm soát các chức năng trong cơ thể được tìm thấy trong hạt Chia với một tỉ lệ phần trăm cao hơn so với trong các loại thực phẩm mà chúng tôi đang đề cập đến. “Hạt Chia” nổi tiếng được gọi dưới tên thực phẩm siêu dinh dưỡng thế hệ tiếp theo.', '2019-01-14 09:03:19', '2019-01-14 09:04:18'),
(113, 'Hạt Sachi', '200000', 50, 10, '“Ông vua của các loại hạt” là cụm từ thường được dùng để nói về hạt Sachi bởi tỉ lệ chất dinh dưỡng và các axit béo không bão hòa đối với con người rất cao, đạt đến 96%. Omega 3 có trong Sachi là 48-54% giúp giảm cholesterol, điều hòa huyết áp, cân bằng các tế bào thần kinh, giảm các nguy cơ đột tử do bệnh tim mạch gây nên. Omega 6 chiếm 35-37% đóng vai trò trong việc ngăn ngừa các bệnh tim mạch, các bệnh viêm khớp, điều hòa huyết áp, nâng cao trí lực, giảm thoái hóa não, tăng cường thị lực. Omega 9 (6-10%) có tác dụng chống rối loạn tim mạch và cao huyết áp…', '2019-01-14 09:07:56', '2019-01-14 09:07:56'),
(114, 'Bánh Tráng Dừa', '40000', 200, 12, 'Bánh tráng dừa có đặc điểm là mỗi chiếc bánh rất nặng và thơm mùi nước dừa đặc trưng. Bánh nướng lên ăn có vị mặn và béo hơn bánh tráng bình thường. Để làm được bánh tráng dừa không dễ mà cần phải sự tỉ mỉ và cẩn trọng của người thợ. Gạo được xay nhuyễn trộn với các thành phần khác như mè đen, muối và nước dừa, tiêu đen và nước sạch tạo nên một hỗn hợp dạng lỏng. Cơm dừa đã được xay nhuyễn và lấy nước cốt cũng được cho vào để tăng độ thơm ngon cho bánh.\r\n\r\nBánh tráng nước dừa được tráng trong khuôn to (thường to bằng cái mẹt sảy gạo) hoặc những kích thước khác với độ lớn khác nhau. Bánh được tráng thành loại bánh dày và khi nướng lên bánh mới đạt độ giòn, phồng và ngon. Sau đó, bánh tươi được rải lên những giá phơi đan bằng tre sau đó đem ra ngoài nắng và phơi. Sau 1 ngày bánh có thể khô và được đóng gói thành thành phẩm đưa đi khắp nơi để tiêu thụ.', '2019-01-14 09:18:47', '2019-01-14 09:18:47'),
(116, 'Bún Gạo Lứt', '30000', 100, 12, 'Bún gạo lứt được chế biến từ gạo lứt đỏ và được ăn thay thế cho gạo lứt và Gạo lứt đã được nhiều nhà phân tích về công dụng của gạo lứt như: Thanh lọc gan, chữa bệnh gút, tiểu đường, thấp khớp, giảm béo, đẹp da,\r\n\r\n– Thành phần : gạo lứt 100%\r\n\r\nCông dụng: Bún gạo lứt dùng ăn thay cơm lứt bổ dưỡng cơ thể, dễ tiêu, dễ chế biến thành các món ăn nhanh tiện lợi\r\n\r\nHướng dẫn sử dụng:\r\n\r\n1. Ngâm bún trong nước lạnh khoảng 5 – 10 phút .\r\n\r\n2. Nấu trong nước sôi khoảng 4 – 6 phút, vớt ra xả lại với nước sạch, tùy nghi sử dụng.', '2019-01-14 09:23:55', '2019-01-14 09:23:55'),
(117, 'Mì Nui Xoắn', '40000', 50, 12, 'Nui được làm từ bột mì và nước. Trong quá trình nhào bột, người ta cho thêm trứng, phụ gia để tạo thành khối bột đồng nhất.\r\n\r\nQuy trình làm nui như sau:\r\n\r\nTrộn bột mì với nước, sau đó nhào nặn thành khối và tạo hình (ép, cán, đúc khuôn). Sau đó sấy nui khô, làm nguội nui bằng quạt máy trong vòng 7 giờ. Kết thúc giai đoạn là đóng gói và in bao bì tự động, phân loại theo từng gói.\r\n\r\nTùy vào từng dạng nui mà sẽ có cách chế biến khác nhau. Thông thường nui ống sẽ được chế biến các món quen thuộc như nui xào bò, nui nấu xương heo, nui nướng phô mai, còn các loại nui xoắn, nui sao thường được nấu cho trẻ em ăn vì nhỏ và mềm.', '2019-01-14 09:29:13', '2019-01-14 10:11:26'),
(118, 'Miến Dong', '30000', 50, 12, 'Nguồn gốc của miến dong\r\nMiến dong được làm từ tinh bột của củ dong riềng.\r\nCủ dong sau khi được chọn lựa kĩ càng sẽ đem đi rửa sạch và xay nhuyễn để lấy tinh bột.\r\nNhờ công nghệ sản xuất khép kín, tinh bột dong riềng được chế biến thành những sợi miến dong thơm ngon, bổ dưỡng.\r\nKhông giống như mì gói, được chiên qua dầu nóng làm mất hết chất dinh dưỡng, miến được sấy khô mà không bị nát, vẫn giữ nguyên được các chất dinh dưỡng có trong củ dong.\r\n\r\nTác dụng của miến dong riềng với sức khỏe\r\nCung cấp protein cho cơ thể\r\nVì sản xuất từ tinh bột nên miến dong chứa một lượng lớn protein cho cơ thể. Đó là lý do tại sao mọi người lại chuộng miến dong nhất.\r\nVới hương vị thơm ngon, màu sắc miến dễ nhận biết, độ dai giòn của miến đã tạo nên nét đặc trưng của miến dong.', '2019-01-14 10:16:40', '2019-01-14 10:16:40'),
(119, 'Sôcôla Lindt Excellence 70%  100g', '120000', 100, 11, '(Chocolate Lindt EXCELLENCE Dark 70%, 100g)\r\nSôcôla đen Lindt Excellence 70% cacao thanh 100g\r\n\r\nXuất xứ: Thụy Sĩ', '2019-01-14 10:25:07', '2019-01-14 10:25:07'),
(120, 'Bánh Yến Mạch Iko', '45000', 100, 11, 'Bánh yến mạch Iko là sản phẩm nhập khẩu từ Malaysia với thơm ngon, giàu dinh dưỡng là món ăn bổ dưỡng cho cả nhà.\r\n\r\nBánh được làm từ nhiều loại nguyên liệu có nguồn gốc tự nhiên: bột yến mạch, dầu thực vật, đường, kem sữa... tạo nên hương thơm ngọt ngào và vị beo béo đặc trưng.\r\n\r\nThành phần yến mạch có trong bánh còn có khả năng tăng cường hệ miễn dịch, ngăn ngừa các loại bệnh tiểu đường, loãng xương, béo phì….\r\n\r\nSản phẩm được đóng gói cẩn thận, đạt tiêu chuẩn chất lượng và vệ sinh an toàn thực phẩm, đồng thời giữ được mùi vị thơm ngon của bánh.', '2019-01-14 10:27:54', '2019-01-14 10:28:38'),
(121, 'Bánh Gạo Lứt', '39000', 100, 11, '1. THÔNG TIN BÁNH GẠO LỨC ZOZIN\r\nBánh gạo lức Ohsawa Zozin được chế biến hoàn toàn dựa trên quy trình chế biến sạch, cung cấp nhiều complex carbohydrate, selen, chất xơ, chất dầu tocotrienol factor, vitamin B6, B1, B2, B3, E.... giúp hạn chế tế bào ung thư phát triển, loại bỏ hóa học gây ra hiện tượng đông máu và giảm cholesterol.\r\n\r\nĐặc biệt bánh gạo lức Zozin có chứa nhiều Fiber và hàm lượng glycemic thấp rất tốt cho tim mạch, tiểu đường, và người muốn giảm cân.\r\n2. TÁC DỤNG BÁNH GẠO LỨC ZOZIN\r\n\r\n- Giảm cholesterol và phòng ngừa tim mạch\r\n- Tác dụng giảm cân phù hợp với người ăn kiêng\r\n- Cải thiện chức năng gan: Trong gạo lức chứa nhiều dưỡng chất như: Inositol, phospholipid, các Vitamin nhóm B có tác dụng giải độc và cải thiện sự tái tạo tế bào gan.\r\n\r\n3. THÀNH PHẦN BÁNH GẠO LỨC ZOZIN\r\n\r\nChế biến từ 100% từ gạo lức, muối và dầu oliu\r\n\r\n4. HƯỚNG DẪN SỬ DỤNG BÁNH GẠO LỨC ZOZIN\r\n\r\nĂn trực tiếp\r\n\r\nCó thể dùng thay bữa ăn nhẹ mà không lo tăng cân\r\n\r\n5. CÁCH BẢO QUẢN & HẠN SỬ DỤNG\r\n\r\n - Bảo quản nơi khô mát, tránh ánh nắng trực tiếp.', '2019-01-14 10:31:55', '2019-01-14 10:31:55'),
(122, 'Bánh Cốm', '31000', 100, 11, 'Bánh cốm Hà Nội là một trong những thức quà độc đáo của thủ đô, là món đặc sản mà bất kì ai đặt chân tới đây đều muốn mua về làm quà biếu tặng gia đình, người thân.\r\n\r\nNhắc đến đặc sản Bánh cốm Hà Nội, ta lại chợt nhớ đến những dòng văn thấm đượm hương vị đồng nội của nhà văn Thạch Lam: “Cốm không phải là thức quà của người vội; ăn cốm phải ăn từng chút ít, thong thả và ngẫm nghĩ. Lúc bấy giờ ta mới thấy thu lại cả trong hương vị ấy, cái mùi thơm phức của lúa mới, của hoa cỏ dại ven bờ: trong màu xanh của cốm, cái tươi mát của lá non, và trong chất ngọt của cốm, cái dịu dàng thanh đạm của loài thảo mộc.” (Trích Một thứ quà của lúa non: Cốm)\r\n\r\nChẳng biết từ bao giờ, bánh cốm đã trở thành một trong những món đặc sản đầy ý nghĩa của người dân thủ đô. Không còn phải đợi đến mỗi mùa thu nữa, cốm bây giờ đã được làm khô và bán quanh năm. Vì vậy nếu yêu thích món ăn này, các bạn có thể mua bánh cốm bất kì ở đâu và bất cứ lúc nào. Món bánh này gợi lên trong lòng những người con xa quê, những tâm hồn hoài cổ về một nét văn hóa đẹp, thanh tao trong việc thưởng thức ẩm thực của người Hà Nội.', '2019-01-14 10:38:16', '2019-01-14 10:38:16'),
(123, 'Bánh Dừa Nướng', '90000', 200, 11, 'Trà ngon phải có bánh dừa – Mùi thơm vị béo trà càng thêm ngon. Đây là 2 câu thơ gắn liền với món bánh dừa nướng đủ thấy sức thu hút của món đặc sản này như thế nào. Bánh dừa nướng là đặc sản nổi tiếng của Quảng Nam mà du khách thường chọn mua về làm quà. Vị của loại bánh này rất đặc biệt, rất giòn, hơi béo và ngọt thanh vị dừa dễ chịu.', '2019-01-14 10:57:10', '2019-01-14 10:57:10'),
(124, 'Bí Đao Xanh', '15000', 100, 13, 'Bí xanh thuộc nhóm rau ăn quả được trồng tại trang trại  tại Ba Vì. Trang trại được chứng nhận hữu cơ theo tiêu chuẩn hữu cơ USDA (Mỹ) và Liên minh châu Âu (EU) do tổ chức Control Union cấp.\r\n\r\nBí xanh là thực phẩm quen thuộc của người Việt. Theo y học cổ truyền, bí xanh vị ngọt nhạt, tính mát, có công dụng thanh nhiệt, giải nhiệt và làm tan đờm, làm mát ruột và hết khát, lợi tiểu, làm hết phù, giải độc và giảm béo. Không phải ngẫu nhiên mà ở một số địa phương, bí xanh được sử dụng để chế biến thành món trà thanh nhiệt, giải độc. Trà bí xanh không chỉ dễ uống mà còn giúp làm mát cơ thể cực tốt trong những ngày nắng nóng', '2019-01-14 13:21:06', '2019-01-14 13:21:06'),
(125, 'Bầu', '15000', 100, 13, 'Quả tươi chứa 95% nước, 0,5% protid, 2,9% glucid, 1% cellulos, 21 mg% calcium, 25% phosphor, 0,2 mg% sắt và các vitamin: caroten 0,02 mg%, vitamin B1: 0,02 mg%, vitamin B2 0,03 mg%, vitamin PP 0,40 mg% và vitamin C 12 mg%. Trong quả còn có saponin. Quả bầu là nguồn tốt về vitamin B và vitamin C. Nhân hạt già chứa tới 45% dầu béo.\r\nQuả bầu có vị ngọt, tính lạnh, có tác dụng giải nhiệt, giải độc, thông tiểu, tiêu thủng, trừ ngứa. Lá bầu có vị ngọt, tính bình. Tua cuốn và hoa bầu có tác dụng giải nhiệt độc. Còn có thứ bầu đắng, tính lạnh, hơi độc, có tác dụng lợi tiểu, thông đái dắt, tiêu thủng.\r\n\r\nBầu ngày nay đã được trồng phổ biến ở các vùng nóng trên thế giới. Quả bầu non thường được dùng để nấu canh, luộc hoặc xào... Lá non cũng có thể luộc để làm rau ăn.', '2019-01-14 13:22:40', '2019-01-14 13:22:40'),
(126, 'Rau Lang', '20000', 60, 13, 'Trong các loại rau dành cho mùa nắng nóng, có lẽ rau lang là được ưa chuộng nhất với không chỉ một món chân phương là luộc mà còn xào, nấu canh, làm gỏi…\r\n\r\nTheo Đông y, khoai lang có nhiều tên như: Cam thử, Phiên chử. Củ khoai lang tính bình, vị ngọt, vào hai kinh tỳ và thận.\r\nRau khoai lang phát huy tác dụng tốt về mặt chữa bệnh,dễ tiêu hoá khi mà chúng ta làm món luộc, vừa tận dụng được nước rau, và lại dễ chế biến.Bạn nên ăn luộc vào mùa hè, có thể xào tỏi cũng rất ngon và thích hợp vào mùa đông.', '2019-01-14 13:27:11', '2019-01-14 13:27:11'),
(127, 'Cải Ngọt', '15000', 60, 13, 'Cải ngọt có nguồn gốc từ Ấn Độ, Trung Quốc. Cây thảo, cao tới 50 - 100 cm, thân tròn, không lông, lá có phiến xoan ngược tròn dài, đầu tròn hay tù, gốc từ từ hẹp, mép nguyên không nhăn, mập, trắng trắng, gân bên 5 - 6 đôi, cuống dài, tròn. Chùm hoa như ngù ở ngọn, cuống hoa dài 3 – 5 cm, ha vàng tươi, quả cải dài 4 – 11 cm, có mỏ, hạt tròn. Cải ngọt được trồng quanh năm, thời gian sinh trưởng Ở Việt Nam, cải ngọt thường được chế biến thành các món ăn như cải ngọt xào thịt, canh cải ngọt nấu tôm, rau cải ngọt luộc chấm xì dầu, cải ngọt xào thịt bò, cải ngọt xào chân gà..., làm lẩu cá, lẩu thịt. Chú ý khi dùng: - Nên chọn mua cải lá nguyên vẹn, xanh tươi, cuống thẳng, non. Mắt lá sáng bóng, thẳng nhọn, có sức căng. - Rau khi rửa sạch và thái rau cải, phải nấu ngay, nếu để quá lâu rau sẽ bị mất chất dinh dưỡng. Nếu ăn rau còn thừa tốt nhất nên đổ đi vì nếu để lâu bạn sẽ ăn phải chất muối axit nitrat là chất gây ung thư Cải ngọt có chất aibumin, chất đường, vitamin B1, axít bốc hơi, axít pamic, coban, iốt. Rễ và lá có nhiều chất kiềm thúc đẩy sự tiêu hoá, thúc đẩy cơ thể tiếp thu aibumin bảo vệgan, chống mỡ trong gan. Theo nghiên cứu, thì trong 100 g cải có chứa: 1,1 g protein; 0,2 lipit; 2,1 g cacbohidrat; 61 mg canxi; 37 mg photpho; 0,5 mg sắt; 0,01 mg caroten; 0,02 thiamin (B1); 0,04 mg ribopalavin (B2); 0,3 mg niaxin (B3); 20 mg axit ascorbic (C).\r\n\r\nLink nguồn : https://organicfood.vn/rau-cu-qua/rau-huu-co/cai-ngot-organic-300g.html', '2019-01-14 13:28:02', '2019-01-14 13:28:02'),
(128, 'Mồng Tơi', '14000', 70, 13, 'Lợi ích vàng ít ai biết của rau mồng tơi\r\n\r\nKhông chỉ là món ăn phổ biến trong các gia đình, mồng tơi còn có rất nhiều công dụng chữa bệnh. Cả Đông y và Tây y đều khẳng định rau mùng tơi có tác dụng nhuận tràng. Theo Đông y, rau mồng tơi có tính hàn, vị chua, tán nhiệt, mát máu, lợi tiểu, giải độc, đẹp da, trị rôm sảy mụn nhọt hiệu quả… rất thích hợp trong mùa nóng.\r\nGiảm cân là một trong những lợi ích của rau mồng tơi\r\n\r\nTheo Live Strong, rau mồng tơi chứa rất ít chất béo và calo (100 g lá mồng tơi cung cấp chỉ 19 calo) nên là loại thực phẩm phù hợp với những ai muốn giảm cân. bởi vậy, bạn nên bổ sung rau xanh, đặc biệt là mồng tơi vào chế độ ăn uống hàng ngày để giảm cân.\r\n\r\nRau mồng tơi giàu vitamin A\r\n\r\nHàm lượng tiêu thụ vitamin A khuyến cáo hàng ngày là 2.310 IU cho phụ nữ và 3.000 IU cho nam giới. Vói 510 IU của vitamin A, rau mồng tơi là một trong những cách tốt để đạt mức tiêu thụ mỗi ngày.', '2019-01-14 13:31:46', '2019-01-14 13:31:46'),
(129, 'Cải Thảo', '25000', 50, 13, 'Cải thảo còn được gọi là cải bao, cải cuốn, bắp cải tây (danh pháp ba phần: Brassica rapa subsp. pekinensis), là phân loài thực vật thuộc họ Cải ăn được có nguồn gốc từ Trung Quốc, được sử dụng rộng rãi trong các món ăn ở Đông Nam Á và Đông Á. Loài thực vật này trồng nhiều ở Trung Quốc, Hàn Quốc, Nhật Bản, Việt Nam... nhưng cũng có thể bắt gặp ở Bắc Mỹ, châu Âu, Úc, New Zealand.\r\n\r\nCải thảo có màu sắc khá giống với cải bắp, phần lá bao ngoài của màu xanh đậm, còn lá cuộn ở bên trong (gọi là lá non) có màu xanh nhạt, trong khi phần cuống lá có màu trắng.\r\n\r\nỞ Hàn Quốc, cải thảo được gọi là sui choy và là nguyên liệu chính làm món kim chi.', '2019-01-14 13:34:31', '2019-01-14 13:34:31'),
(130, 'Súp Lơ Xanh', '30000', 40, 13, 'Súp lơ xanh thuộc họ rau cải. Nhóm thực vật này cung cấp một lượng lớn các chất dinh dưỡng với một lượng calo khá thấp. Trong súp lơ xanh còn chứa nhiều vitamin và khoáng chất bao gồm vitamin C, vitamin K1, folat (B9), kali, mangan, sắt… và các hợp chất chống oxy hóa như: sulforaphane, carotenoid, kaempferol, quercetin.  Vì vậy nếu như bạn đang lên một thực đơn lành mạnh, hoặc cố gắng ăn kiêng thì súp lơ xanh sẽ là một lựa chọn hợp lý cho chế độ ăn của bạn.\r\n\r\nSúp lơ xanh còn đem đến vô vàn công dụng mà bạn không ngờ tới', '2019-01-14 13:36:27', '2019-01-14 13:36:27'),
(131, 'Súp Lơ Trắng', '25000', 60, 13, 'Bông cải trắng, súp lơ, hay su lơ, bắp su lơ, hoa lơ (tiếng Pháp: Chou-fleur), cải hoa, cải bông trắng, là một loại cải ăn được, thuộc loài Brassica oleracea, họ Cải, mọc quanh năm, gieo giống bằng hạt. Phần sử dụng làm thực phẩm của súp lơ là toàn bộ phần hoa chưa nở, phần này rất mềm, xốp nên không chịu được mưa nắng. Phần lá và thân thường chỉ được sử dụng làm thức ăn cho gia súc.\r\nSúp lơ có phần lá rất phát triển, nhưng bộ rễ lại phát triển kém thường ăn nông (ở lớp đất 10 – 15 cm) và ít lan rộng, vì thế tính chịu hạn, chịu nước kém. Cây thân thảo, có thể sống 2 năm, ưa đất ẩm, nhiều mùn yêu cầu về dinh dưỡng khá cao, cây thích ánh sáng nhẹ, chịu được lạnh; nhiệt độ thích hợp nhất cho sinh trưởng và phát triển là 15-18oC, từ 25oC trở lên cây mọc kém, chậm, mau hóa già, cho hoa bé và dễ nở. Tuy nhiên, ở giai đoạn đang ra hoa nếu gặp phải nhiệt độ dưới 10oC hoa cũng bị bé, phẩm chất kém.\r\n\r\nỞ Việt Nam, các vùng trồng súp lơ phổ biến là miền có khí hậu lạnh như miền Bắc vào mùa Đông hay các vùng núi cao như Tây Nguyên, nhất là vùng Đà Lạt Lâm Đồng.', '2019-01-14 13:37:47', '2019-01-14 13:37:47'),
(132, 'Rau Muống', '15000', 100, 13, 'Rau muống (danh pháp hai phần: Ipomoea aquatica) là một loài thực vật nhiệt đới bán thủy sinh thuộc họ Bìm bìm (Convolvulaceae), là một loại rau ăn lá. Phân bố tự nhiên chính xác của loài này hiện chưa rõ do được trồng phổ biến khắp các vùng nhiệt đới và cận nhiệt đới trên thế giới. Tại Việt Nam, nó là một loại rau rất phổ thông và rất được ưa chuộng.\r\nCây mọc bò, ở mặt nước hoặc trên cạn. Thân rỗng, dày, có rễ mắt, thường không có lông vào mùa nóng, và có lông vào mùa lạnh. Lá hình ba cạnh, đầu nhọn, đôi khi hẹp và dài. Hoa to, có màu trắng hay hồng tím, ống hoa tím nhạt, mọc từng 1-2 hoa trên một cuống. Quả nang tròn, đường kính 7-9 mm, chứa 4 hạt có lông màu hung, đường kính mỗi hạt khoảng 4 mm.', '2019-01-14 17:50:17', '2019-01-14 17:50:17'),
(133, 'Rau Dền Cơm', '20000', 50, 13, 'Rau dền cơm được gọi là loại “rau trường thọ”. Vì loại rau này rất bổ, có công dụng đứng đầu bảng trong các nhóm rau, giàu vitamin và khoáng chất nhất so với các loại rau khác, đồng thời nó cũng giàu chất đạm. Tên trường thọ thích hợp bởi nó còn chứa đựng các hoạt chất sinh học vô cùng quý giá, giúp loại bỏ và ngăn ngừa các bệnh mãn tính, bệnh ác tính và bệnh làm giảm tuổi thọ của con người.\r\n\r\nRau dền cơm có nhiều chất dinh dưỡng đáng quan tâm. Hai thành phần dinh dưỡng quan trọng đó là nước và chất xơ luôn chiếm tỉ trọng lớn (nước chiếm 88%). Ngoài ra, rau dền cơm chứa nhiều canxi, kali, kẽm, đồng, sắt, photpho và magiê, nhiều vitamin như: tiền vitamin A, B1, B3, C. Hàm lượng protein trong rau dền cơm chiếm 2,11% toàn bộ phần ăn được, tương đối cao với các loại rau thực vật.\r\n\r\nVề mặt y học cổ truyền, rau dền cơm có vị ngọt, tính mát tác dụng thanh nhiệt, lợi thấp, làm mát huyết, ngưng kiết lỵ, ngừng chảy máu chủ trị bệnh nóng trong, bệnh do nắng nóng gây ra, bệnh tiểu tiện không thông, bệnh chảy máu cam.', '2019-01-14 17:51:36', '2019-01-14 17:51:36'),
(134, 'Rau Dền Đỏ', '18000', 65, 13, 'Hạt rau dền tía (dền đỏ) có giá trị dinh dưỡng cao, nhất là loại rau dền ở Cu-ba, với hàm lượng tinh bột 62%, chất béo 6%, protid 16 – 18%, cao hơn cả lúa mì và các loại ngũ cốc khác.\r\n\r\nNhân hạt có vị như hạt bồ đào, thêm vào bột mì làm chất lượng bánh ngon hơn và lại thêm tác dụng bổ dưỡng. Trong chăm nuôi gia cầm, nếu thêm vào thức ăn của gà con một ít hạt giền tía gà sẽ lớn nhanh gấp 6 lần.\r\n\r\nĐặc biệt trong hạt rau dền tía có một loại acid amin quan trọng nhất mà cơ thể con người không thể tự tạo ra, với hàm lượng cao hơn ngô 3 – 3,5 lần, lúa mì 2 – 2,5 lần.\r\nNgày nay, nhiều nước trên thế giới đã bắt đầu chú ý đến rau dền tía để giải quyết vấn đề protid. Tổ chức lương thực và nông nghiệp thế giới (FAO) đã khẳng định vai trò của rau giền tía trong kinh tế phụ gia đình.\r\n\r\nLá dền tía chứa vitamin A, B2, C, P dùng mỗi lần 40 – 50g, cắt nhỏ, nấu với nước bo bã, rồi thêm gạo nếp nấu cháo ăn chữa sản hậu (Nam dược thần hiệu). Dùng ngoài, lá dền tía giã nát, thêm nước, gạn uống, bã đắp chữa rắn độc cắn.', '2019-01-14 17:53:21', '2019-01-14 17:53:21'),
(135, 'Xà Lách Xoong', '25000', 40, 13, 'Cải xoong (danh pháp hai phần: Nasturtium officinale hoặc Nasturtium microphyllum) là một loại thực vật thủy sinh hay bán thủy sinh, sống lâu năm và lớn nhanh, có nguồn gốc từ châu Âu tới Trung Á và là một trong số những loại rau ăn được con người dùng từ rất lâu. Các loài thực vật này là thành viên của họ Cải (Brassicaceae), về mặt thực vật học là có họ hàng với rau tần và mù tạc — tất cả chúng đều đáng chú ý vì có mùi vị hăng và cay.\r\n\r\nThân của cải xoong trôi nổi trên mặt nước và lá của nó là loại lá phức hình lông chim. Cải xoong sản sinh ra các hoa nhỏ màu trắng và xanh lục, mọc thành cụm.\r\nTrong thực tế, người ta trồng cải xoong ở cả phạm vi lớn lẫn phạm vi trong vườn nhà. Là loại cây (bán) thủy sinh, cải xoong rất phù hợp đối với việc trồng trong nước, phát triển tốt nhất trong nước hơi kiềm. Thông thường người ta trồng nó xung quanh vùng thượng nguồn của các dòng nước chảy qua vùng đá phấn. Tại nhiều thị trường khu vực thì nhu cầu về cải xoong vượt xa khả năng cung cấp. Có điều này là do lá cải xoong không thích hợp cho việc phân phối trong dạng khô và chỉ có thể lưu giữ trong một thời gian ngắn. Nếu mọc hoang dã thì cải xoong có thể cao tới 50–120 cm. Người ta cũng bán cải xoong trong dạng cây rau non, trong trường hợp này người ta thu hoạch thân cây ăn được chỉ vài ngày sau khi hạt nảy mầm.', '2019-01-14 18:01:00', '2019-01-14 18:01:00'),
(136, 'Rau Đắng', '22000', 20, 13, 'Có tên khoa học là Polygonum aviculare L. Là loài cây thân thảo mọc bò trên mặt đất, thân và cành mọc tỏa tròn gần như sát mặt đất, đôi khi mọc cao tới 10 - 30cm, màu đỏ tím. Chúng sống quanh năm, có thân nhỏ nhiều đốt, lá nhỏ mọc so le, có bẹ chìa, phiến lá dài 1,5 - 2cm, rộng 0,4cm. Hoa nhỏ màu hồng tím, mọc tụ lại khoảng 1 - 5 hoa ở kẽ lá.Quả ở cạnh, chứa một hạt đầu đen. Mùa hoa khoảng tháng 5 - 6. Người ta thường thu hái toàn cây, sử dụng thân và lá còn tươi hoặc đem phơi khô sử dụng dần.\r\n\r\nRau đắng đất có chứa hàm lượng vitamin C khá cao, khi sử dụng giúp tăng cường sức đề kháng cho cơ thể, làm bền vững thành mạch. Ngoài ra còn có một số chất có lợi cho sức khỏe như: tanin, saponin, flavonoid, alkaloid và sesquiterpene. Các thành phần này kháng khuẩn rất tốt, có thể chống lại một số vi khuẩn gram âm và gram dương. Những người đang bị ho, sốt, cảm lạnh, mụn nhọt, nhiễm trùng đường tiết niệu hay tiêu hóa dùng rau đắng đất cũng giúp tăng cường khả năng chống lại bệnh tật.\r\n\r\nĐồng thời, chúng có tác dụng chống lại quá trình oxy hóa, khử các gốc tự do trong cơ thể, ngăn chặn sự hình thành tế bào ung thư. Một công trình nghiên cứu từ Trung Quốc cho thấy rau đắng đất có vai trò quét dọn các gốc tự do trong cơ thể, được sử dụng có lợi cho các đối tượng mắc bệnh Parkinson, Alzheimer, ung thư và các vấn đề về tim mạch.', '2019-01-14 18:05:13', '2019-01-14 18:05:13'),
(137, 'Ngò Rí', '45000', 25, 14, 'Rau mùi (còn gọi là ngò rí) là loài cây thân thảo thuộc họ Hoa tán, có tên khoa học là Coriandrum sativum.\r\nCây rau mùi có chiều cao trung bình khoảng 20 – 60cm, thân mảnh, lá bóng màu lục tươi; các lá ở dưới chia thành phiến hình trái xoan, có răng; các lá ở trên chia thành nhiều tua.\r\n\r\nRau mùi thường được dùng làm gia vị và trang trí trên các món ăn vì màu xanh tươi và mùi thơm của lá. Ngoài ra, rau mùi còn là một vị thuốc do có chứa lượng lớn các vitamin và khoáng chất rất tốt cho sức khỏe.\r\n\r\n1. Khử kim loại nặng cho cơ thể\r\n\r\nTheo một nghiên cứu được công bố trên Tạp chí Acupuncture & Electro-therapeutics Research gần đây, dùng thường xuyên rau mùi (dưới hình thức rau tươi, nước ép hay nấu chín) có tác dụng loại bỏ thủy ngân và chì ra khỏi cơ thể qua đường nước tiểu, làm giảm triệu chứng chóng mặt do bị phơi nhiễm thủy ngân.\r\n\r\n2. Chống viêm nhiễm\r\n\r\nDo có chứa dưỡng chất cineole và axit linoleic (có tác dụng chống viêm nhiễm) nên loại rau này cần được bổ sung trong bữa ăn hằng ngày của những bệnh nhân viêm khớp.', '2019-01-14 18:20:09', '2019-01-14 18:20:09'),
(138, 'Hành Lá', '35000', 30, 14, 'Hành lá hay hành xanh, hành non là tên gọi chung của các loài thuộc chi Hành. Tất cả hành lá đều có lá rỗng màu xanh (giống hành tây), nhưng lại thiếu một thân hành (củ hành) phát triển hoàn chỉnh. Chúng được trồng bởi hương vị thơm dịu hơn so với hầu hết hành tây và được ăn sống hoặc nấu chín như một loại rau.\r\n\"Hành lá\" cũng được dùng chỉ các cây non của hành tây (A. cepa var. Cepa), hẹ tây (A. cepa var. Aggregatum, tiền thân A. ascalonicum), được thu hoạch trước khi thân hành phát triển hoàn chỉnh, hoặc khi thân hành còn nhỏ. Hầu hết các giống trồng ở phương Tây chủ yếu là hành salad hoặc hành lá thuộc loài A. cepa var. cepa.[1] Vài loài khác cũng thuộc hành lá gồm A. ×proliferum và A. ×wakegi.', '2019-01-14 18:21:32', '2019-01-14 18:21:32'),
(139, 'Cần Tây', '25000', 40, 14, 'Cần tây mang lại rất nhiều dưỡng chất thiết yếu cho cơ thể nên có khả năng phòng chống một số bệnh nguy hiểm, đặc biệt là chứng huyết áp cao\r\n\r\nKhông chỉ là nguyên liệu dùng để chế biến nhiều món ăn ngon, cần tây còn mang lại rất nhiều dưỡng chất thiết yếu cho cơ thể nên có khả năng phòng chống một số bệnh nguy hiểm, đặc biệt là chứng huyết áp cao.\r\n\r\nTheo Tổ chức Y tế Thế giới (WHO), tăng huyết áp ảnh hưởng đến sức khỏe của hơn 1 tỉ người trên toàn thế giới và là yếu tố nguy cơ tim mạch quan trọng nhất liên quan đến bệnh mạch vành, suy tim, bệnh mạch máu não và bệnh thận mạn tính.\r\n\r\nSong rất may là trong các loại rau sử dụng ăn hằng ngày lại rất giàu dược tính nên còn là thuốc chữa bệnh như rau cần tây chẳng hạn.', '2019-01-14 18:23:19', '2019-01-14 18:23:19'),
(140, 'Ngò Gai', '30000', 20, 14, 'Mùi tàu hay mùi gai, ngò gai hoặc ngò tây (phương ngữ miền Nam), tên khoa học là Eryngium foetidum, thuộc họ Hoa tán. Cây này có nguồn gốc ở châu Mỹ.[1]\r\n\r\nNgò gai là cây cỏ thấp, có thân đơn độc, chia cành ở ngọn, hoa quả mọc ở cành. Lá mọc ở gốc, xoè ra hình hoa thị. Lá hình mác thuôn dài, bìa có răng cưa nhỏ. Hoa tự, hình đầu, hình bầu dục, hoặc hình trụ. Khi trưởng thành, hạt rụng và phát tán.\r\n\r\nLá ngò gai có mùi thơm dễ chịu. Trong bát phở có lá ngò tươi giúp ăn ngon miệng. Trong nồi canh chua nấu cá có lá ngò làm mất mùi tanh. Người có bệnh đái tháo đường được cho là nên ăn lá ngò trong bữa ăn vì lá ngò gai có tác dụng làm giảm đường huyết.', '2019-01-14 18:25:03', '2019-01-14 18:25:03'),
(141, 'Húng Lủi', '35000', 25, 14, 'Rau húng lủi thuộc cây thảo, được gọi với nhiều cái tên khác nhau, tùy theo địa phương, đây là loại cây có nguồn gốc từ hoang dã, mùi thơm đặc trưng thường được dùng làm rau sạch, chế biến với nhiều món ăn, ngoài ra cây còn được sử dụng để chế biến thành nhiều loại thảo dược chữa bệnh, xua đuổi muỗi. Sau đây là những công dụng tuyệt vời của rau húng lủi.\r\nTốt cho tiêu hóa: Rau húng lủi chứa dồi dào chất limonene, dihydrocarvone và cineol có tác dụng kích thích tuyến nước bọt tiết ra nhiều men tiêu hóa, giúp cho hệ tiêu hóa hoạt động hiệu quả hơn.\r\nNgừa ung thư: Các nghiên cứu gần đây trên tạp chí hóa học của Mỹ cũng cho thấy húng lủi có khả năng phòng chống ung thư do trong rau chứa một loại hợp chất gọi là perillyl có khả năng “giải tán” sự tụ tập của các tế bào gây ung thư ruột, phổi, da…', '2019-01-14 18:30:27', '2019-01-14 18:30:27'),
(142, 'Măng Tây', '100000', 30, 15, 'Theo bảng số liệu được công bố trên Whfoods, trong 180g măng tây xanh có chứa đến 268,2 microgam folate, chiếm 67% lượng folate cơ thể  thai phụ cần mỗi ngày. Đây là chất có ích cho việc hình thành và phát triển các tế bào máu của thai nhi và là chất cần thiết cho việc hình thành ống thần kinh thai nhi và làm giảm nguy cơ khuyết tật ống thần kinh khi trẻ ra đời.\r\n\r\nMột nghiên cứu được công bố trên KidsHealth cho biết rằng, những phụ nữ tiêu thụ khoảng 400 microgram folate mỗi ngày trước khi mang thai và trong thời kỳ đầu mang thai sẽ làm giảm đến 70% các nguy cơ khuyết tật trầm trọng liên quan đến ống thần kinh ở trẻ sơ sinh.Như vậy trong những tháng đầu bạn nên ăn khoảng 200g măng tây xanh.\r\nPhòng chống suy giãn tĩnh mạch.\r\nHỗ trợ đường ruột và tốt cho tiết niệu.\r\n\r\nGiảm nguy cơ tiểu đường tuýp 2', '2019-01-14 18:52:12', '2019-01-14 18:52:12'),
(143, 'Nấm Rơm', '110000', 25, 15, 'Nấm rơm hay nấm mũ rơm (danh pháp hai phần: Volvariella volvacea) là một loài nấm trong họ nấm lớn sinh trưởng và phát triển từ các loại rơm rạ. Nấm gồm nhiều loài khác nhau, có đặc điểm hình dạng khác nhau như có loại màu xám trắng, xám, xám đen… kích thước đường kính \"cây nấm\" lớn, nhỏ tùy thuộc từng loại.[2] Là loại nấm giàu dinh dưỡng. Nấm rơm chứa nhiều vitamin A, B1, B2, PP, D, E, C và chứa bảy loại a-xít amin. Nấm rơm phổ biến tại các làng quê vì thường được sử dụng làm thực phẩm.', '2019-01-14 18:53:49', '2019-01-14 18:53:49'),
(144, 'Giá Đỗ Xanh', '30000', 30, 15, 'Về mặt thuộc tính thực phẩm được ghi chép trong các sách Đông y, giá đỗ tiếp nhận chức năng giải độc, lợi tiểu từ hạt đỗ.\r\n\r\nVề thành phần dinh dưỡng, sau khi hạt đỗ nảy mầm, hàm lượng đường và chất béo giảm, nhưng hàm lượng protein, axit amin, vitamin (A,C), hợp chất chống lão hóa (isoflavones), chất diệp lục lại tăng cao, chủ yếu liên quan đến việc tăng giảm hàm lượng 4 chất sau:\r\n\r\nHàm lượng vitamin C\r\n\r\nĐỗ xanh hầu như không chứa vitamin C, trong quá trình sinh trưởng giá đỗ mới hình thành vitamin C.\r\n\r\nQua nhiều nghiên cứu cho thấy, trong giá đỗ xanh, đỗ tương (đậu nành), đỗ đen, hàm lượng vitamin C trong giá đỗ xanh cao nhất.', '2019-01-14 18:56:13', '2019-01-14 18:56:13'),
(145, 'Nấm Mỡ', '200000', 20, 15, 'Nấm mỡ (Danh pháp khoa học: Agaricus bisporus) hay còn gọi tên tiếng Anh là: button mushroom là một loài nấm ăn được (có thể ăn sống). Đây là loài bản địa từ vùng đồng cỏ ở châu Âu và Bắc Mỹ. Nó có hai trạng thái màu sắc trong khi chưa trưởng thành màu trắng và nâu-cả hai đều có những cái tên khác nhau. Nấm mỡ (Agaricus bisporus) được trồng ở hơn bảy mươi quốc gia và nó là một trong những loại nấm phổ biến rộng rãi và tiêu thụ nhiều nhất trên thế giới.', '2019-01-14 18:58:38', '2019-01-14 18:58:38'),
(146, 'Nấm Đông Cô (Nấm Hương) - 200 gr', '35000', 100, 15, 'Có thể nói, nấm hương tươi là loại thực phẩm sạch tươi ngon, bổ dưỡng không thể thiếu trong mỗi gia đình.\r\n\r\nNấm hương tươi có dạng hình ô, màu nâu nhạt, khi chín sẽ có màu nâu đậm hơn. Nó được trồng ở các trang trại, là loại mọc ký sinh trên những cây có lá to.\r\nNấm hương tươi Việt Nam chứa nhiều thành phần như: đạm, sắt, magie, vitamin B, vitamin C, vitamin  ,…Được các nhà nguyên cứu đánh giá là món ăn cung cấp nhiều dưỡng chất, công dụng nấm hương tươi rất nổi bật đối với sức khỏe của người dùng:\r\n\r\nGiải độc và bảo vệ gan\r\nTăng cường hệ miễn dịch\r\nGiúp hệ tiêu hóa khỏe mạnh\r\nBổ sung sắt cho cơ thể\r\nBổ thận tráng dương\r\nPhòng ngừa ung thư\r\nGiảm cân hiệu quả\r\nCải thiện tình trạng đau lưng, mỏi gối\r\nKích thích vị giác, giúp ăn uống ngon miệng hơn', '2019-01-14 19:02:26', '2019-01-14 19:02:26'),
(147, 'Cà Tím', '15000', 30, 16, 'Cà tím hay cà dái dê (danh pháp hai phần: Solanum melongena) là một loài cây thuộc họ Cà với quả cùng tên gọi, nói chung được sử dụng làm một loại rau trong ẩm thực. Nó có quan hệ họ hàng gần gũi với cà chua, khoai tây, cà dừa, cà pháo và có nguồn gốc ở miền Nam Ấn Độ và Sri Lanka. Nó là cây một năm, cao tới 40 – 150 cm (16 - 57 inch), thông thường có gai, với các lá lớn có thùy thô, dài từ 10–20 cm và rộng 5–10 cm. Hoa màu trắng hay tía, với tràng hoa năm thùy và các nhị hoa màu vàng. Quả là loại quả mọng nhiều cùi thịt, đường kính nhỏ hơn 3 cm ở cây mọc hoang dại, nhưng lớn hơn rất nhiều ở các giống trồng. Quả chứa nhiều hạt nhỏ và mềm. Các giống hoang dại có thể lớn hơn, cao tới 225 cm (84 inch) và lá to (dài tới trên 30 cm và rộng trên 15 cm). Tên gọi cà tím không phản ánh đúng loại quả này, do có nhiều loại cà khác cũng có màu tím hay quả cà tím có màu đôi khi không phải tím. Tuy nhiên, tên gọi cà dái dê cũng không phản ánh đúng hình dạng của quả, do quả của nhiều giống cà tím (cà dái dê) không phải ôvan thuôn dài như dái dê mà lại tròn, có đường kính từ 5 cm đến 8 cm..', '2019-01-14 19:10:59', '2019-01-14 19:10:59'),
(148, 'Cà Rốt', '20000', 50, 16, 'Cà rốt (bắt nguồn từ từ tiếng Pháp carotte /kaʁɔt/)[1] (danh pháp khoa học: Daucus carota subsp. sativus) là một loại cây có củ, thường có màu vàng cam, đỏ, vàng, trắng hay tía. Phần ăn được của cà rốt là củ, thực chất là rễ cái của nó, chứa nhiều tiền tố của vitamin A tốt cho mắt.\r\n\r\nTrong tự nhiên, nó là loại cây sống hai năm, phát triển một nơ chứa lá trong mùa xuân và mùa hè, trong khi đó vẫn tích lũy một lượng lớn đường trong rễ cái to mập, tích trữ năng lượng để ra hoa trong năm thứ hai. Thân cây mang hoa có thể cao tới 1 m (3 ft), với hoa tán chứa các hoa nhỏ màu trắng, sinh ra quả, được các nhà thực vật học gọi là quả nẻ[2]', '2019-01-14 19:12:38', '2019-01-14 19:12:38'),
(149, 'Khoai Tây', '20000', 30, 16, 'Khoai tây\r\nPotato and cross section.jpg\r\nPhân loại khoa học\r\nGiới (regnum)	Plantae\r\n(không phân hạng)	Angiospermae\r\n(không phân hạng)	Eudicots\r\n(không phân hạng)	Asterids\r\nBộ (ordo)	Solanales\r\nHọ (familia)	Solanaceae\r\nPhân họ (subfamilia)	Solanoideae\r\nTông (tribus)	Solaneae\r\nChi (genus)	Solanum\r\nLoài (species)	S. tuberosum\r\nDanh pháp hai phần\r\nSolanum tuberosum\r\nL.\r\nKhoai tây (danh pháp hai phần: Solanum tuberosum), thuộc họ Cà (Solanaceae). Khoai tây là loài cây nông nghiệp ngắn ngày, trồng lấy củ chứa tinh bột. Chúng là loại cây trồng lấy củ rộng rãi nhất thế giới và là loại cây trồng phổ biến thứ tư về mặt sản lượng tươi - xếp sau lúa, lúa mì và ngô[1]. Lưu trữ khoai tây dài ngày đòi hỏi bảo quản trong điều kiện lạnh.\r\n\r\nLoài khoai tây hoang dã mọc trên khắp châu Mỹ, từ Hoa Kỳ cho tới miền nam Chile.[2] Người ta từng cho rằng khoai tây đã được thuần hóa độc lập tại nhiều địa điểm,[3] nhưng sau đó thử nghiệm di truyền học trên nhiều giống cây trồng và các loại khoai tây hoang dã đã chứng tỏ có một nguồn gốc duy nhất của khoai tây là ở khu vực miền nam Peru và cực tây bắc Bolivia ngày nay. Nơi con người đã thuần hóa được khoai tây từ 7 đến 10 nghìn năm trước.[4][5][6] Sau nhiều thế kỷ chọn lọc và nhân giống, hiện nay đã có hơn một ngàn loại khoai tây khác nhau.[5] Hơn 99% các loài khoai tây được trồng hiện nay trên toàn cầu có nguồn gốc từ nhiều giống khác nhau ở vùng đất thấp trung-nam Chile, các giống này đã được di dời từ các cao nguyên Andes.[7][8]\r\n\r\nSau cuộc chinh phục Đế chế Inca của Tây Ban Nha, người Tây Ban Nha giới du nhập khoai tây vào châu Âu trong nửa cuối thế kỷ XVI. Sau đó nó được vận tải chủ yếu bằng đường biển ra các vùng lãnh thổ và hải cảng trên toàn thế giới. Khoai tây bị người nông dân châu Âu chậm chấp nhận do họ không tin tưởng. Để rồi sau đó nó trở thành một cây lương thực quan trọng và là cây trồng đóng vai trò làm bùng nổ dân số châu lục này trong thế kỷ XIX. Tuy nhiên, ban đầu khoai tây thiếu đa dạng di truyền, do có rất hạn chế số lượng giống cây được giới thiệu, nó còn là cây trồng dễ bị bệnh. Năm 1845, một căn bệnh thực vật gọi là bệnh rụng lá gây ra bởi nấm oomycete infestans Phytophthora, lây lan nhanh chóng thông qua các cộng đồng nghèo ở miền tây Ailen, dẫn đến mùa màng thất bát và xảy ra nạn đói. Hàng ngàn giống cây vẫ còn tồn tại ở vùng Andes, nơi mà 100 giống khoai tây khác nhau có thể tìm thấy, nhiều giống được lưu trồng bởi những hộ nông dân.', '2019-01-14 19:13:28', '2019-01-14 19:13:28'),
(150, 'Bí Ngô Hồ Lô', '20000', 50, 16, 'Bí đỏ Nhật có màu xanh lục, đậm, dạng tròn, dẹt. Bí đỏ Nhật một loại quả dễ trồng nhưng lại có giá trị dinh dưỡng đặc biệt. Người Nhật Bản luôn coi nó là một trong những món ăn trường sinh bất lão.', '2019-01-14 19:17:52', '2019-01-14 19:17:52'),
(151, 'Dưa Leo - Dưa Chuột', '18000', 50, 16, 'Dưa chuột (tên khoa học Cucumis sativus) (miền Nam gọi là dưa leo) là một cây trồng phổ biến trong họ bầu bí Cucurbitaceae, là loại rau ăn quả thương mại quan trọng, nó được trồng lâu đời trên thế giới và trở thành thực phẩm của nhiều nước. Những nước dẫn đầu về diện tích gieo trồng và năng suất là: Trung Quốc, Nga, Nhật Bản, Mỹ, Hà Lan, Thổ Nhĩ Kỳ, Ba Lan, Ai Cập và Tây Ban Nha.', '2019-01-14 19:19:18', '2019-01-14 19:19:18'),
(152, 'Bắp bò Củ Chi', '300000', 50, 20, 'Thịt bắp bò tơ Củ Chi-  loại thịt nằm ở vị trí 4 bắp chân, cơ phát triển nên có gân nhiều, thịt đỏ cứng nhưng giàu collagen nếu hầm lâu. Càng hầm thì càng ra vị ngọt nên phù hợp với món hầm lấy nước dùng. Sử dụng nồi áp suất để rút ngắn thời gian hầm. Ngoài ra, đây cũng là bộ phận khi xay thịt ra thì vị sẽ ngon nhất. Thịt bắp bò tơ Củ Chi được lấy từ nguồn bò tơ chất lượng từ Củ Chi và cung cấp thịt cho khách hàng ngay sau khi giết mổ, được đóng gói chân không, hút ẩm từ 1 đến 2 giờ đảm bảo vị ngon nhất của thịt bò. \r\nĐảm bảo: Không có chất bảo quản, không thức ăn tăng trưởng, không thịt bò bệnh.', '2019-01-17 08:31:52', '2019-01-17 08:31:52'),
(153, 'Đuôi bò Củ Chi', '270000', 20, 20, 'Đuôi bò : đuôi bò với vị ngon, mềm của đuôi bò và gân đuôi dẻo được chế biến thành nhiều món ăn như lẩu đuôi bò, đuôi bò hầm tiêu xanh, đuôi bò hấp bia ... Đuôi bò trung bình từ 2 - 2.4kg/cái, Vegetable.com đã hỗ trợ sơ chế sạch sẽ nên các mẹ cần ghi rõ việc chặt nhỏ như thế nào? và đóng bao nhiêu gói? cho chiếc đuôi mình đặt hàng vì dao nhà sẽ rất khó chặt với chiếc đuôi này.', '2019-01-17 08:34:17', '2019-01-17 08:34:17'),
(154, 'Đùi Bò Úc', '300000', 50, 20, 'Thịt Đùi Bò Úc là phần thịt mềm nhất ở đùi con bò. Đây được đánh giá là một trong những phần thịt bò Úc giàu chất dinh dưỡng nhất. Phần thịt nạc đùi bò Úc nằm ở phần cơ mông cao nhất, có ít mô nối nên khi nấu sẽ có vị không quá béo, rất dễ ăn. Thịt đùi bò Úc được nhập nguyên con còn sống và giết mổ tại Việt Nam theo đúng tiêu chuẩn ESCAS, vệ sinh an toàn thực phẩm, kiểm dịch. Thịt được đóng gói và hút chân không tiệt trùng , bảo quản bằng tủ mát, vì vậy đảm bảo thịt vẫn giữ hương vị, mùi vị mà không cần bất cứ chất bảo quản nào.\r\nKhông như phần lớn thịt bò Úc trên thị trường là bò đông lạnh, khi rã đông sẽ mất đi vị của thịt. Chỉ có tại Vegetable.com chúng tôi cung cấp thịt tươi ngay sau khi giết mổ từ 1 tới 2 giờ đảm bảo vị ngon nhất của thịt bò vẫn còn nguyên. \r\nĐảm bảo: Không có chất bảo quản, không thức ăn tăng trưởng, không thịt bò bệnh.', '2019-01-17 08:37:32', '2019-01-17 08:37:32'),
(155, 'Thịt thăn bò Úc', '350000', 50, 20, 'Thịt thăn là phần thịt đỏ cao cấp nhất trong con bò, chỉ có lượng ít trong mỗi con, hình dáng thon dài. Sớ thịt nhỏ, mềm, ít mỡ nên rất được các bà nội trợ ưa thích cho bữa ăn thêm ngon miệng. Đặc biệt, thịt thăn  rất tuyệt vời khi chế biến bít-tết, để thưởng thức hết vị ngon của miếng thịt thì chỉ cần ướp thịt với với chút muối tiêu và tận hưởng. Thịt thăn bít-tết bò Úc cung cấp bởi hệ thống cửa hàng và website Vegetable.com được nhập nguyên con còn sống và giết mổ tại Việt Nam theo đúng tiêu chuẩn ESCAS, vệ sinh an toàn thực phẩm, kiểm dịch. Thịt được đóng gói và hút chân không tiệt trùng , bảo quản bằng tủ mát, vì vậy đảm bảo thịt vẫn giữ hương vị, mùi vị mà không cần bất cứ chất bảo quản nào. Hệ thống cửa hàng của Vegetable.com được giám sát chặt chẽ và trang bị tủ đông, tủ mát vệ sinh và hoàn toàn đảm bảo về chất lượng. Không như phần lớn thịt bò Úc trên thị trường là bò đông lạnh, khi rã đông sẽ mất đi vị của thịt. Chỉ có tại Vegetable.com chúng tôi cung cấp thịt tươi ngay sau khi giết mổ từ 1 tới 2 giờ đảm bảo vị ngon nhất của thịt bò vẫn còn nguyên. \r\nĐảm bảo: Không có chất bảo quản, không thức ăn tăng trưởng, không thịt bò bệnh.', '2019-01-17 08:40:15', '2019-01-17 08:40:15'),
(156, 'Chả Bò Thì Là', '300000', 100, 20, 'Chả bò thì là ăn thơm mùi thịt bò, thỉnh thoảng lại thấy cay nồng với chút tiêu sọ, và đặc biệt cảm thấy tươi mới với chút thì là và hành tươi. Chấm kèm chút mắm, ăn với cơm hay bánh mỳ đều ngon. Hoặc cứ thế ăn không mà chẳng cần thêm thắt gì cả bởi sự hấp dẫn nằm ngay trong từng miếng chả bò thì là rồi.', '2019-01-17 08:42:36', '2019-01-17 08:42:36'),
(157, 'Giò Me Nghệ An', '250000', 50, 20, 'Giò me (giò bê) với nguyên liệu chính là thịt me (thịt bê) của vùng quê núi rừng Nam Nghĩa - huyện Nam Đàn – tỉnh Nghệ An. Me ở đây có mùi vị thơm ngọt đặc trưng nổi tiếng khắp vùng Có người nói do địa thế ở đây nhiều đồi núi nên trâu bò phải di chuyển nhiều hơn, cũng có người nói do cỏ và các loại lá ở đây đặc biệt... có nhiều cách giải thích rồi tựu chung lại người ta thường nói : “thịt me Nam Nghĩa , thịt dê Cầu Đòn” để khẳng định chất lượng.', '2019-01-17 08:43:46', '2019-01-17 08:43:46'),
(158, 'Thịt Heo Ba Rọi', '120000', 30, 21, 'Thịt ba rọi rút sườn hữu cơ là phần thịt nằm gần phần sườn của heo và là phần ba rọi nhiều thịt nhất. Thông thường, thịt ba rọi rút sườn gồm 5 lớp: lớp da ngoài cùng, lớp mỡ, lớp thịt mỏng, lớp mỡ và cuối cùng là lớp thịt dày. Lớp thịt dày cuối cùng thường có xương sườn và phần thịt rút sườn ăn rất giòn, ngậy và ngon.', '2019-01-17 08:46:26', '2019-01-17 08:46:26'),
(159, 'Sườn Non Heo', '120000', 30, 21, 'Sườn non là một trong những phần hấp dẫn nhất của con heo, được rất nhiều người ưa chuộng. Sườn non là phần xương sườn nhỏ, xương dẹt, nhiều thịt, ít xương, thường có sụn. Điều đặc biệt là sườn non sạch mới cung cấp nhiều vitamin cũng như lượng protein cao cho người sử dụng. Vì thế, đây là phần ngon nhất, dùng để chế biến các món như nướng, sườn rim, sườn rang sả ớt… Sườn non sạch hữu cơ mang lại nguồn dinh dưỡng cao, không có chất bảo quản và chất kích thích gây hại cho người tiêu dùng.', '2019-01-17 08:48:01', '2019-01-17 08:48:01'),
(160, 'Cốt Lết Heo', '150000', 40, 21, 'Cốt lết hữu cơ là phần thịt ngon, mềm và nhiều thịt nhất so với các phần khác của thịt heo sạch hữu cơ. Cốt lết hữu cơ rất giàu protein, là nguồn dinh dưỡng cần thiết để tái tạo lại cơ bắp sau khi tập thể dục và giúp tăng cường hệ miễn dịch. Ngoài ra, thịt cốt lết hữu cơ còn cung cấp một lượng axit amin cần thiết cho chế độ ăn của bạn và gia đình bạn. Sử dụng thực phẩm thịt cốt lết FAU, bạn hoàn toàn an tâm về một sản phẩm cao cấp đúng chuẩn hữu cơ, dựa vào quy trình chăn nuôi khép kín từ thức ăn, chăn nuôi chọn lọc, đến giết mổ và vận chuyển.  Đây là loại thịt đầu tiên và duy nhất của Việt Nam đáp ứng tiêu chuẩn khắt khe của Hiệp hội hữu cơ Canada, đảm bảo vệ sinh an toàn thực phẩm . Thành phần dinh dưỡng:  Cốt lết hữu cơ là nguồn cung cấp protein, vitamin và các khoáng chất khác nhau như selen, kẽm, vitamin B12, vitamin B6, niacin, phốt pho, sắt …', '2019-01-17 08:49:48', '2019-01-17 08:49:48'),
(161, 'Tim Heo (300gr)', '100000', 20, 21, 'Giá trị dinh dưỡng của tim heo từ thịt heo sạch Tim heo từ thịt heo sạch là một nguồn chất sắt, kẽm, selen, vitamin nhóm B như B2, B6, axit folic và B12 tuyệt vời. Tim đặc biệt giàu chất CoQ10 – rất quan trọng cho hoạt động của cơ thể, đặc biệt là tim từ thịt heo sạch – bộ máy sản xuất năng lượng trong cơ thể. \r\nTác dụng của tim heo từ thịt heo sạch Theo Đông y, tim heo của thịt heo thông thường có vị ngọt mặn, tính hàn, không độc, vào tâm, phế và tất nhiên đặc biệt chất lượng hơn đối với tim từ thịt heo sạch. Có tác dụng ích khí, bổ tâm, chữa kinh giản thương phong, trợ lực cho phụ nữ sau sinh…', '2019-01-17 08:51:47', '2019-01-17 08:51:47');
INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(162, 'Thịt Đùi Heo', '130000', 50, 21, 'Là phần thịt lóc ra từ phần đùi của con heo, phần thịt này có lớp bì, mỡ và  thịt được phân tách rõ ràng, phần thịt nạc rất dày, không còn các phần gân, xương hay sụn.Là thực phẩm có chứa nhiều protein, lipit và các khoáng chất cần thiết cho cơ thể. Ngoài ra, trong thịt nạc đùi còn cung cấp một lượng axit amin cần thiết giúp tái tạo cơ bắp và tăng cường hệ miễn dịch. \r\n\r\nThịt đùi là nguyên liệu không thể thiếu khi nấu món thịt kho tàu, canh măng, làm thịt đông, đặc biệt là món thịt luộc cuốn với bánh tráng,..', '2019-01-17 08:54:18', '2019-01-17 08:54:18'),
(163, 'Chả Lụa', '150000', 30, 21, 'Chả lụa hữu cơ là món ăn ngon truyền thống của người dân được làm từ thịt heo hữu cơ xay nhuyễn sau đó được nêm nếm với gia vị sao cho phù hợp vời từng vùng miền rồi được gói với lá chuối và đem đi luộc chín.\r\n Trong những dịp lễ tết, chả lụa hữu cơ là một trong những món ăn phổ biến và không thể thiếu trong mâm cơm của các gia đình Việt. Nhờ vào tính tiện dụng mà vẫn đảm bảo được đầy đủ các chất dinh dưỡng cho bữa ăn, món ăn dân dã nãy đã và đang được rất nhiều người ưa dùng hiện nay.   \r\n\r\nTHÀNH PHẦN Thịt mông và nạc mông của lợn hữu cơ, nước mắm cốt,', '2019-01-17 08:55:40', '2019-01-17 08:55:40'),
(164, 'Gà Ta Thả Vườn', '150000', 30, 22, 'Gà ta thả vườn được nuôi tại vùng sông nước miền tây Bến Tre với thiên nhiên trong lành trên nền đất phù sa màu mỡ. Nguồn thức ăn tự nhiên trong đất dồi dào, cây cỏ đa chủng loại giúp cho vật nuôi (đặc biệt là gà - ăn bươi) cho chất lượng thịt rất tuyệt vời. \r\nGà ta Bến Tre Đối với người sành ăn gà ta thì ắt hẳn đều biết gà ta tại Bến tre có thể nói là loại gà ngon nhất Miền Nam. Gà được nuôi tại vùng sông nước miền tây Bến Tre với thiên nhiên trong lành trên nền đất phù sa màu mỡ. Nguồn thức ăn tự nhiên trong đất dồi dào, cây cỏ đa chủng loại giúp cho vật nuôi (đặc biệt là gà - ăn bươi) cho chất lượng thịt rất tuyệt vời, thịt gà chắc, ngọt, dai, thơm và ít mỡ.', '2019-01-17 09:03:43', '2019-01-17 09:03:43'),
(165, 'Gà Tre Đèo Le', '170000', 30, 22, 'trong các loại gà được xếp vào bậc ngon có tiếng của Việt Nam, người ta không thể không nhắc tới gà đèo Le.\r\n\r\nGà đèo Le là giống gà tre, nuôi thả bộ tự nhiên hoàn toàn, mỗi con chỉ nặng khoảng 0,5 - 0,7 kg. Các món ăn từ gà bao gồm nướng, hấp hành và rô ti... nhưng phổ biến nhất vẫn là luộc bởi thực khách không phải chờ đợi lâu để thưởng thức món ăn này.', '2019-01-17 09:06:06', '2019-01-17 09:06:06'),
(166, 'Thịt Vịt Đồng', '100000', 20, 22, 'Thịt vịt có giá trị dinh dưỡng rất cao. Trong 100g thịt vịt có khoảng 25g chất protein (vượt xa nhiều lần so với thịt bò, heo, dê, cá, trứng). Ngoài ra, hàm lượng các chất dinh dưỡng như canxi, phốtpho, sắt, vitamin (B1, B2, A, D, E), acide nicotic… rất cao.[1]\r\n\r\nTheo Đông y thì thịt vịt tính hàn, có tác dụng tư âm, dưỡng vị. Sách Bản thảo cương mục của Lý Thời Trân ghi: Thịt vịt chữa các chứng bệnh tiểu tiện bất lợi, nhiệt bệnh, hư lao, bổ ngũ tạng và thủy đạo. Nên chọn các loại vịt đực đầu xanh hoặc vịt lông trắng, xương đen, mỏ đen càng tốt. Do thịt vịt có tính hàn, tác dụng bổ âm nên những người dương hư tỳ nhược, ngoại cảm chưa khỏi hẳn tạm thời chưa nên ăn. thịt vịt có vị ngọt, hơi mặn, tính hàn, tác dụng tư âm, dưỡng vị, giải độc.', '2019-01-17 09:07:19', '2019-01-17 09:07:19'),
(167, 'Thịt Le Le', '300000', 20, 22, 'Le Le là một loài chim hoang dã kiếm ăn ở vùng đồng ruộng hay bưng biền, nhiều nhấ là ở vùng Đồng Tháp Mười. Trong những bàu sen, lá sen rộng lúc nào cũng có hàng đàn le le bơi lội. Le le ngoài Bắc thường gọi là vịt trời. Người ta làm thịt le le như làm thịt vịt\r\n\r\nLe le nấu cháo để nguyên con, cho vào nồi nước lạnh đun sôi, đợi chín tới, vớt ra để nguội rồi đổ gạo thơm vào rồi ninh cho khi cháo chín nhừ. Thịt le le luộc chặt miếng vuông bày ra đĩa gắp chấm với nước mắm, chanh, gừng, ớt và ăn cùng với tô cháo nóng. Dù ăn bằng cách nào thì thịt le le cũng có vị béo ngọt và thơm gần giống như vịt nhà nhưng không mềm bằng.', '2019-01-17 09:08:40', '2019-01-17 09:08:40'),
(168, 'Trứng gà thả vườn', '5000', 200, 23, 'Trứng gà có hình bầu dục, hai đầu không cân bằng, một to một nhỏ. Trứng là nguồn thức ăn cung cấp protein, rất tốt cho sức khỏe con người,\r\n\r\nVề cơ bản, cấu tạo của quả trứng được chia làm 4 phần gồm vỏ trứng, màng vỏ, lòng trắng, lòng đỏ. Trong quả trứng gà, vỏ trứng chiếm 11,9% khối lượng, màng vỏ là 0,4%, lòng trắng là 55,8% và lòng đỏ chiếm khoảng 31,9%.', '2019-01-17 09:10:13', '2019-01-17 09:10:13'),
(169, 'Trứng Vịt Đồng', '5000', 200, 23, 'Ai không ở thôn quê, nhất là những vùng ruộng đồng ngập nước, chắc sẽ không hình dung được cảnh đi nhặt trứng vịt đồng. Ðó không chỉ là niềm vui mà đứa trẻ nhà quê nào hầu như cũng thích mà đôi khi còn là một công việc góp thêm phần vào trang trải trong gia đình của một thời nghèo khó…\r\n\r\nÐi nhặt trứng vịt đồng có biết bao niềm vui. Cả buổi được bì bõm trên đồng, tha hồ nghịch nước. Vui nhất là lúc phát hiện được một trứng vịt nằm dưới ruộng. Trứng nho nhỏ trắng tinh nằm bên gốc rạ, dưới ruộng nước rất dễ nhận ra, đi một buổi có thể nhặt được năm bảy trứng, hôm nào may mắn còn có thể được nhiều hơn.', '2019-01-17 09:13:01', '2019-01-17 09:13:01'),
(170, 'Trừng Vịt Bắc Thảo', '6000', 50, 23, 'Trứng vịt Bắc Thảo (hay trứng Bách Thảo, Bách nhật trứng, Thiên niên bách nhật trứng), là một món ăn từ trứng có nguồn gốc Trung Hoa. Tại Việt Nam, món trứng này được làm từ trứng vịt, ủ trong một hỗn hợp từ đất sét, tro, muối, vôi, và trấu... trong nhiều tuần lễ, hay nhiều tháng.[1] Ở Trung Quốc, người ta còn làm món này từ trứng cút và trứng gà.\r\n\r\nTrứng sau khi bóc bỏ lớp trấu và các nguyên liệu đắp ở ngoài vỏ thì vỏ trứng có màu đen trắng lẫn lộn như muối tiêu, đôi khi tạo những lớp hoa văn trên bề mặt trông rất đặc biệt. Lòng đỏ của trứng thường có màu xanh xám, xanh đen hoặc màu kem với mùi thơm mạnh đặc trưng, lòng trắng có màu nâu đen và trong suốt như thạch.', '2019-01-17 09:14:27', '2019-01-17 09:14:27'),
(171, 'Trứng Cút', '500', 500, 23, 'Trứng cút được xem là một món ăn ở nhiều nước trên thế giới, được chế biến từ trứng của các loài chim cút, phổ biến nhất là từ trứng chim cút Nhật Bản.\r\n\r\nTrong ẩm thực Nhật Bản, trứng cút sống hoặc trứng luộc được sử dụng trong món sushi và trong bữa trưa của người Nhật.\r\nỞ một số nước, món trứng cút được coi là bổ dưỡng và lành hơn các loại trứng khác. Tại Colombia và Venezuela, trứng cút luộc có trong thành phần của hot dog và hamburger. Tại Philippines, trứng cút luộc sau đó chiên vàng là thành phần của món kwek-kwek phổ biến trên đường phố. Tại Việt Nam, món trứng cút luộc[1] và trứng cút lộn là món nhậu được ưa chuộng. Ngoài ra trứng cút còn là một thành phần quan trọng trong một tô mì Quảng.', '2019-01-17 09:16:02', '2019-01-17 09:16:02'),
(172, 'Cá Dìa Bông Lý Sơn', '190000', 50, 24, 'Cá dìa bông Lý Sơn thân dẹp tròn, da trơn màu nâu xám, trên thân hình có những chấm nâu đen, đầu nhỏ, mắt đen tròn. Là một món ăn ngon thịt cá ngọt, béo, dai, thơm ngon phù hợp với mỗi bữa ăn trong gia đình hoặc là món nhậu tốn nhiều bia, rượu của các đấng mày râu. Cá Dìa Bông Lý Sơn là một loài cá trong họ cá Dìa, là loài quý nhất trong các loài cá Dìa.  Sống phổ biến ở vùng biển miền Trung Việt Nam, là loài cá có giá trị thương mại cao. Cá thường sống trong các ghềnh đá, bãi rạn san hô nên rất khó đánh bắt. Cá Dìa Bông to bằng bàn tay người lớn, thân hình mập, thịt béo, thơm ngon.', '2019-01-17 21:41:51', '2019-01-17 21:41:51'),
(173, 'Cá Chuồn Lý Sơn', '100000', 50, 24, 'Đặc sản Cá chuồn Lý Sơn là một trong những món ăn độc đáo, thích hợp để bạn làm quà, nổi tiếng lừng danh với đặc sản Quảng Ngãi.\r\nCá chuồn rất đặc biệt, nó không chỉ ăn sâu trong tâm trí mỗi người mà còn ngấm đậm vào nền văn hóa ẩm thực tuyệt vời xứ Quảng. Bữa nhậu sẽ trở nên thi vị hơn khi có món cá chuồn đệ nhất lừng danh.\r\nKhi ăn ta sẽ cảm nhận được vị ngon, ngọt, bùi bùi, béo béo, phù hợp cho mọi món ăn đơn giản trong gia đình.\r\nĐặc biệt nhất từ cá chuồn đó là mùi hương, mùi hương không như các loài cá  khác, có một điểm nhấn riêng thu hút tâm hồn bao người dân Việt. Khi đã có dịp được thưởng thức là sẽ mê mẫn mãi không quên, hương vị đó, mùi thơm đó thật khác biệt.', '2019-01-17 21:44:42', '2019-01-17 21:44:42'),
(174, 'Cá Chẽm (300gr)', '100000', 30, 24, 'Cá Chẽm sống ở nước lợ, được đánh bắt từ thiên nhiên. Thịt cá Chẽm dai ngọt và ít xuông xương nên được nhiều khách ưa thích. Trong cá chẽm tươi sống có hàm lượng dinh dưỡng cao như chất Đạm, Axit béo, OMEGA-3, Calories, Canxi, Magnesium, Sắt, I-ốt,... Thịt cá chẽm có tính lành công dụng trị chứng hư nhược, phụ nữ có thai và cho con bú, phù thũng, gân sưng yếu, sinh lý yếu, đái tháo đường, chứng liên quan đến khí huyết hư dùng đều tốt.', '2019-01-17 21:46:23', '2019-01-17 21:46:23'),
(175, 'Cá Bống Sông Trà', '100000', 30, 24, 'Cá bống sông Trà là một đặc sản được người Quảng Ngãi từ xưa tự hào: “Chim mía Xuân Phổ, kẹo gương Thu Xà, cá bống sông Trà, mạch nha Mộ Đức\".\r\nĐến bây giờ, cá bống sông Trà vẫn là một món ăn nổi tiếng, người khắp nơi đến Quảng Ngãi không thể bỏ qua. Cá bống sống nhiều ở đoạn sông Trà từ đuôi xã Tịnh Sơn, huyện Sơn Tịnh thẳng ra biển. Khoảng tháng 3 đến tháng 5 âm lịch, cá bống nhiều nhất, lúc này cá nhiều trứng, mập.', '2019-01-17 21:49:19', '2019-01-17 21:49:19'),
(176, 'Cá Thu', '250000', 30, 24, 'Cá thu là một trong các loại cá biển có thịt thơm ngon, dồi dào nguồn đạm và chất béo... bởi vậy dân gian đã có câu “chim, thu, nhụ, đé” để nói đến 4 thứ cá biển ngon nổi tiếng.\r\n\r\nCá thu là một trong các loại cá biển có thịt thơm ngon, dồi dào nguồn đạm và chất béo... bởi vậy dân gian đã có câu “chim, thu, nhụ, đé” để nói đến 4 thứ cá biển ngon nổi tiếng.\r\n\r\nCá thu có chứa loại dầu mang tên omega-3 có tác dụng rất lớn trong việc ngăn chặn sự hình thành chất prostaglasdins có liên quan đến những cơn đau khi hành kinh hay chứng tổn thương ngực và thậm chí cả ung thư vú ở phụ nữ.', '2019-01-17 21:51:25', '2019-01-17 21:51:25'),
(177, 'Cá Hố', '100000', 30, 24, 'Thịt bùi, xương nhiều nhưng “tập trung” không hề có xương dăm. Thịt trắng cho bé và người lớn tuổi ăn được. Cắt thành từng miếng cỡ 5 cm rồi chế biến\r\n\r\nChế biến: Cá hố kho tiêu, kho nghệ, kho dưa cải, kho với nấm bào ngư, kho bổi hay sốt cà, nấu canh chua, nướng giấy bạc, chiên giòn, chiên xả ớt, chiên chấm mắm chua ngọt.\r\n\r\nMón ăn dân gian miền Trung truyền thống là \'Cá hố muối sư\'. Ngoài ra, dân nhậu còn rất thich món \'Gỏi khô cá hố\': Khô cá hố nướng hay chiên xé nhỏ trộn với dưa leo, rau sống.', '2019-01-17 21:55:54', '2019-01-17 21:55:54'),
(178, 'Bống Mú', '250000', 30, 24, 'Cá bống mú Phú Quốc là loại cá rất ngon và bổ dưỡng, thịt mềm, ngọt, ít xương Món cá mú dễ ăn và được yêu thích nhất là cá mú hấp. Ngoài ra còn có thể chế biến thành lẩu cá mú, nấu cháo, chiên sốt, cá mú ăn mù tạt (susimi) cũng rất hấp dẫn. Thịt cá mú chắc, ngọt và thơm ăn vào sẽ cảm nhận được hương vị của biển cả', '2019-01-17 21:57:08', '2019-01-17 21:57:08'),
(179, 'Tôm sú (30con/kg)', '200000', 20, 26, 'Tôm sú (tên khoa học: Penaeus monodon) là một loài động vật giáp xác đại dương được nuôi để dùng làm thực phẩm.\r\nPhân bổ tự nhiên của loài này là khu vực Ấn-Tây-Thái Bình Dương, trải từ bờ đông châu Phi, bán đảo Ả Rập, đến tận Đông Nam Á và biển Nhật Bản. Ở đông Úc cũng có loài này, và một lượng nhỏ tôm sú cũng đi vào Địa Trung Hải qua kênh đào Suez. Ngoài ra còn có ở Hawaii và bờ biển Đại Tây Dương của Mỹ (Florida, Georgia và Nam Carolina).', '2019-01-17 21:59:14', '2019-01-17 21:59:14'),
(180, 'Tôm Thẻ Cà Mau', '250000', 30, 26, 'Tôm thẻ tươi tự nhiên 100% được bắt trực tiếp từ các đầm nuôi tôm ở Cà Mau, tuyệt đối không cho tôm ăn thức ăn công nghiệp, 30 – 40 con/kg - Mình tôm tươi bóng - Màu tự nhiên - Thịt tôm thẻ tự nhiên có vị ngọt tự nhiên và đặc biệt thị hơi dai, giòn, có mùi thơm khác so với tôm nuôi công nghiệp, cho ăn thức ăn', '2019-01-17 22:08:14', '2019-01-17 22:08:14'),
(181, 'Cua Đồng', '70000', 30, 26, 'Cua đồng phân bố rộng ở vùng nước ngọt, từ đồng bằng, trung du, miền núi. Là động vật sống ở tầng đáy, ưa nước sạch, đào hang thích nghi với bùn sét, bùn cát. Chúng sinh sản quanh năm nếu môi trường thuận lợi, tập trung vào mùa xuân, mùa hè, mùa thu. Độ pH thích hợp từ 5,6 - 8, nhiệt độ từ 10 - 31oC, tốt nhất là 15 - 25oC, lượng oxy hòa tan thấp nhất là 2 mg/l.[2] Cua đồng sống trong các hang, lỗ tại các bờ ruộng, bờ kênh, rạch, chúng thường bò ra khỏi hang kiếm ăn, xong lại trốn vào hang. Lưng cua đồng có màu vàng sẫm, đều có hai càng, một to và một càng nhỏ hơn,[3] hai gọng cua đồng có màu vàng cháy, toàn thân có màu sắc nâu vàng.[4]\r\n\r\nThịt cua đồng ngọt lạnh, ít độc hay sinh phong, có vị mặn, mùi tanh, tính hàn, hơi độc. Gạch cua có nhiều cholesterol, cua đồng cũng chứa nhiều sodium và purines.', '2019-01-17 22:10:51', '2019-01-17 22:10:51'),
(182, 'Cua Biển', '200000', 30, 26, 'Cua là thực phẩm giàu dinh dưỡng, Theo các nhà khoa học ở Viện Công nghệ sinh học thuộc Viện Khoa học và Công nghệ Việt Nam thì thịt cua có nhiều nguyên tố vi lượng như kẽm, đồng, selen hơn thịt gà.', '2019-01-17 22:12:31', '2019-01-17 22:16:34'),
(183, 'Chả Tôm', '250000', 20, 26, 'Trong số các món ăn độc đáo và khó tìm ở vùng đất Bắc Trung Bộ không thể không kể đến chả tôm, món ăn mà người xứ Thanh đi xa luôn nhắc đến.\r\n\r\nCách làm chả tôm không phức tạp, nhưng đòi hỏi nguyên liệu tươi ngon và bàn tay tỉ mỉ, khéo léo cùng tính kiên trì của người làm. Tôm bột không cần loại to, phải thật tươi, rửa sạch đem hấp hoặc luộc qua để dễ bóc vỏ, bỏ đầu đuôi, chỉ đen ở sống lưng, giã nhỏ. Lưu ý giã nhỏ chứ không xay nhuyễn, để khi thưởng thức vẫn cảm nhận được thịt tôm thơm ngon.\r\n\r\nCần thêm thịt ba chỉ rán vàng rồi băm lẫn với hành khô và bánh phở cắt nhỏ để tạo thành hỗn hợp nhân, nêm gia vị vừa ăn, cho vào chút hạt tiêu tạo vị cay thơm. Để nhân chả có màu vàng đỏ đẹp mắt, khi giã nhân thì cho thêm chút thịt gấc vào, trộn đều.', '2019-01-17 22:15:13', '2019-01-17 22:15:13'),
(184, 'Cua Tách Thịt (300 gr)', '200000', 20, 26, 'THÀNH PHẦN\r\n 100% thịt cua nguyên chất    \r\nCÁCH SỬ DỤNG \r\nThích hợp chế biến các món canh, súp, cháo, gỏi,…    \r\nCÁCH BẢO QUẢN \r\nBảo quản lạnh để giữ sản phẩm tươi ngon lâu hơn', '2019-01-17 22:18:46', '2019-01-17 22:18:46'),
(185, 'Mực Lá (2con/kg)', '200000', 20, 25, 'Mực lá có vây hình bầu dục khỏe mở rộng xung quanh gần như toàn bộ lớp áo. Lớp áo của mực lá có hình trụ, thon dần đến một hình nón cùn ở phía sau. Mực lá thích hợp để làm các món nướng, chiên, sốt,... \r\nMực lá khi còn tươi thường có những đặc điểm như sau: Có màu sắc tươi bóng, bụng màu trắng bóng có nhiều hạt sắc tố màu đen. Phần lưng thường là màu đen và có nhiều các hạt sắc tố. Khi chế biến mực ra ít nước, ăn vị ngọt và giòn khác hẳn với các loại mực đã bị ôi thiu...', '2019-01-17 22:21:01', '2019-01-17 22:21:01'),
(186, 'Mực Ống', '250000', 25, 25, 'Mực ống Phú Quốc là một trong những đặc sản của Phú Quốc, là loại mực ngon nhất, được đánh bắt gần bờ, thời gian di chuyển vào đất liền nhanh nên mực rất tươi. Thịt mực ngọt và thơm và mát, có lợi cho sức khỏe.\r\n\r\nCÁCH SỬ DỤNG \r\nThích hợp chế biến các món chiên, hấp, nướng,…     \r\nCÁCH BẢO QUẢN\r\n Bảo quản lạnh để giữ sản phẩm tươi ngon lâu hơn', '2019-01-17 22:22:30', '2019-01-17 22:22:30'),
(187, 'Mực Trứng Phú Quốc', '300000', 20, 25, 'Mực trứng  được cấp đông ngay khi còn tươi và bảo quản đúng tiêu chuẩn chuyển từ Phú Quốc vào HCM bằng đường hàng không, do vậy chất lượng luôn được đảm bảo. Mực tươi ngon, ăn ngọt thịt', '2019-01-17 22:24:05', '2019-01-17 22:24:05'),
(188, 'Chả Mực', '350000', 30, 25, 'Chả mực Hạ Long được giã và nặn với công nghệ hiện tiên tiến, hiện đại tạo độ giòn, dai và độ ngọt của biển, kết hợp với nhau 1 cách hoàn hảo để tạo lên một món ăn thật hấp dẫn…\r\n Chả mực Hạ Long được làm từ những con mực tươi ngon nhất được đánh bắt 100% trực tiếp từ vùng biển Hạ Long nổi tiếng, cho miếng chả thêm ngon hơn, dai hơn.', '2019-01-17 22:25:09', '2019-01-17 22:25:09'),
(189, 'Hào Sữa', '100000', 30, 27, 'Hào thường sống ở các ghềnh đá ven sông hay cửa biển. Theo y học cổ truyền, thì món hàu sữa có vị ngọt hơi mặn, có tính mát, không độc, có nhiều tác dụng như tráng dương, dưỡng huyết, ăn vào trị được chứng mất ngủ do nóng trong người, hoa mắt chóng mặt.', '2019-01-17 22:49:40', '2019-01-17 22:49:40'),
(190, 'Nghêu', '50000', 50, 27, 'Nghêu hay ngao là tên gọi dùng để chỉ các loài động vật thân mềm hai mảnh vỏ (nhuyễn thể) thuộc họ Veneridae chuyên sống ở vùng nước ven biển có độ mặn cao, nhiều đất cát sỏi, phân bố khá phổ biến ở vùng biển nhiệt đới hoặc cận nhiệt đới. Nghêu có thân hình tròn, màu trắng hoặc vàng nhạt. Đây là loài hải sản có giá trị kinh tế cao, dễ nuôi, không tốn nhiều công chăm sóc. Dù quá trình trưởng thành của nghêu có rất nhiều rủi ro, nhưng với số lượng trứng nhiều, nên loài nghêu hiện đã trở thành vật nuôi khá dễ dàng, ít tốn kém', '2019-01-17 22:50:31', '2019-01-17 22:50:31'),
(191, 'Sò Huyết', '100000', 30, 27, 'Sò huyết là loại nhuyễn thể hai mảnh, sống ở vùng trung triều ven biển và các đầm phá... ở độ sâu 1-2 mét so với mặt nước. Sò huyết phân bố ở vùng Ấn Độ-Thái Bình Dương từ đông châu Phi đến Úc, Nhật Bản. Tại Việt Nam, người dân quen gọi là sò trứng hay sò tròn. Sò trưởng thành dài 5–6 cm và rộng 4–5 cm.', '2019-01-17 22:51:09', '2019-01-17 22:51:09'),
(192, 'Sò Dẹo', '120000', 20, 27, 'Ở nước ta, loài hải sản này phân bố ở khu vực biển miền Trung và miền Nam với số lượng không nhiều. Bên cạnh đó, nó cũng không phải là một loại hải sản nổi tiếng, nên không được nhiều người biết đến. Tuy nhiên, trong khoảng hai năm trở lại đây, sò quéo đang dần trở thành một trong những món ăn được ưa thích nhờ phần thịt giòn ngọt, thơm ngon.', '2019-01-17 22:52:33', '2019-01-17 22:52:33'),
(193, 'Chôm Chôm', '30000', 50, 17, 'Chôm chôm được trồng tự nhiên, không sử dụng hóa chất, thuốc trừ sâu, An toàn cho mọi người.  Giống chôm chôm vỏ mỏng, cơm dày, ngọt mang đến hương vị tuyệt vời. Tự nhiên thưởng thức không lo về chất lượng', '2019-01-17 23:17:09', '2019-01-17 23:17:09'),
(194, 'Dưa Hấu Đỏ', '10000', 50, 17, 'Dưa hấu (tên khoa học: Citrullus lanatus) là một loài thực vật trong họ Bầu bí (Cucurbitaceae), một loại trái cây có vỏ cứng, chứa nhiều nước, có nguồn gốc từ miền nam châu Phi và là loại quả phổ biến nhất trong họ Bầu bí. Dưa hấu có tính hàn có thể dùng làm thức ăn giải nhiệt trong những ngày hè nóng nực.\r\nDưa hấu rất đa dạng về hình dạng và màu sắc. có màu xanh nhạt và có những đường kẻ từ trên xuống dưới Hình dạng được xem xét với mặt phẳng cắt ngang từ cuống trái đến đuôi trái dưa. Có các dạng chính sau: dạng thuôn dài, dạng trái oval, dạng trái tròn. Hạt dưa cũng rất đa dạng về kích cỡ (lớn, trung bình, nhỏ). Màu hạt có màu đen. \r\nDưa hấu không thể thiếu trên bàn thờ tổ tiên ông bà trong những ngày Tết. Là vật liệu cho các tài nhân khắc hình họa lên vỏ của dưa hấu.', '2019-01-18 00:08:51', '2019-01-18 00:08:51'),
(195, 'Nho Ninh Thuận', '70000', 50, 17, 'Nho Ninh Thuận nổi tiếng với vị ngọt thanh khiết và giá cả hợp với xu hướng người tiêu dùng. Nho Ninh Thuận được nhiều người ưa chuộng như vậy là nhờ có các tính chất, chất lượng đặc thù, khác biệt so với các loại nho khác.\r\nĐặc trưng của nho Ninh thuận là vỏ dày, vị rôn rốt (hơi chua) và có hạt. (Nếu ăn nho không có hạt, vỏ bóng, mọng, ngọt “sắt” có thể đó là nho Trung Quốc).\r\nNho Ninh Thuận có rất nhiều loại khách nhau, trong đó có hai giống nho ăn tươi chính là nho đỏ và nho xanh.\r\nNho đỏ Ninh thuận có dạng hình cầu, vỏ quả bóng, rất mỏng, quả chín có màu đỏ tươi đến đỏ đậm, có vị ngọt hài hoà với vị chua nhẹ. Trọng lượng quả từ 4,57 - 5,92g/quả, dài từ 18,23 - 21,21mm, rộng từ 17,27 - 19,44mm, trọng lượng chùm từ 166,84 - 254,13g/chùm.', '2019-01-18 00:10:39', '2019-01-18 00:10:39'),
(196, 'Bưởi Da Xanh (Loại 1)', '90000', 40, 17, 'Bưởi da xanh là một giống bưởi có nguồn gốc đầu tiên ở xã Thanh Tân, huyện Mỏ Cày Bắc, tỉnh Bến Tre. Trái bưởi da xanh có dạng hình cầu, nặng trung bình từ 1,2 – 2,5 kg/trái; vỏ có màu xanh đến xanh hơi vàng khi chín, dễ lột và khá mỏng (14–18 mm); tép bưởi màu hồng đỏ, bó chặt và dễ tách khỏi vách múi; vị ngọt không chua (độ brix: 9,5–12%); mùi thơm; không hạt đến khá nhiều hạt (có thể có đến 30 hạt/trái); tỷ lệ thịt/trái >55%.[1] Tính đến năm 2009, Bến Tre có diện tích trồng bưởi da xanh là 3.284 ha, với năng suất 9-14 tấn/ha', '2019-01-18 00:12:55', '2019-01-18 00:12:55'),
(197, 'Bơ Hass', '90000', 30, 17, 'Bơ Hass có nguồn gốc từ sự lai tạo giữa những giống bơ khác nhau nhằm tạo ra một cây giống mới có khả năng chịu đựng khí hậu khắc nghiệt tốt và cho năng suất cao ổn định. Rudolph Hass là người đã tốn khá nhiều thời gian trong việc lại tạo nhiều giống bơ khác nhau để cho ra đời một giống bơ mới độc đáo với nhiều ưu điểm, hiện tại không ai biết giống mẹ của bơ Hass là gì. Năm 1935 Hass được cấp bằng sáng chế ra giống bơ vượt trội này và được cả thế giới công nhận là giống bơ ngon nổi tiếng đạt tiêu chuẩn chất lượng quốc tế cho đến nay chiếm 80% tổng sản lượng bơ trên toàn thế giới một con số không hề nhỏ.', '2019-01-18 01:33:03', '2019-01-18 01:33:03'),
(198, 'Cam Cao Phong', '50000', 70, 17, 'Trong các loại cam thì Cam Cao Phong khác hẳn so với các loại cam khác, quả cam tròn, có màu vàng nhạt khi chín, mọng nước không vàng bóng như Cam Trung Quốc những tép cam có màu vàng nhạt nhẹ không không phải màu vàng đậm.\r\nHiện nay Cam Cao Phong được trồng chủ yếu tại thị trấn Cao Phong, xã Bắc Phong, Đông Phong của tỉnh Hòa Bình và đã được cấp chứng nhận địa lý, nên quy trình trồng và chăm sóc cam đều tuân thủ theo quy trình kĩ thuật về vệ sinh an toàn thực phẩm. Đặc biệt vào những năm trước Cam Cao Phong đã được đón chủ tịch nước Trương Tấn Sang đi thăm các vườn cam đang thu hoạch tại Cao Phong. Cam Cao Phong luôn chăm sóc theo đúng quy trình nên khách hàng luôn tin dùng và lựa chọn và nâng cao thương hiệu Cam Cao Phong lên một tầm cao mới.', '2019-01-18 01:37:06', '2019-01-18 01:37:06'),
(199, 'Măng Cụt', '60000', 61, 17, 'Măng cụt là một loại trái cây phổ biến ở Đông Nam Á nói chung và ở Việt Nam nói riêng. Ngoài hương vị thơm ngon, ngọt, loại quả này có nhiều dưỡng chất, vitamin tốt cho sức khỏe.', '2019-01-18 01:39:14', '2019-01-18 01:39:14'),
(200, 'Sầu Riêng Musangking', '500000', 20, 17, 'Được mệnh danh là đệ nhất sầu riêng cả về giá lẫn chất lượng, sầu riêng Musang King có vị thơm ngon ngậy dẻo, hạt vừa bé vừa lép, múi sầu đầy đặn, săn chắc\r\nSầu riêng được hái khi trái chín hẳn và tự rụng xuống thay vì được cắt thẳng từ cây. Đây cũng là một trong những lý do Musang King có độ ngậy và thơm tan chảy.', '2019-01-18 01:43:52', '2019-01-18 01:44:34'),
(201, 'Hồng Sấy Dẻo', '300000', 30, 19, 'Hồng dẻo Đà Lạt nguyên trái mùa 2018 đã trở lại rồi, món quà đặc biệt mà những người sấy hồng ở xứ lạnh này muốn mang đến cho du khách mọi nơi.\r\n\r\nĐóng gói: 500gr. Hút chân không\r\nHạn sử dụng: 12 tháng kể từ ngày đóng gói\r\nBảo quản: nhiệt độ thường, thời tiết càng mát mẻ thì màu sắc của Hồng dẻo Đà Lạt càng giữ được lâu hơn – nhất là thời tiết tại Đà Lạt, thời tiết càng nóng thì Hồng dẻo Đà Lạt ngả màu đen do quá trình sấy dẻo không dùng bất kỳ chất bảo quản nào!\r\nTúi 500gr trung bình được tầm 15-18 trái Hồng dẻo bên trong.\r\nSố GCN CSĐĐKATTP: CBR28/2018/NNPTNT-LĐ\r\nSố XNCB: 2269/2017/YTLĐ-XNCB\\\r\nLưu ý: nếu trên bề mặt trái hồng có lớp “phấn trắng” thì đừng lo lắng nhé, vì lớp “phấn trắng” này là một loại men vi sinh, sẽ tự động sản sinh sau một thời gian. Nhờ mặt ngoài của hồng có đường glucose và fructose nên các men này phát triển nhanh để bao bọc quả hồng, vừa giúp bảo vệ hồng khỏi bị mốc, đồng thời còn giúp cho hồng thêm hương vị vì nó phân giải chất tanin còn sót lại làm cho hồng hết chát.', '2019-01-18 02:01:42', '2019-01-18 02:01:42'),
(202, 'Nho Khô', '200000', 30, 19, 'Có quá nhiều lợi ích cho sức khỏe từ nho khô mà chúng ta ít khi được biết đến, các chương trình nghiên cứu khoa học ở Mỹ và châu âu đã cho thấy một số chất trong nho khô có ảnh hưởng tích cực đến nhiều hệ thống trong cơ thể con người chúng ta, với rất nhiều công dụng hữu ích đến sức khỏe thì ngày nay nho khô đang dần trở thành nguồn thực phẩm, dược phẩm không thể thiếu của mọi nhà, đặc biệt là vào các dịp lễ tết với vị ngọt ngọt chua chua dẻo giòn thơm dễ sử dụng phù hợp với tất cả mọi người, thì nho khô luôn là lựa chọn hàng đầu trong thực đơn các món ăn nhẹ khai vị hoặc sau bữa ăn', '2019-01-18 02:02:49', '2019-01-18 02:02:49'),
(203, 'Vải Thiều Khô', '120000', 20, 19, 'Sau sấy, vải thiều sẽ không còn giữ được màu tươi sáng ở vỏ và trắng đục trong cùi nữa, mà chuyển sang có màu nâu đất ngoài vỏ, bên trong màu bánh mật.\r\nVải thiều sấy khô mang một hương vị thơm ngon mới, màu sắc mới so với vải thiều tươi. Nhưng giá trị dinh dưỡng của vải thiều sấy khô chỉ thay đổi chút ít chứ không bị mất đi hoàn toàn, hay “không còn chất gì” như nhiều người vẫn nghĩ.\r\n\r\nTrong vải thiều sấy khô, nước từ 80% sẽ chỉ còn đọng lại 3-5%. Cũng có thể thấp hơn nếu người sấy chủ ý muốn cho cùi vải thật dai, đậm ngọt. Điều này lý giải cho thắc mắc: vì sao vải sấy luôn ngọt hơn vải tươi là vậy.\r\n\r\nVitamin C dường như không bị giảm vì nhiệt sấy vải không cao, nên không bị bay hơi. Khoáng chất như đồng, photpho, kali ổn định như trạng thái tự nhiên. Chất xơ cũng vậy.', '2019-01-18 02:07:08', '2019-01-18 02:07:08'),
(204, 'Mít Sấy Giòn', '150000', 20, 19, 'Mít tươi là món ăn khoái khẩu của rất nhiều người Việt. Tùy từng vùng miền để cho ra những trái mít thơm ngon, mang hương vị đặc trưng riêng. Mùi thơm trên từng múi mít chính là “đặc sản” chỉ có ở loại trái cây này.\r\n\r\nNếu như những trái mít tươi mang mùi thơm đặc trưng thì sản phẩm Mít Sấy được chế biến từ Đà Lạt cũng không kém phần hấp dẫn. Mít Sấy là sản phẩm cao cấp trong các sản phẩm từ Rau củ sấy Đà Lạt', '2019-01-18 02:08:59', '2019-01-18 02:08:59'),
(205, 'Chà Là', '300000', 10, 19, 'Chà là có độ ngọt cao nhất trong các loại hoa quả khô khác. Do đó chà là khô là món ăn nên dùng của phụ nữ mang thai và càng nên dùng lúc chuẩn bị sinh bé. \r\nNguồn gốc và xuất xứ Chà là khô Mỹ Natural Delights Chà là khô Delights là nhãn hiệu chà là khô lớn nhất và nổi tiếng nhất của Mỹ. \r\nGiá trị dinh dưỡng của quả chà là Chà là là một trong những loại quả đặc biệt, chúng khác nhau hoàn toàn khi tươi và khi được phơi khô. Quả khô chứa nhiều dinh dưỡng và ngon hơn rất nhiều, nên chúng ta thường thấy nhiều hơn loại tươi. Nhưng đắt giá nhất, được săn lùng nhiều nhất, phải kể đến quả khô NGUYÊN CÀNH..\r\n\r\n Quả chà là nguyên cành được phơi khô nhưng vẫn giữ độ tươi và ẩm, hương vị ngọt thanh thơm ngon vô cùng. Có thể măm măm ngay hoặc ăn chà là kèm bánh mì, làm salad trộn, làm bánh, kết hợp với các loại thịt xông khói hoặc phô mai Pháp.', '2019-01-18 02:13:37', '2019-01-18 02:13:37'),
(206, 'Mơ Sấy', '200000', 10, 19, 'Mơ sấy khô mang nhãn hiệu nổi tiếng Kirkland, được nhập khẩu trực tiếp từ Mỹ, là sản phẩm cao cấp trên thi trường hiện nay.Tuy giá cả có đắt hơn sản phẩm mơ sấy khô sản xuất trong nước nhưng chất lượng của nó thì cao hơn hẳn.\r\nLoại mơ được đem đi sấy là những quả to tròn, căng mọng, không dập nát, thối hỏng, màu vàng chín mọng và có mùi thơm hấp dẫn tự nhiên. Mơ được đem rửa sạch, bỏ hạt rồi sấy khô bằng các máy móc hiện đại, không hề sử dụng chất bảo quản hay tẩm ướp thêm gia vị, hương liệu để làm tăng chất lượng sản phẩm.', '2019-01-18 02:14:44', '2019-01-18 02:14:44'),
(207, 'Xoài Sấy', '150000', 20, 19, 'Bạn có biết: xoài có hàm lượng vitamin C cực cao tương đương với 35 quả táo, 18 quả chuối, 9 quả chanh và 3 quả cam. Nếu không phải lúc nào cũng thuận tiện chuẩn bị xoài tươi cho món tráng miệng thì món xoài sấy dẻo Yumplus sẽ là lựa chọn thay thế vô cùng lý tưởng.\r\n\r\nĐược sấy lạnh trên dây chuyền hiện đại khép kín, xoài sấy dẻo Yumplus là sản phẩm cô đặc của trái cây tươi, vẫn giữ được hương vị thơm ngon, màu sắc không khô cứng.Không chỉ đảm bảo đạt chuẩn an toàn vệ sinh thực phẩm, mà còn đảm bảo giữ được độ ẩm tự nhiên miếng xoài.\r\n\r\nXoài sấy dẻo công nghệ cao giữ được dinh dưỡng của xoài tươi, đóng gói tiện lợi mang theo mọi lúc mọi nơi. Sản phẩm phù hợp cho mẹ bầu, trẻ em, hay người lớn. Một vài miếng xoài sấy dẻo sẽ rất tiện lợi cho bữa ăn vặt công sở, hoặc sẽ là món tráng miệng đãi khách lạ miệng mà thanh tao.', '2019-01-18 02:15:31', '2019-01-18 02:15:31'),
(208, 'Cam Đỏ Cara', '150000', 10, 18, 'Cam phát triển ở những khu vực khí hậu nhiệt đới, và cận nhiệt đới ấm nóng. Các chủng loại phổ biến của cam ngọt bao gồm cam Valencia, Navel và Jaffa và cam đỏ Cara. Hiện nay, cam Cara được trồng rộng rãi ở Úc, Mỹ, Brazil, Bắc Phi, Địa Trung Hải.\r\nNhiệt độ lý tưởng để trồng cam là 13oC đến 18oC vào mùa đông, và lên đến 35oC vào mùa hè.\r\nCam đỏ Cara Úc loại quả to, ngoài vỏ màu vàng đậm, ruột có màu đỏ, vị ngọt, mọng nước, không hạt và dễ bóc vỏ. Một quả cam trung bình 180g có 200kJ.', '2019-01-18 02:16:46', '2019-01-18 02:16:46'),
(209, 'Kiwi Xanh', '150000', 20, 18, 'Kiwi xanh tại Organic được nhập từ các nguồn tin cậy, đảm bảo chất lượng như New Zealand, Italy, Nhật Bản, Pháp, Úc, Hy Lạp và Hoa Kỳ. Kiwi xanh có vỏ màu nâu hình bầu dục, hạt nhỏ màu đen, thịt xanh, khi chín rất thơm và có vị ngọt.     \r\nCÔNGDỤNG \r\nTrái kiwi có nhiều hợp chất polyphenol, chất dinh dưỡng thực vật (phytonutrients), axít folic, vitamin C,E, nhiều khoáng tố như Ca, Cr, Cu, Fe, Mg, K, Zn,… Một quả kiwi hàng ngày có thể giúp sản sinh những vi chất bảo vệ cơ thể chống lại việc phá huỷ ADN và ngăn chặn các bệnh ung thư phổi, miệng, cổ họng, dạ dày, đại tràng và thực quản.', '2019-01-18 02:18:05', '2019-01-18 02:18:05'),
(210, 'Kiwi Vàng (500gr)', '100000', 20, 18, 'Tổ tiên của trái kiwi vàng Chile được phát hiện đầu tiên tại thung lũng sông Dương Tử ở Trung Quốc vào thời kỳ cổ đại. Vào năm 1966 loại trái cây lần đầu tiên được du nhập vào New Zealand từ Mỹ. Ngày nay kiwi được trồng nhiều tại các nước New Zealand, Italy, Chile, Pháp, Úc, Nhật Bản, Hy Lạp và Hoa Kỳ. Trong đó Chile là quốc gia xuất khẩu kiwi lớn thứ 3 trên toàn thế giới, sau New Zealand và Italy.  Quy trình từ trồng, chăm sóc đến thu hoạch và vận chuyển kiwi được chính phủ Chile kiểm soát rất chặt chẽ để đảm bảo trái kiwi sau khi thu hái luôn đồng đều và đủ tiêu chuẩn Hiện nay, Chile là quốc gia có hơn 11.000 hecta diện tích trồng kiwi. Mùa vụ thu hoạch kiwi vàng Chile bắt đầu từ tháng 2 và kết thúc vào tháng 11 hàng năm. Kiwi được phân thành hai loại chính: kiwi vàng và kiwi xanh. Kiwi xanh là kiwi thuần chủng, kiwi vàng là kiwi lai tạo. Cả hai loại kiwi đều có trái hình trụ hoặc hình trứng (dài khoảng 8cm). Kiwi vàng Chile có đài ở đầu trái và trái thuôn dài, vỏ màu nâu đỏ và ít lông. Phần thịt vàng ươm với nhiều hạt nhỏ xung quanh trục dọc của quả, vị ngọt đậm và có mùi thơm đặc trưng rất hấp dẫn.\r\n\r\nLink nguồn : https://organicfood.vn/kiwi-vang-500gram.html', '2019-01-18 02:19:09', '2019-01-18 02:19:09'),
(211, 'Cherry Newzeland (200gr)', '100000', 30, 18, 'Cherry New Zealand vỏ màu đỏ sẫm, quả căng mọng, chắc, bóng, vị ngọt. Những quả Cherry New Zealand căng bóng luôn là mặt hàng được khách hàng Việt Nam đặc biệt ưa chuộng, một đặc sản đắt tiền và thường dùng để làm quà', '2019-01-18 02:21:01', '2019-01-18 02:21:01'),
(212, 'Việt Quất (200gr)', '120000', 20, 18, 'Quả việt quất nhập khẩu Cam kết là hàng nhập khẩu chính ngạch đầy đủ CI, CO, CQ với hóa đơn hải quan đầy đủ. Việt quất của chúng tôi xuất xứ chủ yếu ở Newzealand, Mỹ, Úc...những nước nổi tiếng từ lâu về mặt hàng này. \r\nQuả việt quất là quả gì? \r\nViệt quất ( tên khoa học Vaccinium myrtillus ) là thuộc họ Thạch nam,dạng thân bụi.Nó thường mọc ở những vùng đất chua, đất bạc màu tại những nơi có khí hậu ôn đới hay cận cực.Việt quất có hình dạng khá giống với quả sim của Việt Nam,quả có màu đậm,gần như đen với một chút ánh tía,thịt quả có màu đỏ hoặc ngả tím.Trái Việt quất có vị ngọt thanh,mới ăn có thể thấy hơi chát,sau quen rồi lại thấy hấp dẫn vô cùng.', '2019-01-18 02:22:23', '2019-01-18 02:22:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-01-13 20:43:29', '2019-01-13 20:43:29'),
(2, 'user', '2019-01-13 20:43:29', '2019-01-13 20:43:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(2, 'Approved', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(3, 'Completed', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(4, 'Cancelled', '2019-01-13 20:43:49', '2019-01-13 20:43:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_payments`
--

CREATE TABLE `type_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_payments`
--

INSERT INTO `type_payments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'COD', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(2, 'Cổng thanh toán điện tử', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(3, 'Ví điện tử', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(4, 'Chuyển khoản ngân hàng', '2019-01-13 20:43:49', '2019-01-13 20:43:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `first_name`, `avatar`, `gender`, `dob`, `phone`, `email`, `address`, `status`, `confirmation_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Promickey', '$2y$10$mi/nhGsyTCQRk75wRoe9LOdLi1GkD4akmxtTrTYt//646yaSyqcH.', 1, 'Admin', 'admin/avatar1.jpg', 'male', '1993-6-2', '0909090909', 'promickey@gmail.com', '123 Nguyễn Trãi', 1, NULL, 'Tt7RSmA8W8e2tukUFU97NCEiSh0F1XVgp45JLtSZTFxtli13PRUj5FQPDEag', '2019-01-13 20:43:29', '2019-01-13 20:43:29'),
(2, 'Thanhluan', '$2y$10$gheMLbPGOftpCKhTyQCZdONE5xJQOkJfkIsuLv9sO9xggVvVxnRtS', 1, 'Thanh Luan', 'admin/unnamed.jpg', 'male', '1997-6-2', '0909090909', 'tranthanhluan0401@gmail.com', '123 Tôn Đức Thắng', 1, NULL, NULL, '2019-01-13 20:43:29', '2019-01-13 20:43:29'),
(3, 'mrodriguez', '$2y$10$qs4UcqgwARbAMKZfu7FKMu3tAgEaMrIQwQSzQaP2ecbAPHTDVKoce', 2, 'Deja', 'images/avatars/0f492798727b8f364c36e97c4d744577.jpg', 'female', '1976-11-22', '723.969.4211 x23588', 'rempel.hallie@example.net', '5224 Strosin Gateway\nLake Tiarashire, IA 36617', 1, NULL, 'ewyrrpun0N', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(4, 'ebecker', '$2y$10$pNtxXiJDC6oiVdQQEMTLyOfP7NfpHyYmpTPcmINmQbX/KYfoZ6/vq', 2, 'Keith', 'images/avatars/5ea7ffe05614ac575a2be998773c0320.jpg', 'male', '1975-01-14', '+17928878805', 'gspinka@example.net', '28973 Beer Vista Apt. 986\nHoegerland, TX 02506-9153', 1, NULL, 'AdN0IH4x5F', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(5, 'gottlieb.manuel', '$2y$10$053tzE0Z1w3AzekYYE7W8u/U2GtIZOVd0Cj1..XKtd/Z6ZQL.R9Zi', 2, 'Presley', 'images/avatars/0e8b02f8c110d1cfd084026399ee6834.jpg', 'male', '1977-05-26', '(740) 267-9293', 'prince.schulist@example.net', '489 Homenick Viaduct\nEast Ruby, MI 54009', 1, NULL, 'VHxe3PvezC', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(6, 'ndenesik', '$2y$10$r.aJ.2YI9c1.DqqEhIaDSesbbVpZdq.Z3PiIEcEt4j9lKVHyHcOrC', 2, 'Etha', 'images/avatars/4d10b1fa817a603a6dbfceeacceafee9.jpg', 'female', '1971-02-03', '(251) 669-2930', 'hamill.clementina@example.net', '3126 Corkery Haven\nSouth Chanellechester, OH 47839-4214', 1, NULL, 'WiBH4b7gNB', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(7, 'erika10', '$2y$10$8CHevSqdiZJGqBtx.x46xuFzMNfMJ7604EeF6PVQBHD94Wq2RtPAK', 2, 'Maritza', 'images/avatars/be82f59ce387ed107bcda3da49054be7.jpg', 'female', '1970-02-27', '385-834-1667 x7790', 'kozey.leora@example.com', '7642 Veum Corner\nNorth Abigaleville, WY 35162', 1, NULL, 'tvOu0mF9Fb', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(8, 'dare.gwen', '$2y$10$uHmRJeLOp16HLxk8MV9WAexbDuH117Pz3ywCTkBvKc0MqWQJ9YOOa', 2, 'Juston', 'images/avatars/de5566b5f9f5a73121a28c4c0865c006.jpg', 'male', '1970-10-29', '+1.932.383.9018', 'mraz.darby@example.net', '416 Gerhold Stravenue\nSouth Alberta, MN 90541', 1, NULL, 'HxMTeveoB2', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(9, 'lucas.mann', '$2y$10$zoMpdaimTgtF/6j5LrCI/ehYb19E8vAanyEMWeN7lxdPHb0zG5qdG', 2, 'Adelbert', 'images/avatars/edd0b4c8dd64d6ccb8cf78de15b5ade8.jpg', 'male', '1971-07-02', '540.376.1670 x3709', 'crona.karolann@example.org', '61668 Shaun Walks Apt. 568\nSimonisside, AL 04574', 1, NULL, 'uFGwWqQGcw', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(10, 'ugerhold', '$2y$10$MNTJJ2MWxLzJsDlUZ2N0uexF8jxPmQGYdNM90p2.xyXjW8VVlXIuK', 2, 'Triston', 'images/avatars/cd409f15a45c3cceadda3dd7518b6705.jpg', 'male', '1976-09-03', '872-318-4004 x746', 'qgoyette@example.org', '887 Olga Knoll Apt. 053\nWeissnatshire, MS 79764', 1, NULL, '8UvN3C5Jyb', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(11, 'brett.kuhic', '$2y$10$3XwysDsiBCJh8pcK3Ra8j.1OD8/TX8X9xYi0gjXVXwVIA8lbSGcie', 2, 'Juwan', 'images/avatars/69c80e509fb8b7cb4e8fa093c9a56798.jpg', 'male', '1971-04-29', '1-349-851-4365', 'kuvalis.coty@example.net', '99844 Hansen Underpass Suite 269\nNorth Electa, GA 58866', 1, NULL, 'yfrkd32SBl', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(12, 'chloe.cole', '$2y$10$dIuyGs/wWinJBVh44VLODeIoT6xBGghgNgaXC2iqm63f/EDCfjWZO', 2, 'Trace', 'images/avatars/9c237213c9aa73ed2bc4a5dc4fd15316.jpg', 'male', '1972-06-30', '613-960-0242 x616', 'alysson00@example.com', '9956 Wisozk Park Suite 663\nEast Emersonfort, AK 39874-1467', 1, NULL, 'OclLIcSIIe', '2019-01-13 20:43:49', '2019-01-13 20:43:49'),
(13, 'sphinx', '$2y$10$yGy3Mqj5gavxZIwYwgC4ROo0qkgTeNOeQjYRT0jyNIwzx/kUth7I2', 2, 'Thinh', 'images/avatars/1547650497d0b2c3076cd09b65d9714d7288a03482.png', 'male', '2019-01-01', NULL, 'thinhleduc1692@gmail.com', NULL, 1, NULL, 'OZlptaHLoJIiaxjAyG00p4HulJBM9vbCyVP12hmSF4wquDkvJC7FkMmdd2UY', '2019-01-14 00:11:31', '2019-01-17 06:59:09'),
(15, 'thunguyet', '$2y$10$OfolVa8ZWVkfI4F5WxqcHO/Zb1WBdnXpaeSXisaNI8LNeKJNhU6fq', 2, 'Thu Nguyet', 'images/avatars/1547804966KIWI VÀNG.jpg', 'female', '2006-01-01', '09834023', 'tranthunguyet70755@gmail.com', NULL, 1, NULL, '9GLyS71ZvC84eC0rTCGoabgm8XNtJcJaiVMp5EF5jyaN51CoIajzJdUIS8vL', '2019-01-17 07:05:15', '2019-01-18 02:49:26'),
(16, NULL, '$2y$10$/BOY0S0uc6dJLthhqt9fxO0QAuFIIeEmcwU2skx5yJ540JXoK3Cn.', 2, 'Phuong', NULL, NULL, NULL, NULL, 'maihanhphuong68483@gmail.com', NULL, 1, NULL, 'pbtKH2rsKbLDpxfCqxBPEWbb7ihZLxbGaY1u6Qitr1CYxtKhT66Rz959oo1p', '2019-01-17 07:08:43', '2019-01-17 07:13:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_payments`
--
ALTER TABLE `type_payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_payments`
--
ALTER TABLE `type_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
