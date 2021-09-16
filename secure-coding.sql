-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 16, 2021 lúc 04:25 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `secure-coding`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_30_075551_create_phong_bans_table', 1),
(4, '2018_08_30_084129_create_nhan_sus_table', 1),
(5, '2018_08_30_162233_create_ho_sos_table', 1),
(6, '2018_09_05_142047_create_hop_dongs_table', 1),
(7, '2018_09_19_093224_laratrust_setup_tables', 1),
(8, '2018_09_21_093644_create_quyet_dinhs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'read-dashboard', 'Read Dashboard', 'Read Dashboard', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(2, 'create-users', 'Create Users', 'Create Users', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(3, 'read-users', 'Read Users', 'Read Users', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(4, 'update-users', 'Update Users', 'Update Users', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(5, 'delete-users', 'Delete Users', 'Delete Users', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(6, 'create-acl', 'Create Acl', 'Create Acl', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(7, 'read-acl', 'Read Acl', 'Read Acl', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(8, 'update-acl', 'Update Acl', 'Update Acl', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(9, 'delete-acl', 'Delete Acl', 'Delete Acl', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(10, 'read-profile', 'Read Profile', 'Read Profile', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(11, 'update-profile', 'Update Profile', 'Update Profile', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(12, 'create-nhan-su', 'Create Nhan-su', 'Create Nhan-su', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(13, 'read-nhan-su', 'Read Nhan-su', 'Read Nhan-su', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(14, 'update-nhan-su', 'Update Nhan-su', 'Update Nhan-su', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(15, 'delete-nhan-su', 'Delete Nhan-su', 'Delete Nhan-su', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(16, 'create-hop-dong', 'Create Hop-dong', 'Create Hop-dong', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(17, 'read-hop-dong', 'Read Hop-dong', 'Read Hop-dong', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(18, 'update-hop-dong', 'Update Hop-dong', 'Update Hop-dong', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(19, 'delete-hop-dong', 'Delete Hop-dong', 'Delete Hop-dong', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(20, 'create-quyet-dinh', 'Create Quyet-dinh', 'Create Quyet-dinh', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(21, 'read-quyet-dinh', 'Read Quyet-dinh', 'Read Quyet-dinh', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(22, 'update-quyet-dinh', 'Update Quyet-dinh', 'Update Quyet-dinh', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(23, 'delete-quyet-dinh', 'Delete Quyet-dinh', 'Delete Quyet-dinh', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(24, 'update-company', 'Update Company', 'Update Company', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(25, 'update-file-manager', 'Update File-manager', 'Update File-manager', '2021-09-04 20:09:56', '2021-09-04 20:09:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(2, 'administrator', 'Administrator', 'Administrator', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(3, 'user', 'User', 'User', '2021-09-04 20:09:56', '2021-09-04 20:09:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(3, 3, 'App\\User'),
(1, 4, 'App\\User'),
(1, 5, 'App\\User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default-avatar.jpg',
  `ngay_sinh` date NOT NULL,
  `que_quan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luong` float NOT NULL,
  `phone_number` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `ngay_sinh`, `que_quan`, `luong`, `phone_number`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Superadministrator', 'superadministrator@app.com', '$2y$10$JC.XADWZ9xomBYOF71Qem.4Rcude8fdwhOifE8PoILgpy4JCjhXZK', 'default-avatar.jpg', '2021-09-07', 'Hòa Bình ', 1000000, '0215486592', 1, 'V4hr8Hb2opdIZs12Huo8l0N2sQZVcBkixHKfBIzhdvOqoATi9MoWnDxbQqHc', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(2, 'Administrator', 'administrator@app.com', '$2y$10$CFHoWvSXuVs2Ah.8Zui9MuZ9S8jHuZmmY2HVG5N2EQeIwy2j7Pw3O', 'default-avatar.jpg', '0000-00-00', 'Hà Nội ', 1500000, '0214568953', 1, 'Vv2XNQTQJ4twWoHG9qWkf1hwdHNm0hP87NyePnjKgWClHKRUggAiHS6D4mfw', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(3, 'User', 'user@app.com', '$2y$10$IO3Nv0QQLttsCYX7b0JPH.NuTwod.26N2Q0n7o/926ISQ0AoRnufK', 'default-avatar.jpg', '0000-00-00', 'Sài Gòn ', 7000000, '0214578953', 1, '7ig77ShR4KzpXgIrhXtWUWLSxAC2b6CdTFHMgFYOsO5oOXMm2FbmpTOfgwCo', '2021-09-04 20:09:56', '2021-09-04 20:09:56'),
(4, 'Bùi Thị Dung', 'shishi030299@gmail.com', '$2y$10$oVcYQgyLhgnvxI6jmrVZB.OSX9V18XBwADKVpZtWC4rmUNA0GgjxC', '1630848995_user4_avatar.jpg', '2021-09-01', 'Paris', 1000, '05815497565', 1, 'r2uwYJbpRFGqOuy6oxeds6sHfKHYMhROVhaYVpRQF6wlVTD0eDb1fTFp1QR9', '2021-09-06 00:32:55', '2021-09-06 00:36:35'),
(5, 'Sách', 'shishirley1812@gmail.com', '$2y$10$wsXrYv52fXMH4/LIGhFQ0.AY/QQaCdxdhxQn/waCfYk9wUksE5dgC', 'default-avatar.jpg', '2021-09-17', 'Paris', 1000, '05815497565', 1, NULL, '2021-09-16 13:19:44', '2021-09-16 13:19:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
