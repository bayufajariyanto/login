-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2020 at 02:00 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(4, 'Bayu Fajariyanto', 'bayuf08@gmail.com', 'default1.png', '$2y$10$PqQB5.NmuefMV0mgJbZL9.22QLJNi0UHSQRub9sa0og63rx9HIRJm', 1, 1, 1568992800),
(5, 'Member', 'member@gmail.com', 'default.png', '$2y$10$G7euIUcoCPX3tlS3xvxEk.zEH3U0pEowWzTbtzn13c76fxed9ZyQi', 2, 1, 1569077685),
(6, 'dslkf', 'slkdhf@sdf.asfd', 'default.png', '$2y$10$Z6YcETNCfkbOHhb/vmVFCeGSOwPZm21b3hV7s8FZsCZmOXPyDalKC', 2, 0, 1570791850),
(7, 'ajkasd', 'ajkhsd@ad.asd', 'default.png', '$2y$10$CH8B1iD1K2sHX0fdVBE7h.VzT0iybOZIP.2jEaqsH0w48IO/0S5D2', 2, 1, 1570792369),
(8, 'jksdf', 'sklfh@sjkdf.asd', 'default.png', '$2y$10$tzSfelQ.3ehvk5Tbn2HRDO0M05SPpqU038yxWMoggMTA9RnLOA5.m', 2, 1, 1570926605),
(9, 'jahsdb', 'akjsd@askdb.asd', 'default.png', '$2y$10$tWpxMUO482k8UQpGydKOoOCLnqyFARLeLCPvx.gErPq4TgCeZ/bI.', 2, 1, 1570926755),
(10, 'nmasd', 'hjasd@askdb.asd', 'default.png', '$2y$10$ruSSiEddq3vMzeJ2Qr1dZeWb4iASFnJy7ndv3GMDaTzbPyVfzUEs6', 2, 1, 1570928143),
(11, 'amnbsd', 'nsbdf@ASD.ASD', 'default.png', '$2y$10$gQ74AY21c.DepjrITYD8..zGEj8N5mRSkng.LBBLu.9hf4kJowUKa', 2, 1, 1570928206),
(12, 'qwerty', 'qwerty@dgfd.com', 'default.png', '$2y$10$mVXe.dBrp18nq83aL7L4XOf6Mu/c3Jc8ULmrka89yURgUJu3Zx7Y.', 2, 1, 1578099249);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dasboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 1, 'Coba', 'coba/coba', 'fab fa-fw fa-youtube', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'sklfh@sjkdf.asd', 'O674cZU1QXii68Dyft/T52OPpzemcKNBUmwq2shZOG4=', 1570926605),
(2, 'kshf@sdjhf.asd', 'NybamNhNJjoMjxTvig2COI51DgFg8zu5WV+S628tuc4=', 1570926633),
(3, 'akjsd@askdb.asd', 'PovcWSCW8F/sRr/4JpCpeIgGIc8HArAFTZgtqNt6SpU=', 1570926755),
(4, 'hjasd@askdb.asd', 'q3JoQHZDvA3Cldn2xTCMN6wMfEbeN17PvxoCopsLtp8=', 1570928143),
(5, 'nsbdf@ASD.ASD', 'gasjA4M0tYJyYdhV9BoLF1Fr7h3KDH+LjydO0e4HCeg=', 1570928206),
(6, 'qwerty@dgfd.com', 'RJi7HROIH3PHK5MD4IBBYRAn61X7ntE2XZS9ny5Oq3w=', 1578099249);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
